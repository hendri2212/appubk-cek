<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct(){
		parent::__construct();
		$this->load->library('pagination');
		$this->load->model('Model'); // Load model ke controller ini
		if($this->session->userdata('status') != "success"){
			redirect(base_url("./login"));
		}else{
			$ada_ujian = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->num_rows();
			if($ada_ujian < 1 ){
				redirect(base_url("./login"));
			}
			$ujian = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->row();
			$cek_record_status=$this->Model->cek_record_status($this->session->userdata('id_siswa'),$ujian->id_pelajaran);
			if($cek_record_status>0){
				redirect(base_url("./login"));
			}	
		}
	}

	public function index() {
		$where = array(
			'id_siswa' => $this->session->userdata('id_siswa'),
		);
		$data["siswa"] = $this->Model->siswa("siswa",$where)->row();
		$data['ujian'] = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->row();
		$where2 = array(
			'id_guru' => $data['ujian']->id_guru,
		);
		$data['guru']  = $this->Model->guru("guru",$where2)->row();
		$su=$this->input->post('cek_token');
		if(isset($su)){
			$id_ujian = $this->input->post('id_ujian');
			$token = $this->input->post('token');
			$where1 = array(
				'id_ujian'=> $id_ujian,
				'token'   => $token,
				);
			$cek = $this->Model->cek_token("ujian",$where1)->num_rows();
			if($cek > 0){
				$data_session = array(
					'token'	=> "success",
				);
        	    $this->session->set_userdata($data_session);
				redirect(base_url("welcome/soal"));
			}else{
        	    // echo "<script>alert('Token yang Anda masukkan SALAH'); </script>"; ?>
        	    <script type="text/javascript">
        	    	// new Vue({
        	    		// el: '#app',
        	    		data1: {
        	    			loginGagal: false
        	    		}
        	    	// })
        	    </script>
			<?php }
		}
		$this->pages('module/home/home', $data);
		
	}
	
	public function soal() {
		if($this->session->userdata('token') != "success"){
			redirect(base_url("welcome/"));
		}
		//pagination
		$config['base_url']    = base_url()."welcome/soal/";
		$config['total_rows']  = $this->db->query("SELECT * FROM soal;")->num_rows();
		$config['per_page']    = 1;
		$config['num_links']   = 5;
		$config['uri_segment'] = 3;

		//styling
		$config['full_tag_open']   = "";
		$config['full_tag_close']  = "";
		$config['last_tag_open']    = "";
		$config['last_tag_close']   = "";
		$config['cur_tag_open']    = "<div style='margin-bottom:30px;padding:2px;color: rgb(0, 0, 0); width:25%;'>";
		$config['cur_tag_close']   = "</div>";
		$config['num_tag_open']    = "<div style='margin-bottom:30px;padding:2px;color: rgb(0, 0, 0); width:25%;'>";
		$config['num_tag_close']   = "</div>";
		$this->pagination->initialize($config);
		$siswa = $this->session->userdata('id_siswa');
		$kelas = $this->Model->kelas('kelas',array('id_kelas' => $this->session->userdata('id_kelas')));
		$ujian = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->row();
		$data['jum_soal']=$this->Model->random($ujian->id_pelajaran)->num_rows();
		$data['kkm']= $this->Model->kkm($ujian->id_pelajaran)->row();
		$cek_record=$this->Model->cek_record($siswa,$ujian->id_pelajaran)->num_rows();
		$cek_essay=$this->Model->cek_essay($ujian->id_pelajaran)->num_rows();
		if($cek_essay>0){
			$data['cek_essay']=1;
		}else{
			$data['cek_essay']=0;
		}
		if($cek_record < 1 ){
			$random= $this->Model->random($ujian->id_pelajaran)->result();
			$array=[];
			foreach($random as $datas){
				array_push($array,$datas->soal_id);
			}
			$arrays= join(',',$array);
			$this->db->query("INSERT INTO record (id_siswa,id_pelajaran,id_soal) VALUES ('$siswa','$ujian->id_pelajaran','$arrays')");
		}
		$data["soal"] = $this->Model->soal($config,$siswa);
		$data["soalSemua"] = $this->Model->soal('select',$siswa);
		$data["soalEssay"] = $this->Model->essay('select',$ujian->id_pelajaran,$ujian->id_ujian,$siswa);
		$data['id_pelajaran']=$ujian->id_pelajaran;
		$data['id_record']=$this->Model->cek_record($siswa,$ujian->id_pelajaran)->row();
		$data['halaman'] = $this->uri->segment('2');
		$data['url']=$this->uri->segment('3');
		$this->pages('module/soal/soal', $data);
	}
	public function essay() {
		if($this->session->userdata('token') != "success"){
			redirect(base_url("welcome/"));
		}
		//pagination
		$config['base_url']    = base_url()."welcome/essay/";
		$config['total_rows']  = $this->db->query("SELECT * FROM essay;")->num_rows();
		$config['per_page']    = 1;
		$config['num_links']   = 5;
		$config['uri_segment'] = 3;

		//styling
		$config['full_tag_open']   = "";
		$config['full_tag_close']  = "";
		$config['last_tag_open']    = "";
		$config['last_tag_close']   = "";
		$config['cur_tag_open']    = "<div style='margin-bottom:30px;padding:2px;color: rgb(0, 0, 0); width:25%;'>";
		$config['cur_tag_close']   = "</div>";
		$config['num_tag_open']    = "<div style='margin-bottom:30px;padding:2px;color: rgb(0, 0, 0); width:25%;'>";
		$config['num_tag_close']   = "</div>";
		$this->pagination->initialize($config);
		$siswa = $this->session->userdata('id_siswa');
		$kelas = $this->Model->kelas('kelas',array('id_kelas' => $this->session->userdata('id_kelas')));
		$ujian = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->row();
		$data['jum_soal']=$this->Model->random($ujian->id_pelajaran)->num_rows();
		$data['kkm']= $this->Model->kkm($ujian->id_pelajaran)->row();
		$cek_record=$this->Model->cek_record($siswa,$ujian->id_pelajaran)->num_rows();
		if($cek_record < 1 ){
			$random= $this->Model->random($ujian->id_pelajaran)->result();
			$array=[];
			foreach($random as $datas){
				array_push($array,$datas->soal_id);
			}
			$arrays= join(',',$array);
			$this->db->query("INSERT INTO record (id_siswa,id_pelajaran,id_soal) VALUES ('$siswa','$ujian->id_pelajaran','$arrays')");
		}
		//list
		$data["soalSemua"] = $this->Model->soal('select',$siswa);
		$data["soalEssay"] = $this->Model->essay('select',$ujian->id_pelajaran,$ujian->id_ujian,$siswa);
		//tutup list
		$data['halaman'] = $this->uri->segment('2');
		$data['url']=$this->uri->segment('3');
		$data["essay"] = $this->Model->essay($config,$ujian->id_pelajaran,$ujian->id_ujian,$siswa);
		$data['id_siswa']=$siswa;
		$data['id_ujian']= $ujian->id_ujian;
		$data['id_pelajaran']=$ujian->id_pelajaran;
		$data['id_record']=$this->Model->cek_record($siswa,$ujian->id_pelajaran)->row();
		$this->pages('module/soal/essay', $data);
	}
	public function login()
	{

		// $this->pages('module/home/home', $data);
		$this->pages('module/login/login');
	}
}
