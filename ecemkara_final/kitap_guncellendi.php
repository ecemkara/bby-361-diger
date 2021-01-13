<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $KitapKayitNo = mysqli_real_escape_string ($baglanti, $_POST['KitapKayitNo']);
    $KitapISBN = mysqli_real_escape_string($baglanti, $_POST['KitapISBN']);
    $KitapAdi= mysqli_real_escape_string($baglanti, $_POST['KitapAdi']);
    $FizikselOzellikler= mysqli_real_escape_string($baglanti, $_POST['FizikselOzellikler']);
    $KitapAdedi = mysqli_real_escape_string($baglanti, $_POST['KitapAdedi']);
    $BasildigiTarih= mysqli_real_escape_string($baglanti, $_POST['BasildigiTarih']);
    $KitapDili = mysqli_real_escape_string($baglanti, $_POST['KitapDili']);
    $sorgu = "UPDATE kitapveri SET KitapISBN = '$KitapISBN', KitapAdi = '$KitapAdi',  FizikselOzellikler = '$FizikselOzellikler', KitapAdedi= '$KitapAdedi', BasildigiTarih = '$BasildigiTarih', KitapDili = '$KitapDili' WHERE  KitapKayitNo = $KitapKayitNo";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt kaydı gerçekleşti.";
    }
    else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
    }

    $sorgu2 = mysqli_query($baglanti, "SELECT * FROM kitapveri ORDER BYKitapKayitNo DESC");

    mysqli_close($baglanti);

?>
<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Kitap Güncellendi</title>

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
  <a class="navbar-brand" href="https://getbootstrap.com/docs/4.4/examples/navbar-static/#">Top navbar</a>
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
<h1>Kitap İşlem Sonucu</h1>
<p><?php echo $islemSonuc; ?></p>
<?php
echo("<table border=1 width=80%>");
    echo("<tr>");
    echo("<td><b>Kitap Kayıt No</b></td>");
    echo("<td><b>Kitap ISBN</b></td>");
    echo("<td><b>Yazar Adı-Soyadı</b></td>");
    echo("<td><b>Kitap Yayınevi</b></td>");
    echo("<td><b>Kitap Adı</b></td>");
    echo("<td><b>Kitap Fiziksel Özellikler</b></td>");
    echo("<td><b>Kitap Adet</b></td>");
    echo("<td><b>Kitap Basım Tarihi</b></td>");
    echo("<td><b>Kitap Dili</b></td>");
    echo("<td><b>Güncelle</b></td>");
    echo("<td><b>Sil</b></td>");
    echo("</tr>");
/* Sorgu sonuçlarının yazdırılması */
while($satir = mysqli_fetch_assoc($sorgu2)){
    echo("<tr>");
    echo("<td>".$satir["KitapKayitNo"]."</td>");
    echo("<td>".$satir["KitapISBN"]."</td>");
    echo("<td>".$satir["AdSoyad"]."</td>");
    echo("<td>".$satir["KitapAdi"]."</td>");
    echo("<td>".$satir["FizikselOzellikler"]."</td>");
    echo("<td>".$satir["KitapAdedi"]."</td>");
    echo("<td>".$satir["BasildigiTarih"]."</td>");
    echo("<td>".$satir["KitapDili"]."</td>");
    echo("<td><a href='kitap_guncellenecek.php?KitapKayitNo=".$satir["KitapKayitNo"]."'>Güncelle</a></td>");
    echo("<td><a href='kitap_sil.php?KitapKayitNo=".$satir["KitapKayitNo"]."'>Sil</a></td>");
    echo("</tr>");
            }
echo("</table>");
?>
<!-- KODLAR -->   
</main>
<script src="jquery-3.4.1.slim.min.js"></script>
      <script src="bootstrap.bundle.min.js"></script>
      <br>
      <footer style="text-align:center;background-color:#212121; color: white;padding:10px"><b>Kitap Kayıt</b></footer>

</body></html>