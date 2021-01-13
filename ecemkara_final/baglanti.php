<?php
    /* Veritabanı bağlantı bilgileri */
    $sunucu = "localhost";
    $kullanici = "root";
    $sifre = "";
    $veritabani = "ecemkara_02";
    $port = 3306;

    /* Veritabanına bağlantı */
    $baglanti = mysqli_connect($sunucu, $kullanici, $sifre, $veritabani, 3306)
        or die("Bağlantı sağlanamadı");

    /* Türkçe karakterler için düzenleme */
    mysqli_set_charset($baglanti,"utf8");
?>
