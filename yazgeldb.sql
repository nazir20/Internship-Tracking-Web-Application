-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 06:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yazgeldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_full_name` varchar(128) DEFAULT NULL,
  `admin_email` varchar(128) NOT NULL,
  `admin_password` varchar(128) DEFAULT NULL,
  `admin_type` enum('super_admin','normal_admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_full_name`, `admin_email`, `admin_password`, `admin_type`) VALUES
(11, 'Prof. Mehmet Yıldırım', 'mehmetyildirim@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'super_admin'),
(12, 'Prof. Hikmet Hakan', 'hikmethakan@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'normal_admin'),
(13, 'Doç Dr. Halil Yiğit', 'halilyigit@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'normal_admin');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `announcement_title` varchar(256) NOT NULL,
  `announcement_content` varchar(1000) NOT NULL,
  `announcement_file` varchar(300) DEFAULT NULL,
  `announcement_author` varchar(256) NOT NULL,
  `announcement_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `announcement_title`, `announcement_content`, `announcement_file`, `announcement_author`, `announcement_datetime`) VALUES
(5, '2022-2023 GÜZ DÖNEMİ ESD/ÜSD ARA SINAV PROGRAMI', 'Teknoloji Fakültesi\r\n2022-2023 Eğitim-Öğretim Yılı ESD/ÜSD Güz Yarıyılı Ara Sınav Programı', '637288b642f8a6.66125603.pdf', '151109022380', '2022-11-14 18:28:06'),
(6, 'ÖĞRENCİLERİMİZ İÇİN STAJ, İŞLETMEDE MESLEKİ EĞİTİM VE ÇALIŞMA İMKANI', 'Türkiye ve Bölgesel Pazarda Aktif Oyuncu Merkezi İstanbul&#039;da, bölge ofisleri BAE ve KKTC&#039;de bulunan Otomatica, uluslararası ortaklıklara sahip olarak 7 ülkede referans projelerle aktif rol oynamaktadır. \r\n\r\n30 Uzman Mühendis ve Uygulama Süpervizörü Otomatica; “Türkiye’nin verisi Türkiye’de kalsın” misyonu ile 2015 yılından itibaren başta veri merkezleri olmak üzere kritik tesislere yazılım, danışmanlık ve profesyonel hizmet vermek üzere kurulmuş genç ve dinamik bir ekibe sahiptir.\r\n\r\n65.000+ m2 Beyaz Alan ve Kritik Tesislerde 650.000+ Saat Mühendislik Deneyimi Tasarım, devreye alma, 7x24 sürdürülebilir operasyon, proje yönetimi, profesyonel servisler, “Uptime Institute” sertifikasyon ve özel yazılım geliştirme konularında 65.000+ m2 beyaz alan ve 650.000+ saatlik mühendislik tecrübesi ile sektöründe öncü konumundadır.', '63735e3dbc1851.09864855.png', '151109022380', '2022-11-15 09:39:09'),
(7, 'deneme', 'deneme icerik', '6377405ebb6fb1.33614391.pdf', '200107005', '2022-11-18 08:20:46'),
(8, 'ÖĞRENCİLERİMİZ İÇİN STAJ, İŞLETMEDE MESLEKİ EĞİTİM VE ÇALIŞMA İMKANI', 'as', '63ab72ffe4b124.56830881.pdf', '200107005', '2022-12-27 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `ime_basvuru`
--

CREATE TABLE `ime_basvuru` (
  `basvuru_id` int(11) NOT NULL,
  `donem` enum('guz','bahar') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `ime_baslama_tarihi` date NOT NULL,
  `ime_bitis_tarihi` date NOT NULL,
  `is_gunu` int(11) NOT NULL,
  `cumartesi_calisiyor` enum('yes','no') NOT NULL,
  `gss_kapsam` enum('yes','no') NOT NULL,
  `saglik_hizmet_almasi` enum('yes','no') NOT NULL,
  `yas_25` enum('yes','no') NOT NULL,
  `iban` varchar(32) NOT NULL,
  `firma_adi` varchar(128) NOT NULL,
  `firma_mail` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ime_belgeleri`
--

CREATE TABLE `ime_belgeleri` (
  `ogrenci_id` int(11) NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `ime_raporu` varchar(300) NOT NULL,
  `ime_degerlendirme_formu` varchar(300) NOT NULL,
  `ime_denetim_formu` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ime_kabul_belgesi`
--

CREATE TABLE `ime_kabul_belgesi` (
  `id` int(11) NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `kabul_belgesi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ime_ogrencileri`
--

CREATE TABLE `ime_ogrencileri` (
  `donem_id` int(11) NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `ime_yapilacak_donem` enum('guz','bahar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ime_ogrencileri`
--

INSERT INTO `ime_ogrencileri` (`donem_id`, `ogrenci_numarasi`, `ime_yapilacak_donem`) VALUES
(4, '201307049', 'guz');

-- --------------------------------------------------------

--
-- Table structure for table `ime_takibi`
--

CREATE TABLE `ime_takibi` (
  `ogrenci_id` int(11) NOT NULL,
  `donem` enum('guz','bahar') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `ime_durumu` enum('done','belge_yuklenmesi','degerlendirme','eksik_belge','onaylandi','yeni_basvuru','basarisiz') NOT NULL,
  `ogretmen_numarasi` varchar(32) NOT NULL,
  `geri_bildirim` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `user_id` int(11) NOT NULL,
  `user_fullName` varchar(128) NOT NULL,
  `user_password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`user_id`, `user_fullName`, `user_password`) VALUES
(54, 'Omer Aran', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `pdf_file`
--

CREATE TABLE `pdf_file` (
  `id` int(11) NOT NULL,
  `pdf` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdf_file`
--

INSERT INTO `pdf_file` (`id`, `pdf`) VALUES
(1, 'Hafta_1.1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `staj_basvuru`
--

CREATE TABLE `staj_basvuru` (
  `basvuru_id` int(11) NOT NULL,
  `basvuru_turu` enum('staj1','staj2') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `baslama_tarihi` varchar(64) NOT NULL,
  `bitis_tarihi` varchar(64) NOT NULL,
  `is_gunu` int(11) NOT NULL,
  `cumartesi_calisiyor` enum('yes','no') DEFAULT NULL,
  `gss_kapsam` enum('yes','no') NOT NULL,
  `saglik_hizmet_almasi` enum('yes','no') NOT NULL,
  `yas_25` enum('yes','no') NOT NULL,
  `firma_adi` varchar(256) NOT NULL,
  `firma_email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staj_basvuru`
--

INSERT INTO `staj_basvuru` (`basvuru_id`, `basvuru_turu`, `ogrenci_numarasi`, `baslama_tarihi`, `bitis_tarihi`, `is_gunu`, `cumartesi_calisiyor`, `gss_kapsam`, `saglik_hizmet_almasi`, `yas_25`, `firma_adi`, `firma_email`) VALUES
(26, 'staj1', '201307002', '22-11-16', '22-12-29', 30, 'yes', 'yes', 'yes', 'no', 'Bilişim Vadisi', 'bilisimvadisi@gmail.com'),
(27, 'staj1', '191307094', '22-11-16', '22-12-29', 30, 'no', 'yes', 'yes', 'no', 'Bilişim Vadisi', 'bilisimvadisi@gmail.com'),
(28, 'staj1', '191307019', '22-11-18', '22-12-27', 30, 'yes', 'yes', 'yes', 'yes', 'biliisim vadisi', 'nazirsharifi19@gmail.com'),
(29, 'staj1', '201307049', '22-11-18', '22-12-27', 30, 'yes', 'yes', 'yes', 'yes', 'Bilişim Vadisi', 'nazirsharifi19@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `staj_belgeleri`
--

CREATE TABLE `staj_belgeleri` (
  `id` int(11) NOT NULL,
  `staj_turu` enum('staj1','staj2') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `staj_raporu` varchar(300) NOT NULL,
  `staj_degerlendirme_formu` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staj_belgeleri`
--

INSERT INTO `staj_belgeleri` (`id`, `staj_turu`, `ogrenci_numarasi`, `staj_raporu`, `staj_degerlendirme_formu`) VALUES
(5, 'staj1', '201307049', '63773e0b50e391.43133145.pdf', '63773e0b518421.42013896.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `staj_kabul_belgesi`
--

CREATE TABLE `staj_kabul_belgesi` (
  `id` int(11) NOT NULL,
  `staj_turu` enum('staj1','staj2') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `ogrenci_staj_kabul_belgesi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staj_kabul_belgesi`
--

INSERT INTO `staj_kabul_belgesi` (`id`, `staj_turu`, `ogrenci_numarasi`, `ogrenci_staj_kabul_belgesi`) VALUES
(11, 'staj1', '201307002', '6374f5884d1f83.62538714.pdf'),
(12, 'staj1', '191307094', '63755435d73923.26361519.pdf'),
(13, 'staj1', '201307049', '63773d7e707f72.15513388.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `staj_raporu`
--

CREATE TABLE `staj_raporu` (
  `id` int(11) NOT NULL,
  `staj_turu` enum('staj1','staj2') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `rapor` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staj_takibi`
--

CREATE TABLE `staj_takibi` (
  `id` int(11) NOT NULL,
  `staj_tur` enum('staj1','staj2') NOT NULL,
  `ogrenci_numarasi` varchar(32) NOT NULL,
  `staj_durumu` enum('done','belge_yuklenmesi','degerlendirme','eksik_belge','onaylandi','yeni_basvuru','basarisiz') NOT NULL,
  `geri_bildirim` varchar(1000) DEFAULT NULL,
  `ogretmen_numarasi` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staj_takibi`
--

INSERT INTO `staj_takibi` (`id`, `staj_tur`, `ogrenci_numarasi`, `staj_durumu`, `geri_bildirim`, `ogretmen_numarasi`) VALUES
(18, 'staj1', '201307002', 'onaylandi', 'Staj Basvurunuz onaylandi', '200107004'),
(19, 'staj1', '191307094', 'onaylandi', 'Staj Basvurunuz onaylandi', '200107002'),
(20, 'staj1', '191307019', 'onaylandi', 'Staj Basvurunuz onaylandi', '200107001'),
(21, 'staj1', '201307049', 'onaylandi', 'Staj Basvurunuz onaylandi', '200107001');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `kullanci_id` int(11) NOT NULL,
  `ogrenci_ad_soyad` varchar(128) NOT NULL,
  `ogrenci_tc` varchar(15) NOT NULL,
  `ogrenci_uyrugu` varchar(64) NOT NULL,
  `ogrenci_tel` varchar(15) NOT NULL,
  `ogrenci_mail` varchar(128) NOT NULL,
  `ogrenci_password` varchar(128) NOT NULL,
  `ogrenci_okul_adi` varchar(256) NOT NULL,
  `ogrenci_fakulte_adi` varchar(128) NOT NULL,
  `ogrenci_bolumm_adi` varchar(128) NOT NULL,
  `ogrenci_sinif` varchar(16) NOT NULL,
  `ogrenci_okul_no` varchar(64) NOT NULL,
  `ogrenci_address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`kullanci_id`, `ogrenci_ad_soyad`, `ogrenci_tc`, `ogrenci_uyrugu`, `ogrenci_tel`, `ogrenci_mail`, `ogrenci_password`, `ogrenci_okul_adi`, `ogrenci_fakulte_adi`, `ogrenci_bolumm_adi`, `ogrenci_sinif`, `ogrenci_okul_no`, `ogrenci_address`) VALUES
(148, 'YAVUZ SELİM ACAR', '1511090', 'Turkey', '5369915033', 'acaryavuzz1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307059', 'Umuttepe, izmit'),
(149, 'YİĞİT AĞALAR', '1511090', 'Turkey', '5369915033', '191307015@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307015', 'Umuttepe, izmit'),
(150, 'ALPEREN AKAĞAÇ', '1511090', 'Turkey', '5369915033', '151307052@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '151307052', 'Umuttepe, izmit'),
(151, 'BATUĞ CAN AKPINAR', '1511090', 'Turkey', '5369915033', 'batugcann@gmail.com', '58b1216b06850385d9a4eadbedc806c4', 'Kocaeli', 'Techmology', 'CIS', '3', '201307002', 'Umuttepe, izmit'),
(152, 'RECEP AKSAKALOĞLU', '1511090', 'Turkey', '5369915033', 'recep.aksakaloglu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307049', 'Umuttepe, izmit'),
(153, 'SELİM METEHAN AKTAŞ', '1511090', 'Turkey', '5369915033', 'selimmetehanaktas@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307063', 'Umuttepe, izmit'),
(154, 'TUBA PINAR ALATAŞ', '1511090', 'Turkey', '5369915033', 'tubap6769@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307064', 'Umuttepe, izmit'),
(155, 'MEHMET YUSUF ALPAY', '1511090', 'Turkey', '5369915033', 'alpay.mh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307046', 'Umuttepe, izmit'),
(156, 'ZEHRA AN', '1511090', 'Turkey', '5369915033', 'Anzehra1@gmail.con', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307033', 'Umuttepe, izmit'),
(157, 'HAYRI BATUHAN ARAL', '1511090', 'Turkey', '5369915033', '191307033@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307033', 'Umuttepe, izmit'),
(158, 'ÖZER ARMAĞAN', '1511090', 'Turkey', '5369915033', '201307069@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307069', 'Umuttepe, izmit'),
(159, 'ESLEMNUR ARSLAN', '1511090', 'Turkey', '5369915033', '181307054@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307054', 'Umuttepe, izmit'),
(160, 'HALİT MERT ARTUN', '1511090', 'Turkey', '5369915033', 'halitmertartun@outlook.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307005', 'Umuttepe, izmit'),
(161, 'OKAN ATABAŞ', '1511090', 'Turkey', '5369915033', '191307047@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307047', 'Umuttepe, izmit'),
(162, 'ERAY ATLATAN', '1511090', 'Turkey', '5369915033', 'erayatlatan@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307020', 'Umuttepe, izmit'),
(163, 'EMRULLAH SELİM ATLIKAN', '1511090', 'Turkey', '5369915033', '191307069@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307069', 'Umuttepe, izmit'),
(164, 'LATİF ATMACA', '1511090', 'Turkey', '5369915033', '181307053@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307053', 'Umuttepe, izmit'),
(165, 'SELİN ÖZGE ATMACA', '1511090', 'Turkey', '5369915033', 'sozge98@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307075', 'Umuttepe, izmit'),
(166, 'ALİ TUNAHAN AVCU', '1511090', 'Turkey', '5369915033', '211307003@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307003', 'Umuttepe, izmit'),
(167, 'EYÜP AYAZ', '1511090', 'Turkey', '5369915033', '201307024@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307024', 'Umuttepe, izmit'),
(168, 'ENVER CİHANGİR AYDIN', '1511090', 'Turkey', '5369915033', '181307062@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307062', 'Umuttepe, izmit'),
(169, 'ÖMER AYILMAZDIR', '1511090', 'Turkey', '5369915033', '191307014@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307014', 'Umuttepe, izmit'),
(170, 'SEMİH AYSU', '1511090', 'Turkey', '5369915033', '211307085@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307085', 'Umuttepe, izmit'),
(171, 'FATMA NUR AZBAŞ', '1511090', 'Turkey', '5369915033', 'fatmanurazbas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307038', 'Umuttepe, izmit'),
(172, 'MUHAMMED EMİN BABAYİĞİT', '1511090', 'Turkey', '5369915033', '201307005@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307005', 'Umuttepe, izmit'),
(173, 'ALPARSLAN BAKIR', '1511090', 'Turkey', '5369915033', '201307034@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307034', 'Umuttepe, izmit'),
(174, 'ALPEREN KAAN BAL', '1511090', 'Turkey', '5369915033', '181307040@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307040', 'Umuttepe, izmit'),
(175, 'SEDA BALTA', '1511090', 'Turkey', '5369915033', 'seda.balta@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '5205', 'Umuttepe, izmit'),
(176, 'BORA ULAŞ BAYAR', '1511090', 'Turkey', '5369915033', '181307039@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307039', 'Umuttepe, izmit'),
(177, 'MEHMET BERK BAYTÜRK', '1511090', 'Turkey', '5369915033', '201307044@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307044', 'Umuttepe, izmit'),
(178, 'DENİZ BELTAN', '1511090', 'Turkey', '5369915033', '201307016@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307016', 'Umuttepe, izmit'),
(180, 'MUSTAFA BULUT', '1511090', 'Turkey', '5369915033', '201307062@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307062', 'Umuttepe, izmit'),
(181, 'VELİ ÇAKIR', '1511090', 'Turkey', '5369915033', 'velicr57@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307086', 'Umuttepe, izmit'),
(182, 'MEHMET AKİF ÇAY', '1511090', 'Turkey', '5369915033', '181307009@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307009', 'Umuttepe, izmit'),
(183, 'HALİT ÇELENK', '1511090', 'Turkey', '5369915033', '201307056@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307056', 'Umuttepe, izmit'),
(184, 'CANER AY CELEP', '1511090', 'Turkey', '5369915033', '201307036@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307036', 'Umuttepe, izmit'),
(185, 'BORAN ÇELİK', '1511090', 'Turkey', '5369915033', '191307056@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307056', 'Umuttepe, izmit'),
(186, 'MUHAMMED FURKAN ÇELİK', '1511090', 'Turkey', '5369915033', '191307051@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307051', 'Umuttepe, izmit'),
(187, 'BÜŞRA ÇELİKÇİOĞLU', '1511090', 'Turkey', '5369915033', '211307093@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307093', 'Umuttepe, izmit'),
(188, 'BUSE ÇETİN', '1511090', 'Turkey', '5369915033', '201307037@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307037', 'Umuttepe, izmit'),
(189, 'YASİN ÇETİN', '1511090', 'Turkey', '5369915033', '191307055@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307055', 'Umuttepe, izmit'),
(191, 'MUHAMMET FATİH ÇEVİK', '1511090', 'Turkey', '5369915033', '191307057@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307057', 'Umuttepe, izmit'),
(192, 'MELİSA CEYLAN', '1511090', 'Turkey', '5369915033', '191307022@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307022', 'Umuttepe, izmit'),
(193, 'YAMAN CEYLAN', '1511090', 'Turkey', '5369915033', 'ceylannedis59@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307031', 'Umuttepe, izmit'),
(194, 'UMUT COŞKUN', '1511090', 'Turkey', '5369915033', '201307074@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307074', 'Umuttepe, izmit'),
(195, 'YUNUS EMRE DAL', '1511090', 'Turkey', '5369915033', '201307021@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307021', 'Umuttepe, izmit'),
(196, 'ALPCAN İLHAMİ DALAK', '1511090', 'Turkey', '5369915033', 'dalakalpcan@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307053', 'Umuttepe, izmit'),
(197, 'İLBER ÖZGÜR SİNAN DAYI', '1511090', 'Turkey', '5369915033', 'archdewa3@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307079', 'Umuttepe, izmit'),
(198, 'SENA DEMİRBAŞ', '1511090', 'Turkey', '5369915033', '201307018@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307018', 'Umuttepe, izmit'),
(199, 'MUHAMMET YUSUF DİNÇ', '1511090', 'Turkey', '5369915033', 'mykingoysf34@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307041', 'Umuttepe, izmit'),
(200, 'BURAK DİŞCİ', '1511090', 'Turkey', '5369915033', '181307050@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307050', 'Umuttepe, izmit'),
(201, 'SUDE NUR ELMAS', '1511090', 'Turkey', '5369915033', 'sudeelmas13@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307058', 'Umuttepe, izmit'),
(202, 'MUHAMMET ARİF EREN', '1511090', 'Turkey', '5369915033', '201307077@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307077', 'Umuttepe, izmit'),
(203, 'NUR EREN', '1511090', 'Turkey', '5369915033', '191307045@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307045', 'Umuttepe, izmit'),
(204, 'TOLGA KAAN EROĞLU', '1511090', 'Turkey', '5369915033', '181307003@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307003', 'Umuttepe, izmit'),
(205, 'HİLAL DERYA ERYILMAZ', '1511090', 'Turkey', '5369915033', '201307035@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307035', 'Umuttepe, izmit'),
(206, 'EREN EŞSİZ', '1511090', 'Turkey', '5369915033', 'erenefe2001@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307047', 'Umuttepe, izmit'),
(207, 'RAMAZAN GERİŞ', '1511090', 'Turkey', '5369915033', '191307067@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307067', 'Umuttepe, izmit'),
(208, 'MERT GÖKYAR', '1511090', 'Turkey', '5369915033', 'gokyarmert01@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307051', 'Umuttepe, izmit'),
(209, 'ULAŞ GÖNCÜOĞLU', '1511090', 'Turkey', '5369915033', '191307061@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307061', 'Umuttepe, izmit'),
(210, 'HAMZA GÜNAY', '1511090', 'Turkey', '5369915033', '191307079@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307079', 'Umuttepe, izmit'),
(211, 'SELİM GÜNER', '1511090', 'Turkey', '5369915033', 'slmgn3r@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307006', 'Umuttepe, izmit'),
(212, 'NARTI GURMANI', '1511090', 'Turkey', '5369915033', '191307085@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307085', 'Umuttepe, izmit'),
(213, 'ERDEM HACIHASANOĞLU', '1511090', 'Turkey', '5369915033', '201307011@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307011', 'Umuttepe, izmit'),
(214, 'EREN HÜNER', '1511090', 'Turkey', '5369915033', '201307041@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307041', 'Umuttepe, izmit'),
(215, 'ABDULLAH İŞLER', '1511090', 'Turkey', '5369915033', '201307057@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307057', 'Umuttepe, izmit'),
(216, 'YÜKSEL ŞEYDA KABA', '1511090', 'Turkey', '5369915033', '191307027@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307027', 'Umuttepe, izmit'),
(217, 'MERT KALFA', '1511090', 'Turkey', '5369915033', '171307040@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '171307040', 'Umuttepe, izmit'),
(218, 'BATUHAN KANBER', '1511090', 'Turkey', '5369915033', 'batuhankanber28@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307048', 'Umuttepe, izmit'),
(219, 'GÖRKEM KARAKAYA', '1511090', 'Turkey', '5369915033', 'grkarakaya5@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307009', 'Umuttepe, izmit'),
(220, 'ELA KARAOĞLU', '1511090', 'Turkey', '5369915033', '201307067@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307067', 'Umuttepe, izmit'),
(221, 'KAAN KASAP', '1511090', 'Turkey', '5369915033', '191307019@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307019', 'Umuttepe, izmit'),
(222, 'DEMİRHAN KAYA', '1511090', 'Turkey', '5369915033', '181307033@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307033', 'Umuttepe, izmit'),
(223, 'DOĞUKAN KAYA', '1511090', 'Turkey', '5369915033', '191307009@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307009', 'Umuttepe, izmit'),
(224, 'GÜVEN KAZICI', '1511090', 'Turkey', '5369915033', '191307058@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307058', 'Umuttepe, izmit'),
(225, 'ZEYNEP HILAL KİLİMCİ', '1511090', 'Turkey', '5369915033', 'zeynep.kilimci@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '5413', 'Umuttepe, izmit'),
(226, 'LEVENT KIRIMGERİ', '1511090', 'Turkey', '5369915033', '191307017@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307017', 'Umuttepe, izmit'),
(227, 'BATUHAN KOÇASLAN', '1511090', 'Turkey', '5369915033', '211307095@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307095', 'Umuttepe, izmit'),
(228, 'İSMAİL KOCATÜRK', '1511090', 'Turkey', '5369915033', '201307045@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307045', 'Umuttepe, izmit'),
(229, 'MUHAMMED EMİN KORAL', '1511090', 'Turkey', '5369915033', '201307060@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307060', 'Umuttepe, izmit'),
(230, 'MERVE MİRAÇ KÖSE', '1511090', 'Turkey', '5369915033', '181307073@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307073', 'Umuttepe, izmit'),
(231, 'ERAY KÜÇÜK', '1511090', 'Turkey', '5369915033', '191307054@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307054', 'Umuttepe, izmit'),
(232, 'ZAFER KÜÇÜKYILDIZ', '1511090', 'Turkey', '5369915033', '201307014@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307014', 'Umuttepe, izmit'),
(233, 'ALPEREN KUZHAN', '1511090', 'Turkey', '5369915033', '191307031@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307031', 'Umuttepe, izmit'),
(234, 'ÖMER MERCAN', '1511090', 'Turkey', '5369915033', 'omermercan41@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307022', 'Umuttepe, izmit'),
(235, 'EBRU MERD', '1511090', 'Turkey', '5369915033', '201307017@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307017', 'Umuttepe, izmit'),
(236, 'SÜMEYYE MURATOĞULLARI', '1511090', 'Turkey', '5369915033', '211307008@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307008', 'Umuttepe, izmit'),
(237, 'MELİHA MUTLU', '1511090', 'Turkey', '5369915033', 'meliha-mutlu@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307029', 'Umuttepe, izmit'),
(238, 'BERKAN NALBANT', '1511090', 'Turkey', '5369915033', 'bnalbant28@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307023', 'Umuttepe, izmit'),
(239, 'BERRA OĞUZ', '1511090', 'Turkey', '5369915033', 'berraoguz@outlook.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307028', 'Umuttepe, izmit'),
(240, 'İSA OĞUZ', '1511090', 'Turkey', '5369915033', '201307026@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307026', 'Umuttepe, izmit'),
(241, 'BİNNUR ÖZCAN', '1511090', 'Turkey', '5369915033', '191307059@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307059', 'Umuttepe, izmit'),
(242, 'EREN ÖZCAN', '1511090', 'Turkey', '5369915033', '201307070@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307070', 'Umuttepe, izmit'),
(243, 'ENES ÖZEL', '1511090', 'Turkey', '5369915033', 'enes_zel@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307008', 'Umuttepe, izmit'),
(244, 'CAN BARTU ÖZKAN', '1511090', 'Turkey', '5369915033', '191307018@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307018', 'Umuttepe, izmit'),
(245, 'YILMAZ ÖZKAN', '1511090', 'Turkey', '5369915033', '211307094@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '211307094', 'Umuttepe, izmit'),
(246, 'OĞUZHAN ÖZTÜRK', '1511090', 'Turkey', '5369915033', '201307007@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307007', 'Umuttepe, izmit'),
(247, 'MEHMET EMRE POLAT', '1511090', 'Turkey', '5369915033', '191307024@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307024', 'Umuttepe, izmit'),
(248, 'NURDAN SAFİ', '1511090', 'Turkey', '5369915033', '171307038@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '171307038', 'Umuttepe, izmit'),
(249, 'GÖZDE ŞAHİN', '1511090', 'Turkey', '5369915033', 'gozde.sahin14@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307039', 'Umuttepe, izmit'),
(250, 'MELİKE NUR ŞAHİN', '1511090', 'Turkey', '5369915033', '201307015@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307015', 'Umuttepe, izmit'),
(251, 'EREN ŞAHYILMAZ', '1511090', 'Turkey', '5369915033', '201307003@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307003', 'Umuttepe, izmit'),
(252, 'ZEYNEP SARI', '1511090', 'Turkey', '5369915033', 'zeynep.sari@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '5539', 'Umuttepe, izmit'),
(253, 'RECEP BATUHAN SAYAR', '1511090', 'Turkey', '5369915033', '191307076@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307076', 'Umuttepe, izmit'),
(254, 'OSMAN MERT SEVİL', '1511090', 'Turkey', '5369915033', 'osman.sevil003@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307046', 'Umuttepe, izmit'),
(255, 'ÖMER FARUK SEVİNÇ', '1511090', 'Turkey', '5369915033', '191307007@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307007', 'Umuttepe, izmit'),
(256, 'MOHAMMAD NAZIR SHARIFI', '1511090', 'Turkey', '5369915033', '191307094@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307094', 'Umuttepe, izmit'),
(257, 'HARUN ŞİMŞEK', '1511090', 'Turkey', '5369915033', '201307042@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307042', 'Umuttepe, izmit'),
(258, 'SERDAR SOLAK', '1511090', 'Turkey', '5369915033', 'serdars@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '2419', 'Umuttepe, izmit'),
(259, 'SUDE TAN', '1511090', 'Turkey', '5369915033', '201307078@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307078', 'Umuttepe, izmit'),
(260, 'YİĞİT TAŞKIN', '1511090', 'Turkey', '5369915033', 'taskinyigit84@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307031', 'Umuttepe, izmit'),
(261, 'ZEHRA BETÜL TAŞKIN', '1511090', 'Turkey', '5369915033', '201307054@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307054', 'Umuttepe, izmit'),
(262, 'DİLARA TAŞKIRAN', '1511090', 'Turkey', '5369915033', '201307073@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307073', 'Umuttepe, izmit'),
(263, 'CAN ATA TEKİRDAĞLI', '1511090', 'Turkey', '5369915033', 'canata.tekirdagli@darussafaka.net', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307032', 'Umuttepe, izmit'),
(264, 'ALEYNA TOMRUK', '1511090', 'Turkey', '5369915033', 'aleyna.tomruk2001@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307019', 'Umuttepe, izmit'),
(265, 'EREN TORUN', '1511090', 'Turkey', '5369915033', '201307008@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307008', 'Umuttepe, izmit'),
(266, 'AHMET ERTUĞRUL TUĞ', '1511090', 'Turkey', '5369915033', '201307001@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307001', 'Umuttepe, izmit'),
(267, 'KEMAL TURAK', '1511090', 'Turkey', '5369915033', '191307074@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307074', 'Umuttepe, izmit'),
(268, 'SAMET CAN TURAN', '1511090', 'Turkey', '5369915033', '171307027@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '171307027', 'Umuttepe, izmit'),
(269, 'AHMET MELİH TÜRKMEN', '1511090', 'Turkey', '5369915033', '201307013@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307013', 'Umuttepe, izmit'),
(270, 'ZEYNEL UĞURLU', '1511090', 'Turkey', '5369915033', '191307030@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307030', 'Umuttepe, izmit'),
(271, 'SEHER MELİKE ÜNALDI', '1511090', 'Turkey', '5369915033', 'sehermelikeunaldi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307065', 'Umuttepe, izmit'),
(272, 'ATAYAĞIZ USLU', '1511090', 'Turkey', '5369915033', '191307062@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307062', 'Umuttepe, izmit'),
(273, 'DZENİT VİLDİÇ', '1511090', 'Turkey', '5369915033', 'dzenit6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307095', 'Umuttepe, izmit'),
(274, 'YAKUP YAŞA', '1511090', 'Turkey', '5369915033', '191307028@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307028', 'Umuttepe, izmit'),
(275, 'TAHA EMRE YAVUZ', '1511090', 'Turkey', '5369915033', '191307020@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307020', 'Umuttepe, izmit'),
(276, 'EDANUR YAZICI', '1511090', 'Turkey', '5369915033', '201307061@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307061', 'Umuttepe, izmit'),
(277, 'MAHMUT ONUR YENİHAL', '1511090', 'Turkey', '5369915033', '161307024@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '161307024', 'Umuttepe, izmit'),
(278, 'Gizem YILDIZ', '1511090', 'Turkey', '5369915033', 'gizem.yildiz@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '5780', 'Umuttepe, izmit'),
(279, 'TUNAHAN YILDIZ', '1511090', 'Turkey', '5369915033', '181307032@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '181307032', 'Umuttepe, izmit'),
(280, 'ZEYNEP SERVA YILDIZ', '1511090', 'Turkey', '5369915033', '201307052@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307052', 'Umuttepe, izmit'),
(281, 'ALİ EMRE YILMAZ', '1511090', 'Turkey', '5369915033', '151307046@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '151307046', 'Umuttepe, izmit'),
(282, 'FARUK ERDEM YILMAZ', '1511090', 'Turkey', '5369915033', '201307030@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307030', 'Umuttepe, izmit'),
(283, 'NAZLIHAN YILMAZ', '1511090', 'Turkey', '5369915033', '201307043@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307043', 'Umuttepe, izmit'),
(284, 'ÖMER FARUK YILMAZ', '1511090', 'Turkey', '5369915033', 'faruk-4153@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307048', 'Umuttepe, izmit'),
(285, 'MEHMET ARDA YÜKSEL', '1511090', 'Turkey', '5369915033', '191307001@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '191307001', 'Umuttepe, izmit'),
(286, 'MUHAMMED YURGA', '1511090', 'Turkey', '5369915033', '201307027@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '201307027', 'Umuttepe, izmit'),
(287, 'Enes Yurtsever', '1511090', 'Turkey', '5369915033', 'enes.yurtsever@kocaeli.edu.tr', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Techmology', 'CIS', '3', '5756', 'Umuttepe, izmit'),
(295, 'Aslı Bozkurt', '15110902380', 'Türk', '+90369915033', '201307025@kocaeli.edu.tr', '2ea377e1889bc21f4216f259b48ded6d', 'Kocaeli', 'Tekonolji', 'Bilişim Sistemleri Mühendisliği', '3', '201307025', 'istanbul'),
(297, 'Mehmet Ali', '99330352132', 'Türk', '+90369915033', 'mehmet550@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kocaeli', 'Tekonolji', 'Bilişim Sistemleri Mühendisliği', '3', '2001', 'izmit');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ogretmen_id` int(11) NOT NULL,
  `ogretmen_ad_soyad` varchar(128) NOT NULL,
  `ogretmen_tc` varchar(20) NOT NULL,
  `ogretmen_mail` varchar(128) NOT NULL,
  `ogretmen_tel` varchar(20) NOT NULL,
  `ogretmen_okul_no` varchar(20) NOT NULL,
  `ogretmen_password` varchar(128) NOT NULL,
  `ogretmen_fakulte_adi` varchar(128) NOT NULL,
  `ogretmen_bolum_adi` varchar(128) NOT NULL,
  `role` enum('ogretmen','komisyon') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ogretmen_id`, `ogretmen_ad_soyad`, `ogretmen_tc`, `ogretmen_mail`, `ogretmen_tel`, `ogretmen_okul_no`, `ogretmen_password`, `ogretmen_fakulte_adi`, `ogretmen_bolum_adi`, `role`) VALUES
(10, 'Doç. Dr. Serdar SOLAK', '15110902380', 'serdars@kocaeli.edu.tr', '+90 (262) 303 22 69', '200107001', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(11, 'Doç. Dr. Süleyman Eken', '15110902380', 'suleyman.eken@kocaeli.edu.tr', '+90 (262) 303 22 32', '200107002', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(12, 'Doç. Dr. M. Hikmet Bilgehan UÇAR', '15110902380', 'mhbucar@kocaeli.edu.tr', '+90 (262) 303 22 61', '200107003', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(13, 'Dr. Öğr. Üyesi Adnan SONDAŞ', '15110902380', 'asondas@kocaeli.edu.tr', ' +90 (262) 303 22 58', '200107004', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(14, 'Dr. Öğr. Üyesi Zeynep Hilal Kilimci', '15110902380', 'zeynep.kilimci@kocaeli.edu.tr', '+90 (262) 303 22 42', '200107005', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'komisyon'),
(15, 'Dr. Öğr. Üyesi Önder Yakut', '15110902380', 'onder.yakut@kocaeli.edu.tr', '+90 (262) 303 22 98', '200107006', '58b1216b06850385d9a4eadbedc806c4', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(16, 'Öğr. Gör. Alper Metin', '15110902380', 'alperm@kocaeli.edu.tr', '  +90 (262) 303 22 3', '200107007', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(17, 'Öğr. Gör. Yavuz Selim Fatihoğlu', '15110902380', 'yselim@kocaeli.edu.tr', '+90 (262) 303 22 95', '200107008', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'komisyon'),
(18, 'Arş. Gör. Seda BALTA KAÇ', '15110902380', 'seda.balta@kocaeli.edu.tr', '+90 (262) 303 22 60', '200107009', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'komisyon'),
(19, 'Arş. Gör. Zeynep SARI', '15110902380', 'zeynep.sari@kocaeli.edu.tr', '+90 (262) 303 22 51', '200107010', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'komisyon'),
(20, 'Arş. Gör. M. M. Enes YURTSEVER', '15110902380', 'enes.yurtsever@kocaeli.edu.tr', '+90 (262) 303 23 11', '200107011', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(21, 'Arş. Gör. Gizem YILDIZ', '15110902380', 'gizem.yildiz@kocaeli.edu.tr', '+90 (262) 303 22 49', '200107012', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(22, 'Prof. Dr. Hikmet Hakan GÜREL', '15110902380', 'hhakan.gurel@kocaeli.edu.tr', '+90 (262) 303 22 15', '200107013', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen'),
(23, 'Doç. Dr. Halil YİĞİT', '15110902380', 'halilyigit@kocaeli.edu.tr', '+90 (262) 303 22 59', '200107014', '827ccb0eea8a706c4c34a16891f84e7b', 'Teknoloji', 'Bilişim Sistemleri Mühendisliği', 'ogretmen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `ime_basvuru`
--
ALTER TABLE `ime_basvuru`
  ADD PRIMARY KEY (`basvuru_id`);

--
-- Indexes for table `ime_belgeleri`
--
ALTER TABLE `ime_belgeleri`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `ime_kabul_belgesi`
--
ALTER TABLE `ime_kabul_belgesi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ime_ogrencileri`
--
ALTER TABLE `ime_ogrencileri`
  ADD PRIMARY KEY (`donem_id`);

--
-- Indexes for table `ime_takibi`
--
ALTER TABLE `ime_takibi`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `pdf_file`
--
ALTER TABLE `pdf_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staj_basvuru`
--
ALTER TABLE `staj_basvuru`
  ADD PRIMARY KEY (`basvuru_id`);

--
-- Indexes for table `staj_belgeleri`
--
ALTER TABLE `staj_belgeleri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staj_kabul_belgesi`
--
ALTER TABLE `staj_kabul_belgesi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staj_raporu`
--
ALTER TABLE `staj_raporu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staj_takibi`
--
ALTER TABLE `staj_takibi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`kullanci_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ogretmen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ime_basvuru`
--
ALTER TABLE `ime_basvuru`
  MODIFY `basvuru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ime_belgeleri`
--
ALTER TABLE `ime_belgeleri`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ime_kabul_belgesi`
--
ALTER TABLE `ime_kabul_belgesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ime_ogrencileri`
--
ALTER TABLE `ime_ogrencileri`
  MODIFY `donem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ime_takibi`
--
ALTER TABLE `ime_takibi`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pdf_file`
--
ALTER TABLE `pdf_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staj_basvuru`
--
ALTER TABLE `staj_basvuru`
  MODIFY `basvuru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `staj_belgeleri`
--
ALTER TABLE `staj_belgeleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staj_kabul_belgesi`
--
ALTER TABLE `staj_kabul_belgesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staj_raporu`
--
ALTER TABLE `staj_raporu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staj_takibi`
--
ALTER TABLE `staj_takibi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `kullanci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ogretmen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
