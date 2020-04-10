<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {
	public function index() {
		$this->pages('module/guru/guru');
	}
	public function guru() {
		$this->pages('module/guru/guru');
	}
	public function siswa(){
		$this->pages('module/siswa/siswa');
	}
	public function kelas() {
		$this->pages('module/kelas/kelas');
	}
	public function soal() {  
		$this->pages('module/soal/soal');
	}
	public function perSoal($soal_pelajaran) {
		$data['perSoal']	= $this->Model->perSoal($soal_pelajaran);
		$data['listEssay']	= $this->Model->listEssay($soal_pelajaran);
		$this->pages('module/perSoal/perSoal', $data);
	}

	public function saveEssay($soal_pelajaran) {
		$this->Model->SaveEssay($soal_pelajaran);
	}

	public function EditEssay() {
		# code...
	}

	public function perSoalEdit($soal_id, $soal_pelajaran) {
		$data['perSoalEdit'] = $this->Model->perSoalEdit($soal_id, $soal_pelajaran);
		$this->pages('module/perSoal/perSoalEdit', $data);
	}
	
	public function UpdateperSoalEdit($soal_id, $soal_pelajaran) {
		$this->Model->UpdateperSoalEdit($soal_id, $soal_pelajaran);
	}

	public function tambahSoal($soal_pelajaran){
        $soal_deskripsi=$this->input->post('soal_deskripsi');
        $soal_jwb1=$this->input->post('soal_jwb1');
        $soal_jwb2=$this->input->post('soal_jwb2');
        $soal_jwb3=$this->input->post('soal_jwb3');
        $soal_jwb4=$this->input->post('soal_jwb4');
        $soal_jwb5=$this->input->post('soal_jwb5');
        if($this->input->post('soal_jawaban')=="soal_jwb1"){
            $soal_jawaban=$soal_jwb1;
        }else if($this->input->post('soal_jawaban')=="soal_jwb2"){
            $soal_jawaban=$soal_jwb2;
        }else if($this->input->post('soal_jawaban')=="soal_jwb3"){
            $soal_jawaban=$soal_jwb3;
        }else if($this->input->post('soal_jawaban')=="soal_jwb4"){
            $soal_jawaban=$soal_jwb4;
        }else if($this->input->post('soal_jawaban')=="soal_jwb5"){
            $soal_jawaban=$soal_jwb5;
		}
		$this->Model->tambahSoal($soal_pelajaran,$soal_deskripsi,$soal_jwb1,$soal_jwb2,$soal_jwb3,$soal_jwb4,$soal_jwb5,$soal_jawaban);
		redirect('/welcome/perSoal/'.$soal_pelajaran);
	}

	public function ujian(){
		$data['ujian']= $this->Model->ujian();
		$this->pages('module/ujian/ujian',$data);
	}

	function upload(){
		$config = array(
            'upload_path' 			=> './assets/unggah/',
            'allowed_types' 		=> "jpg|jpeg|png|gif",
            'overwrite' 			=> TRUE,
			'encrypt_name'  		=> TRUE,
			'width'					=> '100px',
			'height'				=> '100px'
        );

        $this->load->library('upload', $config);
		$this->upload->do_upload('image');
        $data = array(
			'width'=>$this->upload->data('image_width'),
			'height'=>$this->upload->data('image_height'),
			'file_name'=>$this->upload->data('file_name')
		);
		$link = base_url().'./assets/unggah/'.$data['file_name'];
        $res = array("data" => array(
			'link' => $link,
			'width' => $data['width'],
			'height' => $data['height'])
        );
		// $link = base_url().'./assets/unggah/'.$data['file_name'];
        // $res = array(
		// 	"data" => array(
		// 		'link' 	=> $link,
		// 		'width' => $data['width'],
		// 		'height'=> $data['height']
		// 	)
		// );
        echo json_encode($res);
	}
	public function nilai(){
		$this->pages('module/nilai/nilai');
	}
}