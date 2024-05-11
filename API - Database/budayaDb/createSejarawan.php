<?php

  header("Access-Control-Allow-Origin: header");
  header("Access-Control-Allow-Origin: *");

  include 'koneksi.php';

  $response = array();
  // $id = $_POST['id'];
  $nama = $_POST['nama'];
  $foto = $_POST['foto'];
  $tgl_lahir = $_POST['tgl_lahir'];
  $asal = $_POST['asal'];
  $jk = $_POST['jk'];
  $deskripsi = $_POST['deskripsi'];

  // Decode base64 menjadi gambar
  $foto_data = base64_decode($foto);
  // Tentukan nama file dan lokasi penyimpanan di server
  $foto_path = "C:/xampp/htdocs/budayaDb/gambar_sejarawan/".$nama.".jpg";
  // Simpan gambar di server
  file_put_contents($foto_path, $foto_data);
  
  $cek = "SELECT * FROM sejarawan WHERE nama = '$nama'";
	$result = mysqli_fetch_array(mysqli_query($koneksi, $cek));

  if(isset($result)){
		$response['value'] = 2;
		$response['message'] = "nama telah didaftarkan";
		echo json_encode($response);
	} else {
		$insert = "INSERT INTO sejarawan (nama, foto, tgl_lahir, asal, jk, deskripsi) VALUES ('$nama', '$nama.jpg', '$tgl_lahir', '$asal', '$jk', '$deskripsi')";
		if(mysqli_query($koneksi, $insert)){
			$response['value'] = 1;
			$response['message'] = "Berhasil tambah data sejarawan";
			echo json_encode($response);
		} else {
			$response['value'] = 0;
			$response['message'] = "Gagal tambah data sejarawan";
			echo json_encode($response);
		}
	}


?>
