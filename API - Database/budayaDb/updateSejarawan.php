<?php

header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

$res = array();
$id = $_POST['id'];
$nama = $_POST['nama'];
$foto = $_POST['foto'];
$tgl_lahir = $_POST['tgl_lahir'];
$asal = $_POST['asal'];
$jk = $_POST['jk'];
$deskripsi = $_POST['deskripsi'];

// Decode base64 menjadi gambar
$foto_data = base64_decode($foto);
// Tentukan nama file baru dan lokasi penyimpanan di server
$foto_path = "C:/xampp/htdocs/budayaDb/gambar_sejarawan/".$nama.".jpg";
// Simpan gambar baru di server
file_put_contents($foto_path, $foto_data);

$cek = "SELECT * FROM sejarawan WHERE nama = '$nama' AND id != $id";
$result = mysqli_query($koneksi, $cek);
if (mysqli_num_rows($result) > 0) {
    $res['is_success'] = false;
    $res['value'] = 2;
    $res['message'] = "Nama telah didaftarkan sebelumnya. Gagal edit sejarawan.";
} else {
    $sql = "UPDATE sejarawan SET nama = '$nama', foto = '$nama.jpg', tgl_lahir = '$tgl_lahir', asal = '$asal', jk = '$jk', deskripsi = '$deskripsi' WHERE id=$id";
    $isSuccess = $koneksi->query($sql);

    if ($isSuccess) {
        $cek = "SELECT * FROM sejarawan WHERE id = $id";
        $result = mysqli_fetch_array(mysqli_query($koneksi, $cek));
        $res['is_success'] = true;
        $res['value'] = 1;
        $res['message'] = "Berhasil edit sejarawan";
        $res['nama'] = $result['nama'];
        $res['foto'] = $result['foto'];
        $res['tgl_lahir'] = $result['tgl_lahir'];
        $res['asal'] = $result['asal'];
        $res['jk'] = $result['jk'];
        $res['deskripsi'] = $result['deskripsi'];
        $res['id'] = $result['id'];
    } else {
        $res['is_success'] = false;
        $res['value'] = 0;
        $res['message'] = "Gagal edit sejarawan";
    }
}

echo json_encode($res);

?>
