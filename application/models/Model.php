<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {
    public function cek_login($table, $where) {
		return $this->db->get_where($table, $where);
    }
    public function cek_token($table, $where) {
		return $this->db->get_where($table, $where);
	}

    public function siswa($table,$where) {
        return $this->db->get_where($table,$where);
    }
    public function guru($table,$where) {
        return $this->db->get_where($table,$where);
    }
    public function kelas($table,$where) {
        return $this->db->get_where($table,$where)->row();
    }
    public function ada_ujian($id_kelas) {
        // return $this->db->get_where($table, $where);
        // return $this->db->join('kelas','ujian.id_kelas=kelas.id_kelas');
        $this->db->select('*');
        $this->db->from('ujian');
        $this->db->join('kelas', 'ujian.id_kelas = kelas.id_kelas');
        $this->db->join('pelajaran', 'ujian.id_pelajaran = pelajaran.id_pelajaran');
        $this->db->where('ujian.id_kelas',$id_kelas);
        $this->db->where('status',0);
        return $query = $this->db->get();
    }

    public function random($id_pelajaran) {
        $this->db->select('*');
        $this->db->from('soal');
        $this->db->where('soal_pelajaran',$id_pelajaran);
        $this->db->order_by('rand()');
        return $this->db->get();
    }
    public function kkm ($id_pelajaran){
        $this->db->select('kkm');
        $this->db->from('pelajaran');
        $this->db->where('id_pelajaran',$id_pelajaran);
        return $this->db->get();
    }
    public function cek_record($siswa,$id_pelajaran){
        return $this->db->query("SELECT id_record FROM record WHERE id_siswa='$siswa' AND id_pelajaran='$id_pelajaran' AND status=0");
    }
    public function cek_record_status($siswa,$id_pelajaran){
        return $this->db->query("SELECT id_record FROM record WHERE id_siswa='$siswa' AND id_pelajaran='$id_pelajaran' AND status=1")->num_rows();
    }
    public function cek_essay($id_pelajaran){
        return $this->db->query("SELECT soal_id FROM essay WHERE soal_pelajaran='$id_pelajaran'");
    }

    public function soal($config,$siswa) {
            $id_soal=$this->db->query("SELECT record.id_soal,ujian.id_ujian,siswa.id_siswa FROM record JOIN siswa ON siswa.id_siswa=$siswa JOIN ujian ON ujian.id_kelas=siswa.id_kelas WHERE record.id_siswa=siswa.id_siswa AND record.id_pelajaran=ujian.id_pelajaran AND record.status=0")->row();
            $arrayId=explode(",",$id_soal->id_soal);
            if($config=="select"){
                $arrayId2=implode(",", $arrayId);
                $hasilquery=$this->db->query("SELECT * FROM soal LEFT OUTER JOIN ujian_jawaban ON ujian_jawaban.ujian_id=$id_soal->id_ujian AND ujian_jawaban.siswa_id=$id_soal->id_siswa AND ujian_jawaban.soal_id=soal.soal_id WHERE soal.soal_id IN ($arrayId2) ORDER BY FIELD(soal.soal_id,$arrayId2)"); 
            }else{
                $this->db->where_in('soal.soal_id',$arrayId);
                $this->db->join('ujian','ujian.id_ujian='.$id_soal->id_ujian);
                $this->db->join('siswa','siswa.id_siswa='.$siswa);
                $this->db->where('ujian.id_ujian='.$id_soal->id_ujian);
                $this->db->where('siswa.id_siswa='.$siswa);
                $order = sprintf('FIELD(soal.soal_id, %s)', implode(', ', $arrayId));
                $this->db->order_by($order);
                $hasilquery=$this->db->get('soal',$config['per_page'], $this->uri->segment(3));
            }
            foreach ($hasilquery->result() as $value) {
                $data[] = $value;
            }
            return $data;
    }
    public function essay($config,$id_pelajaran,$id_ujian,$id_siswa){
        if($config=="select"){
            $essay=$this->db->query("SELECT * FROM essay LEFT OUTER JOIN essay_jawaban ON essay_jawaban.soal_id=essay.soal_id AND essay_jawaban.ujian_id=$id_ujian AND essay_jawaban.siswa_id=$id_siswa WHERE soal_pelajaran=$id_pelajaran") ;
            return $essay->result();
        }else{;
            $this->db->where('soal_pelajaran',$id_pelajaran);
            return $this->db->get('essay',$config['per_page'], $this->uri->segment(3))->result();
        }
    }
    public function cek_jawaban($table, $where){
            return $this->db->get_where($table,$where);
    }
}