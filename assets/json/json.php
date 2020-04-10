<?php
	header('Content-type:application/json');
	$server = "localhost";
	$username = "root";
	$password = "";
	$database = "appubk";
	// $username = "smknkot2_websmk";
	// $password = "websmk2212*";
	// $database = "smknkot2_appubk";
	
	$koneksi=mysqli_connect($server, $username, $password, $database) or die("Koneksi gagal");
	$array = array();
	// $array["data"] = array();
	if(isset($_GET['query'])){
		$query = $_GET['query'];
		$data  = $koneksi->query($query);
		while ($row=$data->fetch_assoc()) {
			$array[] = $row;
    		// array_push($array["data"], $row);
		}
		echo json_encode($array);
	}
	if(isset($_GET['querys'])){
		$query = $_GET['querys'];
		$data  = $koneksi->query($query);
		while ($row=$data->fetch_assoc()) {
			$array[] = $row;
    		// array_push($array["data"], $row);
		}
		function convert_from_latin1_to_utf8_recursively($dat)
		{
		   if (is_string($dat)) {
			  return utf8_encode($dat);
		   } elseif (is_array($dat)) {
			  $ret = [];
			  foreach ($dat as $i => $d) {
				  $ret[ $i ] = convert_from_latin1_to_utf8_recursively($d);
				}
	 
			  return $ret;
		   } elseif (is_object($dat)) {
			  foreach ($dat as $i => $d){
				   $dat->$i = convert_from_latin1_to_utf8_recursively($d);
			  }
	 
			  return $dat;
		   } else {
			  return $dat;
		   }
		}
		echo json_encode(convert_from_latin1_to_utf8_recursively($array));
	}
	$datas = json_decode(file_get_contents("php://input"));
	if(isset($_GET['akses'])=="api"){
        if($datas->stat=="jawab"){
			$jawaban= $datas->jawaban;
			$id_ujian=$datas->id_ujian;
			$id_siswa=$datas->id_siswa;
			$id_soal= $datas->id_soal;
			$sql= "INSERT INTO ujian_jawaban (ujian_id,siswa_id,soal_id,jawaban) SELECT '$id_ujian','$id_siswa','$id_soal',$jawaban FROM soal WHERE soal_id='$id_soal' ON DUPLICATE KEY UPDATE jawaban=$jawaban";
			$koneksi->query($sql);
		}
		if($datas->stat=="update_jawab"){
			$jawaban= $datas->jawaban;
			$id_soal= $datas->id_soal;
			$id= $datas->id;
			$sql= "UPDATE ujian_jawaban SET jawaban=(SELECT $jawaban FROM soal WHERE soal_id=$id_soal) WHERE id='$id'";
			$koneksi->query($sql);
		}
		if($datas->stat=="tambahKelas"){
			$kelas= $datas->kelas;
			$sql= "INSERT INTO kelas (nama_kelas) VALUES ('$kelas')";
			$koneksi->query($sql);
			$data=$koneksi->query("SELECT * FROM kelas");
			while ($row=$data->fetch_assoc()) {
				$array1[] = $row;
				// array_push($array["data"], $row);
			}

			echo json_encode($array1);

		}
		if($datas->stat=="deleteKelas"){
			$id_kelas = $datas->id_kelas;
			$sql= "DELETE FROM kelas WHERE id_kelas='$id_kelas'";
			$koneksi->query($sql);

		}
		if($datas->stat=="editKelas"){
			$id_kelas = $datas->id_kelas;
			$nama_kelas = $datas->nama_kelas;
			$sql= "UPDATE kelas SET nama_kelas='$nama_kelas' WHERE id_kelas='$id_kelas'";
			$koneksi->query($sql);

		}
		if($datas->stat=="updateJawaban"){
			$soal_id = $datas->soal_id;
			$soal_jawaban = $datas->soal_jawaban;
			$sql= "UPDATE soal SET soal_jawaban=$soal_jawaban WHERE soal_id='$soal_id'";
			$koneksi->query($sql);
			echo json_encode($soal_jawaban);

		}
		if($datas->stat=="genToken"){
			$id_ujian = $datas->id_ujian;
			$sql1="SET GLOBAL event_scheduler = ON";
			$koneksi->query($sql1);
			$sql= "CREATE EVENT token_event_".$id_ujian." ON SCHEDULE EVERY 15 MINUTE STARTS CURRENT_TIMESTAMP ON COMPLETION PRESERVE ENABLE DO UPDATE ujian SET token=lpad(conv(floor(rand()*pow(36,6)), 10, 36), 6, 0),status=0 WHERE id_ujian='$id_ujian'";
			$koneksi->query($sql);

		}
		if($datas->stat=="stopUjian"){
			$id_ujian = $datas->id_ujian;
			$sql= "DROP EVENT token_event_".$id_ujian."";
			$koneksi->query($sql);
			$sql1="UPDATE ujian SET token='',status=1 WHERE id_ujian='$id_ujian'";
			$koneksi->query($sql1);

		}
		if($datas->stat=="tambahUjian"){
			$id_kelas = $datas->id_kelas;
			$id_pelajaran = $datas->id_pelajaran;
			$sql= "INSERT INTO ujian (id_kelas,id_pelajaran,status) VALUES ('$id_kelas','$id_pelajaran',1)";
			$koneksi->query($sql);

		}
		if($datas->stat=="updateUjian"){
			$id_kelas = $datas->id_kelas;
			$id_pelajaran = $datas->id_pelajaran;
			$sql= "UPDATE ujian SET id_kelas='$id_kelas',id_pelajaran='$id_pelajaran'";
			$koneksi->query($sql);

		}
		if($datas->stat=="logout"){
			$id_record = $datas->id_record;
			$sql= "UPDATE record SET status=1 WHERE id_record='$id_record'";
			$koneksi->query($sql);
    		header('location:../../login/logout');
		}
		if($datas->stat=="tambahMapel"){
			$nama = $datas->nama_mapel;
			$id_guru = $datas->id_guru;
			$kkm = $datas->kkm;
			$sql= "INSERT INTO pelajaran (nama,id_guru,KKM) VALUES ('$nama','$id_guru','$kkm')";
			$koneksi->query($sql);
		}
		if($datas->stat=="tambahSiswa"){
			$nama = $datas->nama;
			$id_kelas = $datas->id_kelas;
			$nis = $datas->nis;
			$username = $datas->username;
			$password = $datas->password;
			$sql= "INSERT INTO siswa (nama,id_kelas,nis,username,password) VALUES ('$nama','$id_kelas','$nis','$username','$password')";
			$koneksi->query($sql);
		}
		if($datas->stat=="hapusSiswa"){
			$id_siswa = $datas->id_siswa;
			$sql= "DELETE FROM siswa WHERE id_siswa='$id_siswa'";
			$koneksi->query($sql);
		}
		if($datas->stat=="addJawabanEssay"){
			$jawaban= $datas->jawaban;
			$id_ujian=$datas->id_ujian;
			$id_siswa=$datas->id_siswa;
			$id_soal= $datas->id_soal;
			$sql= "INSERT INTO essay_jawaban (ujian_id,siswa_id,soal_id,jawaban) VALUES ('$id_ujian','$id_siswa','$id_soal','$jawaban') ON DUPLICATE KEY UPDATE jawaban='$jawaban'";
			$koneksi->query($sql);
		}
		if($datas->stat=="updateJawabanEssay"){
			$jawaban= $datas->jawaban;
			$id= $datas->id;
			$sql= "UPDATE essay_jawaban SET jawaban='$jawaban' WHERE id='$id'";
			$koneksi->query($sql);
		}

}

?>