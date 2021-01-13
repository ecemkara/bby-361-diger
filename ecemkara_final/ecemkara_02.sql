-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2021, 15:20:07
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecemkara_02`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapveri`
--

CREATE TABLE `kitapveri` (
  `KitapKayitNo` int(11) NOT NULL COMMENT 'Kitap numaraları girilecek (otomatik artan)',
  `KitapKayitTarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Kitabın sisteme kayıt tarihi girilecek',
  `KitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ISBN numarası girilecek',
  `KitapAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitap adı girilecek',
  `BasildigiTarih` year(4) NOT NULL COMMENT 'Kitap basım tarihi girilecek',
  `FizikselOzellikler` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kitabın fiziksel özellikleri girilecek',
  `KitapAdedi` int(11) DEFAULT NULL COMMENT 'Adet sayısı girilecek',
  `KitapDili` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın dili girilecek',
  `YazarNo` int(11) NOT NULL,
  `YayineviNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitapveri`
--

INSERT INTO `kitapveri` (`KitapKayitNo`, `KitapKayitTarihi`, `KitapISBN`, `KitapAdi`, `BasildigiTarih`, `FizikselOzellikler`, `KitapAdedi`, `KitapDili`, `YazarNo`, `YayineviNo`) VALUES
(1, '2020-12-02 06:48:36', '9873526738495', 'Çalıkuşu', 2009, '304 Sayfa', 1000, 'Türkçe', 1, 1),
(2, '2020-12-02 06:48:36', '9837462647890', 'Dilimiz Kimliğimizdir', 2001, '290 Sayfa', 250, 'Türkçe', 2, 2),
(3, '2020-12-02 06:48:36', '7649058362345', 'Atatürk Şiirleri', 2015, '167 sayfa', 125, 'Türkçe', 3, 3),
(4, '2020-12-02 06:48:36', '9874625274567', 'Atatürk Evleri', 2003, '124 sayfa', 100, 'Türkçe', 4, 4),
(5, '2020-12-02 06:48:36', '9874653748905', 'Resimlerle Atatürk Hayatı ve Devrimleri', 2001, '405 sayfa', 250, 'Türkçe', 5, 5),
(6, '2020-12-02 06:48:36', '9874536227384', 'Atatürk ve Okuma Sevgisi', 1999, '210 sayfa', 100, 'Türkçe', 6, 6),
(7, '2020-12-02 06:48:36', '9874635466471', 'Eşref Saati', 2012, '102 sayfa', 100, 'Türkçe', 7, 7),
(8, '2020-12-02 06:48:36', '9873562123453', 'Keskin Naneli Öyküler', 2002, '50 sayfa', 50, 'Türkçe', 8, 8),
(9, '2020-12-02 06:48:36', '9873422567821', 'Hoşçakal Anne', 2007, '109 sayfa', 100, 'Türkçe', 9, 9),
(10, '2020-12-02 06:48:36', '9873556789336', 'Can Bedeli', 2000, '209 sayfa', 50, 'Türkçe', 10, 10);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `list`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `list` (
`KitapISBN` varchar(13)
,`KitapAdi` varchar(100)
,`Yazar` varchar(201)
,`YazarWebAdresi` varchar(100)
,`BasildigiTarih` year(4)
,`FizikselOzellikler` varchar(75)
,`KitapDili` varchar(30)
,`KitapAdedi` int(11)
,`YayineviAdi` varchar(75)
,`YayineviWebSitesi` varchar(150)
,`YayineviMailAdresi` varchar(40)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayineviveri`
--

CREATE TABLE `yayineviveri` (
  `YayineviNo` int(11) NOT NULL COMMENT 'Yayınevi numarası girilecek (otomatik artan)',
  `YayineviKayitTarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `YayineviAdi` varchar(75) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin adı yazılacak',
  `YayineviWebSitesi` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevinin web adresi girilecek',
  `YayineviMailAdresi` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevinin e posta adresi girilecek'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayineviveri`
--

INSERT INTO `yayineviveri` (`YayineviNo`, `YayineviKayitTarihi`, `YayineviAdi`, `YayineviWebSitesi`, `YayineviMailAdresi`) VALUES
(1, '2020-12-02 06:56:01', 'Akis Yayınları', 'http://www.akiskitap.com/', 'bilgi@akiskitap.com'),
(2, '2020-12-02 06:56:01', 'Ankara Yıldırım Yayını', 'https://www.ankarayildirim.com.tr/', NULL),
(3, '2020-12-02 07:06:08', 'İnkılap Kitabevi', 'https://www.inkilap.com/', 'siparis@inkilap.com'),
(4, '2020-12-02 07:06:08', 'Alfa Yayınları', 'https://www.alfayayinlari.com/', 'alfa@alfakitap.com'),
(5, '2020-12-02 07:06:08', 'TDK Yayınları', 'https://www.tdk.gov.tr/yayinlar/yayinlar-yayinlar/satistaki-yayinlar/', NULL),
(6, '2020-12-02 07:06:08', 'Dünya Yayıncılık', NULL, NULL),
(7, '2020-12-02 07:06:08', 'Kültür Bakanlığı Yayınları', 'https://kygm.ktb.gov.tr/', NULL),
(8, '2020-12-02 07:06:08', 'Elips Yayınevi', 'http://www.elipskitap.com.tr/', 'elipskitap@elipskitap.com.tr'),
(9, '2020-12-02 07:06:08', 'Gökkuşağı', NULL, NULL),
(10, '2020-12-02 07:06:08', 'Parıltı Yayıncılık', 'http://www.pariltiyayincilik.com/', 'info@pariltiyayincilik.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarveri`
--

CREATE TABLE `yazarveri` (
  `YazarKayitTarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Yazar Kayıt Tarihi girilecek',
  `YazarNo` mediumint(9) NOT NULL COMMENT 'Yazar Numaraları girilecek (Otomatik artan)',
  `YazarAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar adı girilecek',
  `YazarSoyadi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'YAzar Soyadıgirilecek',
  `YazarWebAdresi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazarın web sitesi girilecek'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazarveri`
--

INSERT INTO `yazarveri` (`YazarKayitTarihi`, `YazarNo`, `YazarAdi`, `YazarSoyadi`, `YazarWebAdresi`) VALUES
('2020-12-02 07:14:03', 1, 'Reşat Nuri', 'Gültekin', 'https://tr.wikipedia.org/wiki/Re%C5%9Fat_Nuri_G%C3%BCntekin'),
('2020-12-02 07:14:03', 2, 'Oktay ', 'Sinanoğlu', 'https://tr.wikipedia.org/wiki/Oktay_Sinano%C4%9Flu'),
('2020-12-02 07:14:03', 3, 'Mehmet', 'Kaplan', 'https://tr.wikipedia.org/wiki/Mehmet_Kaplan'),
('2020-12-02 07:14:03', 4, 'Neziha', 'Araz', 'https://tr.wikipedia.org/wiki/Nezihe_Araz'),
('2020-12-02 07:14:03', 5, 'Nurettin Can', 'Gülekli', 'https://kidega.com/yazar/nurettin-can-gulekli-149440'),
('2020-12-02 07:14:03', 6, 'Cemil', 'Sönmez', 'http://www.kimkimdir.net.tr/kisiler/cemil-sonmez'),
('2020-12-02 07:14:03', 7, 'Şevket ', 'Rado', 'https://tr.wikipedia.org/wiki/%C5%9Eevket_Rado'),
('2020-12-02 07:14:03', 8, 'Tolga', 'Gümüşay', 'https://tr.wikipedia.org/wiki/Tolga_G%C3%BCm%C3%BC%C5%9Fay'),
('2020-12-02 07:14:03', 9, 'Fatma Çetin', 'Kabadayı', 'https://www.biyografya.com/biyografi/4696');

-- --------------------------------------------------------

--
-- Görünüm yapısı `list`
--
DROP TABLE IF EXISTS `list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `list`  AS  select `ka`.`KitapISBN` AS `KitapISBN`,`ka`.`KitapAdi` AS `KitapAdi`,concat(`ya`.`YazarAdi`,' ',`ya`.`YazarSoyadi`) AS `Yazar`,`ya`.`YazarWebAdresi` AS `YazarWebAdresi`,`ka`.`BasildigiTarih` AS `BasildigiTarih`,`ka`.`FizikselOzellikler` AS `FizikselOzellikler`,`ka`.`KitapDili` AS `KitapDili`,`ka`.`KitapAdedi` AS `KitapAdedi`,`yy`.`YayineviAdi` AS `YayineviAdi`,`yy`.`YayineviWebSitesi` AS `YayineviWebSitesi`,`yy`.`YayineviMailAdresi` AS `YayineviMailAdresi` from ((`kitapveri` `ka` join `yazarveri` `ya`) join `yayineviveri` `yy`) where ((`ka`.`YayineviNo` = `yy`.`YayineviNo`) and (`yy`.`YayineviNo` = `ya`.`YazarNo`)) ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitapveri`
--
ALTER TABLE `kitapveri`
  ADD PRIMARY KEY (`KitapKayitNo`),
  ADD UNIQUE KEY `KitapAdi` (`KitapAdi`);

--
-- Tablo için indeksler `yayineviveri`
--
ALTER TABLE `yayineviveri`
  ADD PRIMARY KEY (`YayineviNo`),
  ADD UNIQUE KEY `YayineviAdi` (`YayineviAdi`);

--
-- Tablo için indeksler `yazarveri`
--
ALTER TABLE `yazarveri`
  ADD PRIMARY KEY (`YazarNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitapveri`
--
ALTER TABLE `kitapveri`
  MODIFY `KitapKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap numaraları girilecek (otomatik artan)', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yayineviveri`
--
ALTER TABLE `yayineviveri`
  MODIFY `YayineviNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi numarası girilecek (otomatik artan)', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazarveri`
--
ALTER TABLE `yazarveri`
  MODIFY `YazarNo` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'Yazar Numaraları girilecek (Otomatik artan)', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
