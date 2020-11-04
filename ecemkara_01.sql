-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Kas 2020, 09:34:01
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
-- Veritabanı: `ecemkara_01`
--
CREATE DATABASE IF NOT EXISTS `ecemkara_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ecemkara_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `müze veri`
--

CREATE TABLE `müze veri` (
  `MuzeNumarası` int(11) NOT NULL COMMENT 'Müze numarası girilecek (Otomatik artan numara olacak)',
  `MuzeAdı` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Müze adı girilecek',
  `MuzeWebSitesi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Müzenin web adresi girilecek',
  `MuzeAdresi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Müzenin konum bilgileri'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Müzenin Bilgileri';

--
-- Tablo döküm verisi `müze veri`
--

INSERT INTO `müze veri` (`MuzeNumarası`, `MuzeAdı`, `MuzeWebSitesi`, `MuzeAdresi`) VALUES
(1, 'İstanbul Oyuncak Müzesi', 'https://istanbuloyuncakmuzesi.com', 'Göztepe Mah. Ömerpaşa Cad, Doktor Zeki Zeren Sokak No:17, 34730 Kadıköy'),
(2, 'Ankara Üniversitesi Eğitim Bilimleri Fakültesi Oyu', 'http://cokaum.ankara.edu.tr', 'Emniyet İncitaşı Sok. Ankara Üniversitesi Beşevler 10. Yıl Yerleşkesi, 06560 Yenimahalle/Ankara'),
(3, 'Ümran Baradan Oyun ve Oyuncak Müzesi', 'http://www.izmiroyuncakmuzesi.com', 'Fatih, Halil Rıfat Paşa Cd. No:29, 35260 Konak/İzmir'),
(4, 'Gaziantep Oyun ve Oyuncak Müzesi', 'https://gaziantepoyuncakmuzesi.org', 'Bey, Hanifi Oğlu Sk., 27010 Şahinbey/Gaziantep'),
(5, 'Antalya Oyuncak Müzesi', 'http://oyuncakmuzesi.antalya.bel.tr', 'Selçuk, Yat Limanı Sok No:112, 07000 Muratpaşa/Antalya'),
(6, 'Canik Oyuncak Müzesi', 'https://www.canik.bel.tr', 'Belediye Evleri, Girne Sk. No:52, 55080, 55080 Canik/Samsun'),
(7, 'Anadolu Oyuncak Müzesi', 'http://www.anadoluoyuncakmuzesi.com', 'Fabrikalar, Namık Kemal Blv. No:189, 07090 Kepez/Antalya'),
(8, 'Ekolojik Oyuncak Müzesi', NULL, 'Tekkeköy/Samsun'),
(9, 'Geleneksel Eyüp Oyuncakçısı', 'https://www.eyupoyuncakcisi.com/tr', 'İslambey, İslambey Cd. 55B, 34050 Eyüpsultan/İstanbul'),
(10, 'Kartal Belediyesi Masal Müzesi', 'https://www.kartal.bel.tr/tr/hizmetler/masalmuzesi.aspx', 'Çarşı, 9, Enis Akaygen Sk., 34876 Kartal/İstanbul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyuncak veri`
--

CREATE TABLE `oyuncak veri` (
  `OyuncakKayitNo` int(11) NOT NULL COMMENT 'Oyuncağın kayıt numarası girilecek (Artan Numara)',
  `OyuncakKayitTarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Oyuncağın müzeye kayıt olduğu tarih bilgisi verilecek',
  `OyuncakAdi` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Oyuncağın adı girilecek',
  `OyuncaginYapildigiTarih` year(4) DEFAULT NULL COMMENT 'Oyuncağın hangi tarihte yapıldığı bilgisi verilecek',
  `OyuncaginFizikselOzellikleri` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Oyuncağın fiziksel özellikleri girilecek',
  `OyuncaginTuru` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Oyuncağın türü girilecek',
  `OyuncakAdedi` int(11) DEFAULT NULL COMMENT 'Aynı oyuncaktan kaç adet olduğu girilecek'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Oyuncakların Bilgileri';

--
-- Tablo döküm verisi `oyuncak veri`
--

INSERT INTO `oyuncak veri` (`OyuncakKayitNo`, `OyuncakKayitTarihi`, `OyuncakAdi`, `OyuncaginYapildigiTarih`, `OyuncaginFizikselOzellikleri`, `OyuncaginTuru`, `OyuncakAdedi`) VALUES
(1, '2020-11-03 20:12:37', 'Aynalı Beşik', 1939, 'Tahta, 10x15 cm', 'Tahta Oyuncak\0\0\0\0\0\0\0', 1),
(2, '2020-11-04 08:03:43', 'Dönme Dolap', 1939, 'Tahta, 15x20 cm', 'Tahta Oyuncak', 1),
(3, '2020-11-04 08:05:30', 'Saplı Davul', 1939, 'Tahta, 5x10  cm', 'Tahta Oyuncak', 1),
(4, '2020-11-04 08:25:30', 'Çekçek Araba', 1939, 'Tahta, 10x15 cm', 'Tahta Oyuncak', 1),
(6, '2020-11-04 08:29:24', 'El Arabası', 1939, 'Tahta, 15x20 cm', 'Tahta Oyuncak', 1),
(7, '2020-11-04 08:29:24', 'Şeytan Minaresi', 1939, 'Tahta, 10x20 cm', 'Tahta Oyuncak', 1),
(8, '2020-11-04 08:29:24', 'Kaynana Zırıltı', 1939, 'Tahta, 10x10 cm', 'Tahta Oyuncak', 1),
(9, '2020-11-04 08:29:24', 'Kağnı', 1945, 'Tahta, 10x15 cm', 'Tahta Oyuncak', 1),
(10, '2020-11-04 08:29:24', 'Topaç', 1945, 'Tahta, 5x5 cm', 'Tahta oyuncak', 1),
(11, '2020-11-04 08:29:24', 'Zilli Tef', 1939, 'Tahta, 15x15 cm', 'Tahta Oyuncak', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `zanaatkar veri`
--

CREATE TABLE `zanaatkar veri` (
  `Zanaatkar No` int(11) NOT NULL COMMENT 'Zanaatkar numaraları girilecek(Numara otomatik olarak artacak)',
  `Zanaatkar Adı` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Zanaatkarın adı girilecek',
  `Zanaatkar Soyadı` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Zanaatkarın soyadı girilecek'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Zanaatkar Bilgisi';

--
-- Tablo döküm verisi `zanaatkar veri`
--

INSERT INTO `zanaatkar veri` (`Zanaatkar No`, `Zanaatkar Adı`, `Zanaatkar Soyadı`) VALUES
(1, 'Fikret ', 'Kumtepe'),
(2, 'Ayşe', 'Ünlü'),
(3, 'Maria', 'Calderon'),
(4, 'Artifex ', 'Ludens'),
(5, 'Fatma ', 'Tuncer '),
(6, 'Renate ', 'Müller'),
(7, 'Joaquín ', 'Torres-García'),
(8, 'Alma ', 'Siedhoff-Buscher'),
(9, 'Lyonel ', 'Feininger'),
(10, 'Paul', 'Klee');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `müze veri`
--
ALTER TABLE `müze veri`
  ADD PRIMARY KEY (`MuzeNumarası`),
  ADD UNIQUE KEY `MuzeAdresi` (`MuzeAdresi`) USING BTREE,
  ADD UNIQUE KEY `MuzeAdı` (`MuzeAdı`) USING BTREE;

--
-- Tablo için indeksler `oyuncak veri`
--
ALTER TABLE `oyuncak veri`
  ADD PRIMARY KEY (`OyuncakKayitNo`),
  ADD UNIQUE KEY `OyuncakAdi` (`OyuncakAdi`) USING BTREE;
ALTER TABLE `oyuncak veri` ADD FULLTEXT KEY `OyuncaginTuru` (`OyuncaginTuru`);

--
-- Tablo için indeksler `zanaatkar veri`
--
ALTER TABLE `zanaatkar veri`
  ADD PRIMARY KEY (`Zanaatkar No`),
  ADD UNIQUE KEY `Zanaatkar Adı` (`Zanaatkar Adı`),
  ADD UNIQUE KEY `Zanaatkar Soyadı` (`Zanaatkar Soyadı`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `müze veri`
--
ALTER TABLE `müze veri`
  MODIFY `MuzeNumarası` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Müze numarası girilecek (Otomatik artan numara olacak)', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `oyuncak veri`
--
ALTER TABLE `oyuncak veri`
  MODIFY `OyuncakKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Oyuncağın kayıt numarası girilecek (Artan Numara)', AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `zanaatkar veri`
--
ALTER TABLE `zanaatkar veri`
  MODIFY `Zanaatkar No` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Zanaatkar numaraları girilecek(Numara otomatik olarak artacak)', AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
