<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MY_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('Model'); // Load model ke controller ini
	}

	public function index(){
        // $this->load->view('module/login/login');
		$this->pages('module/login/login');
	}
	
	public function login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' => $password,
			);
		$akses = $this->Model->cek_login("siswa",$where)->row();
		$cek = $this->Model->cek_login("siswa",$where)->num_rows();
		if($cek > 0){
			$data_session = array(
				'id_siswa'	=> $akses->id_siswa,
				'id_kelas'	=> $akses->id_kelas,
				'username'	=> $username,
				'nama'	    => $akses->nama,
				'status'	=> "success"
			);
            $this->session->set_userdata($data_session);
			redirect(base_url("welcome/"));
		}else{ 
            echo "<script>alert('Username atau Password yang Anda masukkan SALAH'); window.location.href='".base_url('./')."'</script>";
        }
	}

	public function logout(){
		$this->session->sess_destroy();
	}
	
}