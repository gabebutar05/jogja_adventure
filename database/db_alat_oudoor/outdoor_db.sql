-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 Feb 2023 pada 16.14
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outdoor_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(150) DEFAULT NULL,
  `id_merek` int(11) DEFAULT NULL,
  `nopol` varchar(20) NOT NULL,
  `deskripsi` longtext,
  `harga` int(11) DEFAULT NULL,
  `bb` varchar(100) DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `seating` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_merek`, `nopol`, `deskripsi`, `harga`, `bb`, `tahun`, `seating`, `image1`, `image2`, `image3`, `image4`, `image5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(10, 'Sepatu', 17, '', 'EIGER X-TYRANNO WS SHOES Ukuran 42', 45000, 'Tersedia', 0, 10, '5 ukuran 43.jpg', '2 ukuran 41.jpg', '3 ukuran 42.jpg', 'Honda-Freed-front.jpg', 'Honda-Freed-Interior.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-06-07 18:09:49', '2023-02-01 11:24:53'),
(11, 'Kompor', 18, '', 'Kompor Camping Portable Mini Windproof / Anti Angin', 10000, 'Tersedia', 0, 8, '1.jpg', '1.jpg', '1.jpg', 'Honda-CRV-2011-Rear.jpg', 'Honda-CRV-2011-Front.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-06-07 18:27:37', '2023-02-01 11:25:00'),
(12, 'Carrier', 17, '', 'Carrier Kapasitas 80 L', 35000, 'Tersedia', 0, 10, 'Tas carrier eiger 80L.jfif', 'Tas carrier eiger 80L.jfif', 'Tas carrier eiger 80L.jfif', 'Merci-Cclass-service3.jpg', 'Merci-Cclass-service1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-06-07 18:32:21', '2023-02-01 11:25:08'),
(13, 'Tenda', 19, '', 'Tenda Camping Dome Kapasitas 4 - 5 Orang  Anak Dan Dewasa', 50000, 'Tersedia', 0, 10, '2 tenda kapasitas 4.jpg', '2 tenda kapasitas 4.jpg', '2 tenda kapasitas 4.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-29 14:08:07', '2023-02-01 11:25:14'),
(14, 'SleppingBag', 17, '', 'Sleeping Bag Polar Bulu Summit Series - Kantong Tidur - Sleping Bag', 20000, 'Tersedia', 0, 20, '5.jpg', '5.jpg', '5.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-29 14:10:09', '2023-02-01 11:25:29'),
(15, 'Jaket', 19, '', 'Jaket Gunung Waterproof ukuran L', 35000, 'Tidak Tersedia', 0, 10, 'j1.jpg', 'j1.jpg', 'j1.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-29 14:12:46', '2023-02-02 13:27:18'),
(23, 'Headlamp', 21, '', 'Headlamp Flashlight Waterproof LED 3 Modes COB Headlight', 20000, 'Tersedia', 0, 5, 'headlamp1.jpg', 'headlamp1.jpg', 'headlamp1.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-02-01 14:49:06', '2023-02-01 14:54:19'),
(24, 'Matras', 18, '', 'MATRAS CAMPING 200 x 80 Cm', 10000, 'Tersedia', 0, 20, '4.jfif', '4.jfif', '4.jfif', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-02-01 14:56:31', NULL),
(25, 'Kompor', 18, '', 'Kompor Portable Mini Stove - Kompor Camping Gas', 10000, 'Tersedia', 0, 10, 'k2.jpg', 'k2.jpg', 'k2.jpg', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-02-01 15:40:14', '2023-02-01 15:42:19'),
(26, 'Cookingset', 19, '', 'Cooking Set Camping Outdoor DS-308 - Black', 15000, 'Tersedia', 0, 10, 'c2.jfif', 'c2.jfif', 'c2.jfif', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-02-01 15:45:44', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `jumlah_boking` int(11) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_barang`, `tgl_mulai`, `tgl_selesai`, `durasi`, `driver`, `status`, `email`, `pickup`, `jumlah_boking`, `tgl_booking`, `bukti_bayar`) VALUES
('TRX00000', 11, '2021-06-17', '2021-06-18', 2, 0, 'Menunggu Pembayaran', 'coba@gmail.com', 'Ambil Sendiri', 0, '2021-06-16', ''),
('TRX00001', 8, '2019-05-26', '2019-05-26', 1, 200000, 'Sudah Dibayar', 'test@gmail.com', 'Pickup Sesuai Alamat', 0, '2019-05-25', '2505201920111034788684_10209405168685237_8233778212845387776_n.JPEG'),
('TRX00003', 10, '2023-01-31', '2023-02-01', 2, 0, 'Selesai', 'ramadi@mail.com', 'Ambil Sendiri', 0, '2023-01-29', '29012023010055pengaduan.PNG'),
('TRX00004', 11, '2023-01-30', '2023-01-31', 2, 0, 'Selesai', 'nurul@gmail.com', 'Ambil Sendiri', 0, '2023-01-29', '29012023011050pengaduan.PNG'),
('TRX00005', 10, '2023-02-02', '2023-02-03', 2, 0, 'Sudah Dibayar', 'adi@gmail.com', 'Pickup Sesuai Alamat', 0, '2023-01-29', '29012023163552pengaduan.PNG'),
('TRX00006', 12, '2023-01-30', '2023-01-31', 2, 0, 'Menunggu Pembayaran', 'adi@gmail.com', 'Pickup Sesuai Alamat', 0, '2023-01-29', ''),
('TRX00007', 10, '2023-02-04', '2023-02-05', 2, 0, 'Menunggu Pembayaran', 'nurul@gmail.com', 'Ambil Sendiri', 0, '2023-01-30', ''),
('TRX00008', 12, '2023-02-01', '2023-02-02', 2, 0, 'Sudah Dibayar', 'nurul1@gmail.com', 'Ambil Sendiri', 0, '2023-01-31', '31012023113554pengaduan.PNG'),
('TRX00009', 12, '2023-02-03', '2023-02-04', 2, 0, 'Menunggu Konfirmasi', 'ramadi@mail.com', 'Ambil Sendiri', 0, '2023-02-02', '02022023011914pengaduan.PNG'),
('TRX00010', 13, '2023-02-04', '2023-02-06', 3, 0, 'Menunggu Pembayaran', 'ramadi@mail.com', 'Ambil Sendiri', 0, '2023-02-02', ''),
('TRX00011', 24, '2023-02-03', '2023-02-05', 3, 0, 'Menunggu Pembayaran', 'ramadi@mail.com', 'Ambil Sendiri', 0, '2023-02-03', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_booking`
--

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cek_booking`
--

INSERT INTO `cek_booking` (`kode_booking`, `id_barang`, `tgl_booking`, `status`) VALUES
('TRX00001', 8, '2019-05-26', 'Sudah Dibayar'),
('TRX00002', 9, '2019-05-26', 'Menunggu Pembayaran'),
('TRX00002', 9, '2019-05-27', 'Menunggu Pembayaran'),
('TRX00000', 11, '2021-06-17', 'Menunggu Pembayaran'),
('TRX00000', 11, '2021-06-18', 'Menunggu Pembayaran'),
('TRX00003', 10, '2023-01-31', 'Selesai'),
('TRX00003', 10, '2023-02-01', 'Selesai'),
('TRX00004', 11, '2023-01-30', 'Selesai'),
('TRX00004', 11, '2023-01-31', 'Selesai'),
('TRX00005', 10, '2023-02-02', 'Sudah Dibayar'),
('TRX00005', 10, '2023-02-03', 'Sudah Dibayar'),
('TRX00006', 12, '2023-01-30', 'Menunggu Pembayaran'),
('TRX00006', 12, '2023-01-31', 'Menunggu Pembayaran'),
('TRX00007', 10, '2023-02-04', 'Menunggu Pembayaran'),
('TRX00007', 10, '2023-02-05', 'Menunggu Pembayaran'),
('TRX00008', 12, '2023-02-01', 'Sudah Dibayar'),
('TRX00008', 12, '2023-02-02', 'Sudah Dibayar'),
('TRX00009', 12, '2023-02-03', 'Menunggu Pembayaran'),
('TRX00009', 12, '2023-02-04', 'Menunggu Pembayaran'),
('TRX00010', 13, '2023-02-04', 'Menunggu Pembayaran'),
('TRX00010', 13, '2023-02-05', 'Menunggu Pembayaran'),
('TRX00010', 13, '2023-02-06', 'Menunggu Pembayaran'),
('TRX00011', 24, '2023-02-03', 'Menunggu Pembayaran'),
('TRX00011', 24, '2023-02-04', 'Menunggu Pembayaran'),
('TRX00011', 24, '2023-02-05', 'Menunggu Pembayaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'kjk', 'jlkl@gmail.com', '98989898', 'kjlkjkljklj', '2018-03-06 14:01:39', 1),
(3, '<div margin=\"0\"; padding=\"0\"; background=\"black\"; color=\"white\";>test</div>', 'ajdean111@gmail.com', '4346778', 'csdfr', '2020-03-06 04:18:08', 1),
(4, 'adi', 'adi@gmail.com', '123456789', 'asfsBHGZjhbdf', '2023-01-29 09:42:35', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Jogja Adventure, \r\nYogyakarta\r\n', 'rentalalatoutdoor@gmail.com', '08585233222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `CreationDate`, `UpdationDate`) VALUES
(17, 'Eiger', '2023-01-28 14:58:31', NULL),
(18, 'Arei', '2023-01-28 16:55:44', '2023-01-29 14:13:02'),
(19, 'Consina', '2023-01-28 16:55:59', '2023-01-29 14:05:03'),
(20, 'Deuter', '2023-01-29 14:05:22', NULL),
(21, 'Petzl', '2023-02-01 14:45:36', NULL),
(22, 'Osprey', '2023-02-01 14:46:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																							<h2><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left;\"><span lang=\"EN-US\" style=\"font-size: small;\">Peraturan\r\nDan tata tertib penyewaan di Jogja Adventure<br></span></p><div style=\"text-indent: 0px;\"><span style=\"font-size: small;\"><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">1. Pada saat mengambil barang yang\r\ndisewa harus meninggalkan KTP / SIM / STNK atau Identitas lainnya sebagai\r\njaminan.<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">Untuk pengembalian yang penting\r\nkembali pada hari itu atau jam 00.00 , setelah jam tsb diitung 1 hari lagi.<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">2. Jika terjadi kerusakan ringan,\r\nmaka biaya perbaikan ditanggung oleh pemesan / penyewa</span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">Lubang kecil kena rokok / benda\r\nlain, kami denda 50.000,- / lubang pada parasit / Tenda. Lubang kecil karena\r\nrokok / benda lain untuk Alat matras kami denda 10.000,- / lubang.<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">3. Apabila terjadi kerusakan berat\r\n/ hilang yang dilakukan oleh penyewa maka penyewa harus menganti dengan yang\r\nsama, dan tenda yg rusak itu menjadi milik penyewa<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">4. Uang yang sudah diterima tdk\r\ndapat diminta kembali oleh penyewa / pemesan<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">5. Penyewa bersedia mematuhi\r\nperaturan Jogja.adv yang telah disepakati bersama<br><div style=\"text-indent: -24px;\"><span style=\"color: inherit; font-family: inherit; text-indent: 0px;\">Harga part\r\nkerusakan / hilang</span></div></span></span></div><p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Pasak tenda Rp.5.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Frame tenda\r\nRp.25.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Matras sobek /\r\nHilang Rp.35.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Sb sobek /\r\nhilang Rp.100.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Carrier sobek\r\npada jahitan 10.000<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Carrier sobek\r\nparah karena benda tajam mengganti carrier yang sama<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Kompor rusak\r\n30.000<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Tenda sobek\r\nsedikit +-10 cm 50.000<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Tenda sobek\r\nbesar = Mengganti tenda yg sama <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\"><span style=\"font-size: small;\">Kompor rusak\r\n60.000</span><o:p></o:p></span></p></h2>																																																							'),
(5, 'Rekening', 'rekening', '																																	123456789 Bank BRI a/n IRFAN MAULANA FARDI											'),
(0, 'Driver', 'driver', '0'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'Tentang Kami', 'aboutus', '																																	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Kami adalah perusahaan yang bergerak di bidang penyewaan Alat Outdoor.</span>																						'),
(11, 'FAQs', 'faqs', '																																												<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara menyewa alat outdoor di&nbsp; Jogja Adventure?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai user melalui menu yang telah disediakan.</span></div>																																												');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `kk` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`, `ktp`, `kk`, `RegDate`, `UpdationDate`) VALUES
(8, 'Coba', 'coba@gmail.com', 'c3ec0f7b054e729c5a716c8125839829', '02092039', 'bandung', '16062021161303pngtree-connection-technologies-background-tech-visual-for-energy-template-image_438844.jpg', '16062021161303ppdb online.png', '2021-06-16 14:13:03', NULL),
(9, 'Ramadi', 'ramadi@mail.com', '35328d2635c605621e3b381f2c259f40', '08231400', 'yogyakarta', '280120231728243.jpg', '280120231728241.jpg', '2023-01-28 16:28:24', NULL),
(10, 'Nurul', 'nurul@gmail.com', '6968a2c57c3a4fee8fadc79a80355e4d', '082323', 'yogyakarta', '280120231907561.jpg', '280120231907562.jpg', '2023-01-28 18:07:56', NULL),
(11, 'adi', 'adi@gmail.com', 'a152e841783914146e4bcd4f39100686', '1234567890', 'yogyakarta', '29012023103230download.jfif', '29012023103230pengaduan.PNG', '2023-01-29 09:32:30', NULL),
(12, 'Nurul', 'nurul1@gmail.com', 'a152e841783914146e4bcd4f39100686', '2345678', 'yogyakarta', '31012023053239pengaduan.PNG', '31012023053239pengaduan.PNG', '2023-01-31 04:32:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
