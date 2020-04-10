<?php defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	function pages($welcome, $data = NULL){
        $data['content'] = $this->load->view($welcome, $data, TRUE);

        $this->load->view('welcome_message', $data);
    }
}