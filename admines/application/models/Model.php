<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {
    public function guru($table){
        if(isset($_POST['submit'])){
            $nama=$_POST['Nama'];
            $NIP=$_POST['NIP'];
            $this->db->query("INSERT INTO guru(nama, NIP) VALUES ('$nama', '$NIP')");
        }
        return $this->db->get($table);
    }
	
	public function perSoal($soal_pelajaran) {
        $this->db->where('soal_pelajaran', $soal_pelajaran);
        return $this->db->get('soal')->result();
    }
    public function tambahSoal($soal_pelajaran,$soal_deskripsi,$soal_jwb1,$soal_jwb2,$soal_jwb3,$soal_jwb4,$soal_jwb5,$soal_jawaban){
            $data = array(
                'soal_pelajaran' => $soal_pelajaran,
                'soal_deskripsi' => $soal_deskripsi,
                'soal_jwb1' => $soal_jwb1,
                'soal_jwb2' => $soal_jwb2,
                'soal_jwb3' => $soal_jwb3,
                'soal_jwb4' => $soal_jwb4,
                'soal_jwb5' => $soal_jwb5,
                'soal_jawaban' => $soal_jawaban,
            );
            $this->db->insert('soal', $data);
    }

    public function SaveEssay($soal_pelajaran) {
        $data = array(
            "soal_pelajaran"    => $soal_pelajaran,
            "soal_deskripsi"    => $this->input->post('soal_deskripsi'),
        );
        $this->db->insert('essay', $data);
        redirect('welcome/perSoal/'.$soal_pelajaran);
    }

    public function listEssay($soal_pelajaran) {
        $this->db->where('soal_pelajaran', $soal_pelajaran);
        return $this->db->get('essay')->result();
    }

    public function perSoalEdit($soal_id) {
        $this->db->where('soal_id', $soal_id);
        return $this->db->get('soal')->row();
    }

    public function UpdateperSoalEdit($soal_id, $soal_pelajaran) {
        $soal_deskripsi=$_POST['new_soal_deskripsi'];
        $soal_jwb1=$_POST['new_soal_jwb1'];
        $soal_jwb2=$_POST['new_soal_jwb2'];
        $soal_jwb3=$_POST['new_soal_jwb3'];
        $soal_jwb4=$_POST['new_soal_jwb4'];
        $soal_jwb5=$_POST['new_soal_jwb5'];
        if($_POST['new_soal_jawaban']=="soal_jwb1"){
            $soal_jawaban=$_POST['new_soal_jwb1'];
        }else if($_POST['new_soal_jawaban']=="soal_jwb2"){
            $soal_jawaban=$_POST['new_soal_jwb2'];
        }else if($_POST['new_soal_jawaban']=="soal_jwb3"){
            $soal_jawaban=$_POST['new_soal_jwb3'];
        }else if($_POST['new_soal_jawaban']=="soal_jwb4"){
            $soal_jawaban=$_POST['new_soal_jwb4'];
        }else if($_POST['new_soal_jawaban']=="soal_jwb5"){
            $soal_jawaban=$_POST['new_soal_jwb5'];
        }
        $data = array(
            'soal_deskripsi' => $soal_deskripsi,
            'soal_jwb1' => $soal_jwb1,
            'soal_jwb2' => $soal_jwb2,
            'soal_jwb3' => $soal_jwb3,
            'soal_jwb4' => $soal_jwb4,
            'soal_jwb5' => $soal_jwb5,
            'soal_jawaban' => $soal_jawaban,
        );
        $where = array(
            'soal_id' => $soal_id
        );
        $this->db->where($where);
        $this->db->update('soal',$data);
        redirect('/welcome/perSoal/'.$soal_pelajaran);
    }
    
    public function ujian(){
        $this->db->select('*');
        $this->db->from('ujian');
        $this->db->join('kelas', 'ujian.id_kelas = kelas.id_kelas');
        $this->db->join('pelajaran', 'ujian.id_pelajaran = pelajaran.id_pelajaran');
        $this->db->order_by('status');
        return $query = $this->db->get()->result();
    }
}
