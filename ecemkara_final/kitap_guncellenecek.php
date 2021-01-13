<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["KitapKayitNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM kitapveri WHERE KitapKayitNo = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu);
    $sorgu2 = mysqli_query($baglanti, "SELECT * FROM yayineviveri");
    $sorgu3 = mysqli_query($baglanti, "SELECT *, CONCAT(YazarAdi,' ', YazarSoyadi) AS AdSoyad FROM yazarveri");
?>
<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Kitap Güncelle</title>

    <!-- Bootstrap core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="./katalog_files/navbar-top.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <a class="navbar-brand" href="https://getbootstrap.com/docs/4.4/examples/navbar-static/#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Ana Sayfa </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="kitap.php">Kitap Kayıt</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="yazar.php">Yazar Kayıt</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="yayinevi.php">Yayınevi Kayıt</a>
      </li>
    </ul>
    <form class="form-inline mt-2 mt-md-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Ara" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Arama</button>
    </form>
  </div>
</nav>

<main role="main" class="container">
<!-- KODLAR -->
<h1>Kitap Güncelleme </h1>
<form action="kitap_guncellendi.php" method="post">
    
Yazar Adı:    <select style="position:relative;left:95px" name="YazarNo" id="YazarNo">
     <option value="Seçim Yapılmadı">Seçiniz</option>
    <?php while($satir4 = mysqli_fetch_assoc($sorgu4)){?>
    <option value="<?php echo $satir4['YazarNo'];  ?>"><?php echo $satir4["YazarAdi"] , ["YazarSoyadi"]; ?></option>
  <?php  }?>
</select><br><br>
    
    Yayınevi Bilgisi:    <select style="position:relative;left:57px" name="YayineviKayitNo" id="YayineviKayitNo">
     <option value="Seçim Yapılmadı">Seçiniz</option>
    <?php while($satir2 = mysqli_fetch_assoc($sorgu2)){?>
    <option value="<?php echo $satir2['YayineviNo'];  ?>"><?php echo $satir2["YayineviAdi"]; ?></option>
  <?php  }?>
</select><br><br>
    
       
    
   
    Kitap ISBN: <input style="position:relative;left:85px" type="text" name="KitapISBN"><br><br>
    Kitap Adı: <input style="position:relative;left:95px" type="text" name="KitapAdi"><br><br>
    Kitabın Fiziksel Özellikler: <textarea name="kf" rows="2" cols="50" ></textarea><br><br>
    Kitap Adet: <input  style="position:relative;left:85px" type="text" name="KitapAdedi"><br><br>
    Kitap Basım Tarihi: <input style="position:relative;left:33px" type="text" name="BasildigiTarih"><br><br>
    Kitap Dili: <input  style="position:relative;left:95px"type="text" name="KitapDili"><br><br>
    <input  style="text-align:center;background-color:#212121; color: white" type="submit" value="Kitap Güncelle">
</form>
<!-- KODLAR -->   
</main>
<script src="jquery-3.4.1.slim.min.js"></script>
      <script src="bootstrap.bundle.min.js"></script>
      <br>
<footer style="text-align:center;background-color:#212121; color: white;padding:10px"><b>Kitap Kayıt</b></footer>
</body></html>