<h4>tahun akademik</h4>
<?php

date_default_timezone_set('Asia/Jayapura');
$tanggal= mktime(date('m'),date('d'),date('Y'));
echo "Tanggal : <b>". date('d-M-Y')."</b> | Pukul : <b>". date('H:i:s')."&nbsp </b> "  ;

$a=date('H');
if($a>6){
    echo "Selamat Malam";}
else{
    echo "Selamat siang";
}
echo "<p>";
$hari_ini = date("2024-02-10");
$tgl_pertama = date('Y-m-01',strtotime($hari_ini));
$tgl_terakhir = date('Y-m-t', strtotime($hari_ini));
$bulan= date('m', strtotime($hari_ini));
$thn=date('Y',strtotime($hari_ini));

echo "Tanggal Hari ini ".$hari_ini;
echo "<br/>";
echo "Tanggal Pertama di Bulan : ".$tgl_pertama;
echo "<br/>";
echo "Tanggal Akhir di Bulan ini  ".$tgl_terakhir;
echo "<br/>";
echo "<br/>";
echo "bulan : ".$bulan;
echo "<br/>";

if($bulan>='08'){
    echo "Tahun Akademik : ".$thn. "- Ganjil <br>";
}
elseif($bulan=='01'){
    echo "Tahun Akademik : ";
    echo $thn-1; 
    echo "- Ganjil <br>";
}
else{
    echo "Tahun Akademik : ".$thn-1;
    echo "- Genap <br>";
}


?>