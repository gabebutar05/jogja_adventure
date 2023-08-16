/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - outdoor_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`UserName`,`Password`,`updationDate`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','2018-03-29 06:34:07');

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id_barang` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(150) DEFAULT NULL,
  `id_merek` int DEFAULT NULL,
  `nopol` varchar(20) NOT NULL,
  `deskripsi` longtext,
  `harga` int DEFAULT NULL,
  `bb` varchar(100) DEFAULT NULL,
  `tahun` int DEFAULT NULL,
  `seating` int DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `AirConditioner` int DEFAULT NULL,
  `PowerDoorLocks` int DEFAULT NULL,
  `AntiLockBrakingSystem` int DEFAULT NULL,
  `BrakeAssist` int DEFAULT NULL,
  `PowerSteering` int DEFAULT NULL,
  `DriverAirbag` int DEFAULT NULL,
  `PassengerAirbag` int DEFAULT NULL,
  `PowerWindows` int DEFAULT NULL,
  `CDPlayer` int DEFAULT NULL,
  `CentralLocking` int DEFAULT NULL,
  `CrashSensor` int DEFAULT NULL,
  `LeatherSeats` int DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (10,'Sepatu',17,'','EIGER X-TYRANNO WS SHOES Ukuran 42',45000,'Tersedia',0,7,'5 ukuran 43.jpg','2 ukuran 41.jpg','3 ukuran 42.jpg','Honda-Freed-front.jpg','Honda-Freed-Interior.jpg',0,0,0,0,0,0,0,0,0,0,0,0,'2019-06-08 01:09:49','2023-02-06 12:54:34');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (11,'Kompor',18,'','Kompor Camping Portable Mini Windproof / Anti Angin',10000,'Tersedia',0,8,'1.jpg','1.jpg','1.jpg','Honda-CRV-2011-Rear.jpg','Honda-CRV-2011-Front.jpg',0,0,0,0,0,0,0,0,0,0,0,0,'2019-06-08 01:27:37','2023-02-01 18:25:00');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (12,'Carrier',17,'','Carrier Kapasitas 80 L',35000,'Tersedia',0,10,'Tas carrier eiger 80L.jfif','Tas carrier eiger 80L.jfif','Tas carrier eiger 80L.jfif','Merci-Cclass-service3.jpg','Merci-Cclass-service1.jpg',0,0,0,0,0,0,0,0,0,0,0,0,'2019-06-08 01:32:21','2023-02-01 18:25:08');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (13,'Tenda',19,'','Tenda Camping Dome Kapasitas 4 - 5 Orang  Anak Dan Dewasa',50000,'Tersedia',0,10,'2 tenda kapasitas 4.jpg','2 tenda kapasitas 4.jpg','2 tenda kapasitas 4.jpg','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-01-29 21:08:07','2023-02-01 18:25:14');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (14,'SleppingBag',17,'','Sleeping Bag Polar Bulu Summit Series - Kantong Tidur - Sleping Bag',20000,'Tersedia',0,20,'5.jpg','5.jpg','5.jpg','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-01-29 21:10:09','2023-02-01 18:25:29');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (15,'Jaket',19,'','Jaket Gunung Waterproof ukuran L',35000,'Tidak Tersedia',0,10,'j1.jpg','j1.jpg','j1.jpg','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-01-29 21:12:46','2023-02-02 20:27:18');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (23,'Headlamp',21,'','Headlamp Flashlight Waterproof LED 3 Modes COB Headlight',20000,'Tersedia',0,5,'headlamp1.jpg','headlamp1.jpg','headlamp1.jpg','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-02-01 21:49:06','2023-02-01 21:54:19');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (24,'Matras',18,'','MATRAS CAMPING 200 x 80 Cm',10000,'Tersedia',0,20,'4.jfif','4.jfif','4.jfif','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-02-01 21:56:31',NULL);
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (25,'Kompor',18,'','Kompor Portable Mini Stove - Kompor Camping Gas',10000,'Tersedia',0,10,'k2.jpg','k2.jpg','k2.jpg','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-02-01 22:40:14','2023-02-01 22:42:19');
insert  into `barang`(`id_barang`,`nama_barang`,`id_merek`,`nopol`,`deskripsi`,`harga`,`bb`,`tahun`,`seating`,`image1`,`image2`,`image3`,`image4`,`image5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (26,'Cookingset',19,'','Cooking Set Camping Outdoor DS-308 - Black',15000,'Tersedia',0,10,'c2.jfif','c2.jfif','c2.jfif','','',0,0,0,0,0,0,0,0,0,0,0,0,'2023-02-01 22:45:44',NULL);

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_barang` int NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int NOT NULL,
  `driver` int NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `jumlah_boking` int NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`kode_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00000',11,'2021-06-17','2021-06-18',2,0,'Sudah Dibayar','coba@gmail.com','Ambil Sendiri',1,'2021-06-16','');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00001',8,'2019-05-26','2019-05-26',1,200000,'Sudah Dibayar','test@gmail.com','Pickup Sesuai Alamat',1,'2019-05-25','2505201920111034788684_10209405168685237_8233778212845387776_n.JPEG');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00003',10,'2023-01-31','2023-02-01',2,0,'Selesai','ramadi@mail.com','Ambil Sendiri',1,'2023-01-29','29012023010055pengaduan.PNG');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00004',11,'2023-01-30','2023-01-31',2,0,'Selesai','nurul@gmail.com','Ambil Sendiri',1,'2023-01-29','29012023011050pengaduan.PNG');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00005',10,'2023-02-02','2023-02-03',2,0,'Sudah Dibayar','adi@gmail.com','Pickup Sesuai Alamat',1,'2023-01-29','29012023163552pengaduan.PNG');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00006',12,'2023-01-30','2023-01-31',2,0,'Sudah Dibayar','adi@gmail.com','Pickup Sesuai Alamat',1,'2023-01-29','');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00007',10,'2023-02-04','2023-02-05',2,0,'Sudah Dibayar','nurul@gmail.com','Ambil Sendiri',1,'2023-01-30','');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00008',12,'2023-02-01','2023-02-02',2,0,'Selesai','nurul1@gmail.com','Ambil Sendiri',1,'2023-01-31','31012023113554pengaduan.PNG');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00009',12,'2023-02-03','2023-02-04',2,0,'Menunggu Konfirmasi','ramadi@mail.com','Ambil Sendiri',1,'2023-02-02','02022023011914pengaduan.PNG');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00010',13,'2023-02-04','2023-02-06',3,0,'Sudah Dibayar','ramadi@mail.com','Ambil Sendiri',1,'2023-02-02','');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00011',24,'2023-02-03','2023-02-05',3,0,'Sudah Dibayar','ramadi@mail.com','Ambil Sendiri',1,'2023-02-03','');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00012',10,'2023-02-07','2023-02-09',3,0,'Sudah Dibayar','adi@gmail.com','Ambil Sendiri',2,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00013',10,'2023-02-07','2023-02-09',3,0,'Sudah Dibayar','adi@gmail.com','Ambil Sendiri',2,'2023-02-06','06022023121923kisspng-university-of-amikom-yogyakarta-gadjah-mada-univer-5af860d62af0a4.3004751215262271581759.png');
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00014',10,'2023-02-08','2023-02-09',2,0,'Sudah Dibayar','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00015',10,'2023-02-08','2023-02-09',2,0,'Selesai','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00016',10,'2023-02-07','2023-02-08',2,0,'Selesai','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00017',10,'2023-02-07','2023-02-08',2,0,'Selesai','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00018',10,'2023-02-07','2023-02-08',2,0,'Selesai','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00019',10,'2023-02-07','2023-02-08',2,0,'Selesai','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);
insert  into `booking`(`kode_booking`,`id_barang`,`tgl_mulai`,`tgl_selesai`,`durasi`,`driver`,`status`,`email`,`pickup`,`jumlah_boking`,`tgl_booking`,`bukti_bayar`) values ('TRX00020',10,'2023-02-07','2023-02-08',2,0,'Selesai','adi@gmail.com','Ambil Sendiri',1,'2023-02-06',NULL);

/*Table structure for table `cek_booking` */

DROP TABLE IF EXISTS `cek_booking`;

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_barang` int NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cek_booking` */

insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00001',8,'2019-05-26','Sudah Dibayar');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00002',9,'2019-05-26','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00002',9,'2019-05-27','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00000',11,'2021-06-17','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00000',11,'2021-06-18','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00003',10,'2023-01-31','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00003',10,'2023-02-01','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00004',11,'2023-01-30','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00004',11,'2023-01-31','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00005',10,'2023-02-02','Sudah Dibayar');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00005',10,'2023-02-03','Sudah Dibayar');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00006',12,'2023-01-30','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00006',12,'2023-01-31','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00007',10,'2023-02-04','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00007',10,'2023-02-05','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00008',12,'2023-02-01','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00008',12,'2023-02-02','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00009',12,'2023-02-03','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00009',12,'2023-02-04','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00010',13,'2023-02-04','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00010',13,'2023-02-05','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00010',13,'2023-02-06','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00011',24,'2023-02-03','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00011',24,'2023-02-04','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00011',24,'2023-02-05','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00013',10,'2023-02-07','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00013',10,'2023-02-08','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00013',10,'2023-02-09','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00014',10,'2023-02-08','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00014',10,'2023-02-09','Menunggu Pembayaran');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00015',10,'2023-02-08','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00015',10,'2023-02-09','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00016',10,'2023-02-07','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00016',10,'2023-02-08','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00017',10,'2023-02-07','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00017',10,'2023-02-08','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00018',10,'2023-02-07','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00018',10,'2023-02-08','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00019',10,'2023-02-07','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00019',10,'2023-02-08','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00020',10,'2023-02-07','Selesai');
insert  into `cek_booking`(`kode_booking`,`id_barang`,`tgl_booking`,`status`) values ('TRX00020',10,'2023-02-08','Selesai');

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `id_cu` int NOT NULL AUTO_INCREMENT,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_cu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `contactus` */

insert  into `contactus`(`id_cu`,`nama_visit`,`email_visit`,`telp_visit`,`pesan`,`tgl_posting`,`status`) values (1,'Anuj Kumar','webhostingamigo@gmail.com','2147483647','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','2017-06-18 17:03:07',1);
insert  into `contactus`(`id_cu`,`nama_visit`,`email_visit`,`telp_visit`,`pesan`,`tgl_posting`,`status`) values (2,'kjk','jlkl@gmail.com','98989898','kjlkjkljklj','2018-03-06 21:01:39',1);
insert  into `contactus`(`id_cu`,`nama_visit`,`email_visit`,`telp_visit`,`pesan`,`tgl_posting`,`status`) values (3,'<div margin=\"0\"; padding=\"0\"; background=\"black\"; color=\"white\";>test</div>','ajdean111@gmail.com','4346778','csdfr','2020-03-06 11:18:08',1);
insert  into `contactus`(`id_cu`,`nama_visit`,`email_visit`,`telp_visit`,`pesan`,`tgl_posting`,`status`) values (4,'adi','adi@gmail.com','123456789','asfsBHGZjhbdf','2023-01-29 16:42:35',1);

/*Table structure for table `contactusinfo` */

DROP TABLE IF EXISTS `contactusinfo`;

CREATE TABLE `contactusinfo` (
  `id_info` int NOT NULL AUTO_INCREMENT,
  `alamat_kami` tinytext,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `contactusinfo` */

insert  into `contactusinfo`(`id_info`,`alamat_kami`,`email_kami`,`telp_kami`) values (1,'Jogja Adventure, \r\nYogyakarta\r\n','rentalalatoutdoor@gmail.com','08585233222');

/*Table structure for table `merek` */

DROP TABLE IF EXISTS `merek`;

CREATE TABLE `merek` (
  `id_merek` int NOT NULL AUTO_INCREMENT,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_merek`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `merek` */

insert  into `merek`(`id_merek`,`nama_merek`,`CreationDate`,`UpdationDate`) values (17,'Eiger','2023-01-28 21:58:31',NULL);
insert  into `merek`(`id_merek`,`nama_merek`,`CreationDate`,`UpdationDate`) values (18,'Arei','2023-01-28 23:55:44','2023-01-29 21:13:02');
insert  into `merek`(`id_merek`,`nama_merek`,`CreationDate`,`UpdationDate`) values (19,'Consina','2023-01-28 23:55:59','2023-01-29 21:05:03');
insert  into `merek`(`id_merek`,`nama_merek`,`CreationDate`,`UpdationDate`) values (20,'Deuter','2023-01-29 21:05:22',NULL);
insert  into `merek`(`id_merek`,`nama_merek`,`CreationDate`,`UpdationDate`) values (21,'Petzl','2023-02-01 21:45:36',NULL);
insert  into `merek`(`id_merek`,`nama_merek`,`CreationDate`,`UpdationDate`) values (22,'Osprey','2023-02-01 21:46:04',NULL);

/*Table structure for table `tblpages` */

DROP TABLE IF EXISTS `tblpages`;

CREATE TABLE `tblpages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `tblpages` */

insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (1,'Terms and Conditions','terms','																																																							<h2><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left;\"><span lang=\"EN-US\" style=\"font-size: small;\">Peraturan\r\nDan tata tertib penyewaan di Jogja Adventure<br></span></p><div style=\"text-indent: 0px;\"><span style=\"font-size: small;\"><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">1. Pada saat mengambil barang yang\r\ndisewa harus meninggalkan KTP / SIM / STNK atau Identitas lainnya sebagai\r\njaminan.<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">Untuk pengembalian yang penting\r\nkembali pada hari itu atau jam 00.00 , setelah jam tsb diitung 1 hari lagi.<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">2. Jika terjadi kerusakan ringan,\r\nmaka biaya perbaikan ditanggung oleh pemesan / penyewa</span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">Lubang kecil kena rokok / benda\r\nlain, kami denda 50.000,- / lubang pada parasit / Tenda. Lubang kecil karena\r\nrokok / benda lain untuk Alat matras kami denda 10.000,- / lubang.<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">3. Apabila terjadi kerusakan berat\r\n/ hilang yang dilakukan oleh penyewa maka penyewa harus menganti dengan yang\r\nsama, dan tenda yg rusak itu menjadi milik penyewa<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">4. Uang yang sudah diterima tdk\r\ndapat diminta kembali oleh penyewa / pemesan<br></span><span style=\"color: inherit; font-family: inherit; text-indent: -18pt;\">5. Penyewa bersedia mematuhi\r\nperaturan Jogja.adv yang telah disepakati bersama<br><div style=\"text-indent: -24px;\"><span style=\"color: inherit; font-family: inherit; text-indent: 0px;\">Harga part\r\nkerusakan / hilang</span></div></span></span></div><p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Pasak tenda Rp.5.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Frame tenda\r\nRp.25.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Matras sobek /\r\nHilang Rp.35.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Sb sobek /\r\nhilang Rp.100.000,-<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Carrier sobek\r\npada jahitan 10.000<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Carrier sobek\r\nparah karena benda tajam mengganti carrier yang sama<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Kompor rusak\r\n30.000<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Tenda sobek\r\nsedikit +-10 cm 50.000<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\" style=\"font-size: small;\">Tenda sobek\r\nbesar = Mengganti tenda yg sama <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: left; margin-left: 18pt;\"><span lang=\"EN-US\"><span style=\"font-size: small;\">Kompor rusak\r\n60.000</span><o:p></o:p></span></p></h2>																																																							');
insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (5,'Rekening','rekening','																																	123456789 Bank BRI a/n IRFAN MAULANA FARDI											');
insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (0,'Driver','driver','0');
insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (2,'Privacy Policy','privacy','<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>');
insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (3,'Tentang Kami','aboutus','																																	<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Kami adalah perusahaan yang bergerak di bidang penyewaan Alat Outdoor.</span>																						');
insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (11,'FAQs','faqs','																																												<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara menyewa alat outdoor di&nbsp; Jogja Adventure?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai user melalui menu yang telah disediakan.</span></div>																																												');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `kk` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id_user`,`nama_user`,`email`,`password`,`telp`,`alamat`,`ktp`,`kk`,`RegDate`,`UpdationDate`) values (8,'Coba','coba@gmail.com','21232f297a57a5a743894a0e4a801fc3','02092039','bandung','16062021161303pngtree-connection-technologies-background-tech-visual-for-energy-template-image_438844.jpg','16062021161303ppdb online.png','2021-06-16 21:13:03','2023-02-06 11:45:00');
insert  into `users`(`id_user`,`nama_user`,`email`,`password`,`telp`,`alamat`,`ktp`,`kk`,`RegDate`,`UpdationDate`) values (9,'Ramadi','ramadi@mail.com','21232f297a57a5a743894a0e4a801fc3','08231400','yogyakarta','280120231728243.jpg','280120231728241.jpg','2023-01-28 23:28:24','2023-02-06 11:44:59');
insert  into `users`(`id_user`,`nama_user`,`email`,`password`,`telp`,`alamat`,`ktp`,`kk`,`RegDate`,`UpdationDate`) values (10,'Nurul','nurul@gmail.com','21232f297a57a5a743894a0e4a801fc3','082323','yogyakarta','280120231907561.jpg','280120231907562.jpg','2023-01-29 01:07:56','2023-02-06 11:44:59');
insert  into `users`(`id_user`,`nama_user`,`email`,`password`,`telp`,`alamat`,`ktp`,`kk`,`RegDate`,`UpdationDate`) values (11,'adi','adi@gmail.com','21232f297a57a5a743894a0e4a801fc3','1234567890','yogyakarta','29012023103230download.jfif','29012023103230pengaduan.PNG','2023-01-29 16:32:30','2023-02-06 11:44:58');
insert  into `users`(`id_user`,`nama_user`,`email`,`password`,`telp`,`alamat`,`ktp`,`kk`,`RegDate`,`UpdationDate`) values (12,'Nurul','nurul1@gmail.com','21232f297a57a5a743894a0e4a801fc3','2345678','yogyakarta','31012023053239pengaduan.PNG','31012023053239pengaduan.PNG','2023-01-31 11:32:39','2023-02-06 11:43:26');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
