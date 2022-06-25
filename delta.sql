-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 11:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`, `phone`, `hak_akses`) VALUES
(1, 'Adi Putro Nugroho', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', 'adisyahh@gmail.com', 87879451226, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(35) NOT NULL,
  `nama_pemilik` varchar(35) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_bank`, `nama_pemilik`, `no_rekening`, `gambar`) VALUES
(5, 'Toko Delta', 'Delta - Jakarta', 'JL. Taruna', 'ab231a4accda4781ed47cab0075b23c7.png'),
(6, 'BNI', 'Adi Putro Nugroho', '123456', '17005d610313831369fb1fd059796890.png'),
(7, 'BCA', 'Adi Putro Nugroho', '654321', '9fd81276a66e41d93173c3153ec36e45.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `nama_brand`) VALUES
(7, 'Samsung'),
(8, 'Lenovo'),
(9, 'Dell'),
(10, 'Hp'),
(11, 'Xiaomi'),
(12, 'Oppo'),
(13, 'Apple'),
(14, 'Asus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carabelanja`
--

CREATE TABLE `tbl_carabelanja` (
  `id_carabelanja` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_carabelanja`
--

INSERT INTO `tbl_carabelanja` (`id_carabelanja`, `judul`, `deskripsi`) VALUES
(1, 'Cara Sewa Di Delta - Jakarta', '- Pilih kategori produk yang ada pada beranda Delta Jakarta<br>- Pilih produk yang diinginkan<br>- Klik button sewa yang ada pada produk, maka akan dialihkan ke checkout produk<br>- klik update keranjang jika masih ada yang ingin di sewa dan pilih produk seperti sebelumnya<br>- Jika sudah klik selesai belanja maka akan dialihkan ke form data pensewa<br>- isi data pada form sewa, lalu klik sumbit<br>- Data telah berhasil masuk ke admin dan produk siap untuk diambil di Delta Jakarta<br><br>- Untuk pembayaran sewa, dapat dilakukan secara manual maupun secara online yang tertera pada web Delta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donasi`
--

CREATE TABLE `tbl_donasi` (
  `id` int(11) NOT NULL,
  `nama_donatur` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_tlp` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jenis_perangkat` varchar(200) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `nama_pelajar` varchar(200) NOT NULL,
  `no_hp` varchar(200) NOT NULL,
  `alamat_lengkap` varchar(200) NOT NULL,
  `asal_sekolah` varchar(200) NOT NULL,
  `bangku_kelas` varchar(200) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `tgl_diterima` date NOT NULL,
  `des` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_donasi`
--

INSERT INTO `tbl_donasi` (`id`, `nama_donatur`, `email`, `no_tlp`, `alamat`, `jenis_perangkat`, `merk`, `type`, `nama_pelajar`, `no_hp`, `alamat_lengkap`, `asal_sekolah`, `bangku_kelas`, `kelas`, `tgl_diterima`, `des`) VALUES
(6, 'hasanudin', 'hasan@gmail.com', '0800000', 'jln arundina cibubur jakarta timur', 'Laptop', 'asus', 'x456urk', 'yudi', '0856000', 'jln bulak sereh', 'mts 22', 'SMP', '3', '2021-01-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donasikita`
--

CREATE TABLE `tbl_donasikita` (
  `id_donasikita` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_donasikita`
--

INSERT INTO `tbl_donasikita` (`id_donasikita`, `nama`, `email`, `hp`, `alamat`, `pesan`, `tanggal`, `status`) VALUES
(8, 'tes', 'tes2@gmail.com', 123, 'iiiiiiiiiiiiii', 'asd', '2020-12-03', 0),
(9, 'kamil', 'kamil@gmail.com', 87777777, 'jalan beronang cibubur jakarta timur', 'laptop asus x456urk', '2021-01-29', 1),
(10, 'hasanudin', 'hasan@gmail.com', 80000, 'jln arundina cibubur jakarta timur', 'asus x456urk', '2021-01-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donasi_kita_kirim`
--

CREATE TABLE `tbl_donasi_kita_kirim` (
  `id_donasi_kita_kirim` int(11) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_donasi_kita_kirim` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_donasi_kita_kirim`
--

INSERT INTO `tbl_donasi_kita_kirim` (`id_donasi_kita_kirim`, `kepada`, `judul`, `isi_donasi_kita_kirim`) VALUES
(3, 'roziqin_iqin@yahoo.com', 'Balasan', 'Balasan Untuk roziqin'),
(4, 'roziqin_iqin@yahoo.com', 'ddd', 'undefined'),
(5, 'imam@gmail.com', 'Balas', 'fdsjfdsfdsfhdsu'),
(6, 'a@gmail.com', 'b', 'b'),
(7, 'zakikrn@gmail.com', 'c', 'c'),
(8, 'c@aas.com', 'hbf', 'fgh'),
(9, 'kamil@gmail.com', 'tes', 'tes'),
(10, 'hasan@gmail.com', 'tes', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inet`
--

CREATE TABLE `tbl_inet` (
  `id_inet` int(11) NOT NULL,
  `nama_rt` varchar(200) NOT NULL,
  `no_telepon` varchar(200) NOT NULL,
  `rt_rw` varchar(200) NOT NULL,
  `kec` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `jenis_ptp` varchar(200) NOT NULL,
  `total_pengguna` varchar(200) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `catatan` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `des` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_inet`
--

INSERT INTO `tbl_inet` (`id_inet`, `nama_rt`, `no_telepon`, `rt_rw`, `kec`, `kode_pos`, `jenis_ptp`, `total_pengguna`, `tgl_mulai`, `jatuh_tempo`, `catatan`, `status`, `des`) VALUES
(8, 'Ibu Rifkah', '08122222222', '05 / 09', 'Mangga II Cibubur Ciracas', '13720', 'Indihome 2P 900K', '8 Rumah Tangga', '2020-11-30', '2020-12-30', 'Tidak ada catatan', 0, 2),
(9, 'Lilis', '021000000', '09 / 05', 'Cibubur, Ciracas', '13720', 'Indihome 2P 900K', '6 Rumah Tangga', '2021-01-29', '2021-03-01', 'menunggu teknisi pemasangan', 0, 2),
(10, 'bpk marno', '021000', '09 / 05', 'Cibubur, Ciracas', '13720', 'Indihome 2P 900K', '6 Rumah Tangga', '2021-01-30', '2021-03-02', 'menunggu teknisi pemasangan', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(10, 'Laptop'),
(11, 'Handphone');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategorigaleri`
--

CREATE TABLE `tbl_kategorigaleri` (
  `id_kategorigaleri` int(11) NOT NULL,
  `nama_kategorigaleri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategorigaleri`
--

INSERT INTO `tbl_kategorigaleri` (`id_kategorigaleri`, `nama_kategorigaleri`) VALUES
(1, 'Album Pertama'),
(2, 'Album Kedua');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `alamat`, `phone`, `email`) VALUES
(1, 'Cibubur Jakarta Timur', 87879451226, 'adisyahh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id_logo` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `gambar`) VALUES
(1, 'caabe5b2fbe5f33d0f1ea047efeb9e29.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`, `deskripsi`, `gambar`, `kategori_id`, `brand_id`) VALUES
(1, 'SW00009', 'Lenovo Thinkpad T440P', 165000, 10, '<ul><li>500GB 5400/7200 rpm.</li><li>Kemampuan 500GB / 7200 Opal.</li><li>1TB 5400rpm.</li><li>500GB / 8GB SSHD.</li><li>Kemampuan SSHD 500GB / 8GB mampu.</li><li>M.2 solid-state drive hanya untuk caching.</li></ul>', 'd1291e7c1a7f80a8b40ddaeb6bfc75f6.jpg', 10, 8),
(2, 'SW00010', 'Lenovo Thinkpad X250', 140000, 12, '<ul><li>Processor:&nbsp;Intel&nbsp;Core i5 Broadwell-U</li><li>RAM: 8GB</li><li>Layar: touch screen 12,5 inchi dengan dua varian resolusi, 1366 x 768 piksel dan 1920 x 1080 piksel (harga terpaut agak jauh)</li><li>Storage: SSD 512 GB atau HDD 1TB</li><li>Ports: LAN, 2x USB 3.0, mini Display Port, dan port VGA</li><li>baterai: (bawaan: 72Wh 6-cell dapat ditambahkan ekstra baterai 3-cell 23.2Wh sehingga mampu digunakan sampai 20 jam.</li></ul>', 'b9cade0762084fbab9828ab95eaa0a6e.jpg', 10, 8),
(3, 'SW00011', 'Dell 3593', 150000, 8, '<ul><li>Processor: Intel Core i3-1005G1</li><li>RAM: 4GB DDR4</li><li>HDD: 1TB</li><li>VGA: Intel UHD Graphics</li><li>Ukuran Layar: 15.6 Inch FHD</li><li>ODD: DVDRW</li><li>Konektivitas: Wifi + Bluetooth</li><li>Sistem Operasi: Windows 10 Home</li></ul>', 'd088317b8b04cfe86a3868c59b8964a9.jpg', 10, 9),
(4, 'SW00012', 'Dell 5579', 170000, 12, '<ul><li>Processor: Intel Core i7-8550U</li><li>RAM: 8GB DDR4</li><li>SSD: 256GB</li><li>ODD: DVDRW</li><li>Grafik: AMD Radeon 530 4GB</li><li>Konektivitas: Wifi + Bluetooth + LAN</li><li>Ukuran Layar: 15.6 Inch FHD</li><li>Sistem Operasi: Windows 10 Home SL</li></ul>', 'e1d28d4a4743d664284b389ea6cb0eed.jpg', 10, 9),
(5, 'SW00014', 'Asus A456U', 155000, 18, '<ul><li>Processor: Intel® Core™ i5-7200U Processor (2.5 GHz, 3M Cache) up to 3.10 GHz.</li><li>Memori Standar: 4GB DDR4 (upgade max. 12GB)</li><li>GPU: Intel HD Graphics 620 dan NVIDIA GeForce GT930MX 2GB.</li><li>Ukuran Layar: 14 Inch (1366 x 768 piksel)</li><li>Audio: Integrated.</li><li>Speaker: Integrated.</li><li>Penyimpanan: 1TB HDD.</li><li>Optical Drive Type: DVDRW.</li></ul>', '63797d08fc3c6c2b633935c740f04810.jpeg', 10, 14),
(6, 'SW00015', 'Asus X441UA', 180000, 15, '<ul><li>Processor: Intel Core i3-8130U</li><li>RAM: 4GB</li><li>Storage: 1TB HDD</li><li>Ukuran Layar: 14 Inch FHD</li><li>VGA: Integrated</li><li>Konektivitas: Bluetooth + Wifi</li><li>Sistem Operasi: Windows 10 Home</li></ul>', '568467b684af6105ed01c9be034261db.jpg', 10, 14),
(7, 'SW00016', 'Asus X555BA', 175000, 8, '<ul><li>Prosesor : AMD 7th Gen A9 9420-2.2Ghz-2.5Ghz.</li><li>RAM 4 GB dan HDD 500 GB.</li><li>VGA AMD RADEON R5.</li><li>Layar : 15.6 Inch.</li><li>OS : Windows 10.</li><li>DVD/RW.</li></ul>', '21c1a00adfef48b1df4b937d562ef7e9.png', 10, 14),
(8, 'SW00017', 'HP 14 DQ1040', 180000, 7, '<ul><li>Processor: Intel Core i5-7020U</li><li>RAM: 4GB</li><li>HDD: 1TB</li><li>VGA: Intel Graphics</li><li>Konektivitas: Wifi + Bluetooth</li><li>Ukuran Layar: 14 Inch</li><li>Sistem Operasi: Windows 10 Home</li></ul>', 'fa55ec01ba7a10d1946ea75cc83e875c.jpg', 10, 10),
(9, 'SW00018', 'HP 14 BS005TX', 175000, 12, '<ul><li>Processor: Intel Core i3-6006U</li><li>RAM: 4GB DDR4</li><li>HDD: 1TB</li><li>ODD: DVDRW</li><li>VGA: AMD Radeon 520 Graphics 2GB</li><li>Konektifitas: NIC</li><li>Wifi</li><li>Bluetooth</li><li>Ukuran Layar: 14\" HD</li><li>Sistem Operasi: Win 10 SL</li></ul>', 'fb95d7b1da20ff26d9fba38390148c10.jpg', 10, 10),
(10, 'SW00019', 'iPhone 4s 32GB', 100000, 24, '<ul><li>Brand –&nbsp;Apple</li><li>Model – iPhone 4S 32GB</li><li>Device Type – iOS&nbsp;Smartphone</li><li>CPU – Dual-Core 1.0GHz Cortex-A9</li><li>Chipset – Apple A5</li><li>Camera – 8 Megapixel with Dual-LED Flash |&nbsp;VGA&nbsp;Front camera with Flash</li><li>Memory – RAM-&nbsp;512MB| ROM 8GB/16GB/32GB/64GB</li><li>Display – Screen size 3.5&nbsp;inches DVGA Display</li><li>Battery – Non-Removable&nbsp;Lithium-Polymer 1,432 mAh battery</li><li>SIM – Hybrid single&nbsp;SIM (Micro) SIM Smartphone&nbsp;with single&nbsp;Standby</li><li>Support 2G/3G Networks with HSUPA 5.76 Mbps, HSDPA 14&nbsp;Mbps Download</li><li>Sensors – Proximity, gyro, Accelerometer, Ambient Light, compass sensor</li><li>Color – Black, White</li><li>Operating System –&nbsp;IOS 5 up to 9.3.3</li><li>Very good camera with best video capturing</li><li>Metal body material</li></ul>', '0b9368afcb51e8e1233cc78feded09a4.jpg', 11, 13),
(21, 'SW00020', 'iPhone 5s 32GB', 120000, 10, '<ul><li>Brand –&nbsp;Apple</li><li>Model – iPhone 5S 32GB</li><li>4.0 inch LED - backlit IPS LCD Capacitive touchscreen.</li><li>16GB Internal.</li><li>GSM/HSDPA/LTE.</li><li>Wi-Fi/Bluetooth.</li><li>8 MP + 1.2 MP Camera.</li><li>iOS&nbsp;7.</li><li>Apple&nbsp;A7 Cyclone Dual-core 1.3GHz.</li></ul>', '6411e4e6109628c24e185d63122499e5.jpg', 11, 13),
(22, 'SW00021', 'iPhone 6s 32GB', 150000, 8, '<ul><li>Brand –&nbsp;Apple</li><li>Model – iPhone 4S 32GB</li><li>Chipset:&nbsp;Apple&nbsp;a9 (14 nm)</li><li>RAM: 2GB.</li><li>Memori internal: 32GB</li><li>Ukuran hp: 138.3 x 67.1 x 7.1 mm.</li><li>Berat hp: 143 gram.</li><li>Ukuran layar: 4,7 inci.</li><li>Kamera depan: 5MP.</li></ul>', '36cf6546535fa5c83a2ae43a183e20c3.jpg', 11, 13),
(23, 'SW00022', 'Oppo K3', 125000, 12, '<ul><li>CPU: Qualcomm Snapdragon 710.</li><li>RAM: 6 GB.</li><li>Storage: 64 GB.</li><li>Display: 6.5 inches; 2340 x 1080 pixels Full HD+, AMOLED.</li><li>Camera: Rear: 16 MP + 2MP, Front: 16 MP.</li><li>OS: ColorOS 6 (based on Android 9.0)</li></ul>', '90992ca40da0a4168c2aaec8031f0f6e.jpg', 11, 12),
(24, 'SW00023', 'Asus Zenfone Zoom ZX550 ', 150000, 8, 'Jaringan 4G LTE<br>Layar 1080p x 1920 pixels, 5.5 inches (~401 ppi pixel density)<br>Jenis layar IPS capacitive touchscreen, 16M colors<br>Lain-lain Sensors : Accelerometer, gyro, proximity, compass<br>Multitouch<br>Corning Gorilla Glass 3, oleophobic coating<br>ZenUI<br>Internal 64GB storage, 4GB RAM<br>Slot microSD, up to 128GB<br>Kecepatan HSPA 42.2/5.76 Mbps, LTE Cat4 150/50 Mbps<br>Wifi Wi-Fi 802.11 a/b/g/n/ac, Wi-Fi Direct, hotspot<br>O.S. Android OS, v5.0 (Lollipop)<br>CPU Intel Atom Z3580, Quad-core 2.3 GHz<br>GPU PowerVR G6430<br>Sensor Accelerometer, proximity, compass<br>Kamera belakang 13 MP, 4128 x 3096 pixels, laser autofocus, 3x optical zoom, manual controls, optical image stabilization, dual LED flash (dual tone), Geo-tagging, touch focus, face detection, panorama, Video 1080p@30fps<br>Kamera depan 5MP<br>GPS Yes<br>Java Yes, via Java MIDP emulator<br>Fitur lain 5GB free lifetime ASUS WebStorage<br>MP3/WAV/eAAC+ player<br>MP4/H.264 player<br>Document viewer<br>Photo viewer/editor<br>Voice memo/dial<br>Baterai Tipe Non-removable Li-Po 3000 mAh battery', '2b7b8433f41425fb520798a1b2deb5db.jpeg', 11, 14),
(26, 'SW00025', 'ASUS Zenfone Max M1', 170000, 15, '<b></b><ul><li>Asus Zenfone Max Pro M1 ZB602KL Smartphone [32 GB/3 GB]</li><li>Spesifikasi:</li><li>Detail OS : Android Oreo</li><li>Prosessor : Qualcomm Snapdragon 636 Mobile Platform with 14nm, 64-bit Octa-core</li><li>Kamera : 13MP + 5MP Dual Rear Camera with Portrait Mode for Bokeh Effect, Front Camera : 8MP</li><li>Display : 5.99 Inch, resolusi 1080 x 2160 pixels</li><li>Baterai : 5000 mAh</li></ul>', '435bce8bc75db411888792a5f9c3a1d6.jpg', 11, 14),
(27, 'SW00026', 'Oppo F1S', 145000, 12, '<ul><li>Dimensi: 154,5 × 76 × 7,4 mm.</li><li>Berat HP: 160 gram.</li><li>Layar: 5,5 inci HD (1080 × 720 piksel)</li><li>Jenis Layar: IPS LCD, 16 juta warna.</li><li>Proteksi: Corning Gorilla Glass 4.</li><li>Prosesor: Mediatek MT6750 octa-core 1,5 GHz.</li><li>RAM: 3GB/4GB.</li><li>Memori Internal: 32GB.</li></ul>', 'd4c3f99db389fe0cc5ddcc0b4a006840.jpeg', 11, 12),
(30, 'SW00029', 'Samsung A20', 225000, 10, '<ul><li>Chipset: Qualcomm SDM450 Snapdragon 450 (14 nm)</li><li>Kamera Belakang: 13 MP + 8 MP + 5 MP</li><li>Kamera Depan: 8 MP</li><li>Battery: 4000 mAh</li><li>Fingerprint</li><li>Ukuran Layar: 6.5 inch HD+</li><li>Sistem Operasi: Android 9.0 Pie</li></ul><span>Unit Termasuk<ul><li>SAMSUNG Galaxy A20s</li><li>Kabel USB</li><li>Charger</li><li>SIM Ejector</li><li>Buku Panduan</li></ul></span>', '01cfeed87520ce2f5c5d6fffa94ca037.jpg', 11, 7),
(31, 'SW00030', 'Samsung J6', 145000, 25, '<ul><li>Chipset: Exynos 7870 Octa (14 nm)</li><li>RAM: 3GB.</li><li>Memori internal: 32GB/64GB.</li><li>Ukuran HP: 149.3 x 70.2 x 8.2 mm (5.88 x 2.76 x 0.32 in)</li><li>Berat HP: 154 gram.</li><li>Ukuran layar: 5.6 inci.</li><li>Kamera depan: 8MP.</li></ul>', '0b7e22e805c8a45d957e5ca1d898d3ff.jpg', 11, 7),
(33, 'SW00032', 'Xiaomi Mi 8 Lite', 245000, 6, '<ul><li>Ukuran Layar : 6,26 inch IPS LCD, 1080 x 2280 pixels.</li><li>Chipset : Qualcomm SDM660 Snapdragon 660 (14 nm)</li><li>OS : Android 8.1 (Oreo), upgradable to Android 10,&nbsp;MIUI&nbsp;11.</li><li>RAM: 4GB.</li><li>Memori internal : 64GB.</li><li>Ukuran HP : 156.4 x 75.8 x 7.5 mm.</li><li>Berat HP : 169 g.</li></ul>', 'e4df24eb921035bef0d9618351284580.jpg', 11, 11),
(34, 'SW00033', 'Xiaomi M10T G5', 190000, 12, 'GSM / HSPA / LTE<br>Launch Announced 2018, February<br>Status Available. Released 2018, February<br>Body Dimensions 158.5 x 75.5 x 8.1 mm (6.24 x 2.97 x 0.32 in)<br>Weight 180 g (6.35 oz)<br>Build Front glass, aluminum frame &amp; back, plastic ends<br>SIM Hybrid Dual SIM (Nano-SIM, dual stand-by)<br>Display Type IPS LCD capacitive touchscreen, 16M colors<br>Size 5.99 inches, 92.6 cm2 (~77.4% screen-to-body ratio)<br>Resolution 1080 x 2160 pixels, 18:9 ratio (~403 ppi density)<br>Multitouch Yes<br>Protection Corning Gorilla Glass (unspecified version)<br>- MIUI 9<br>Platform OS Android 7.1.2 (Nougat)<br>Chipset Qualcomm MSM8953 Snapdragon 625<br>CPU Octa-core 2.0 GHz Cortex-A53<br>GPU Adreno 506<br>Memory Card slot microSD, up to 128 GB (uses SIM 2 slot)<br>Internal 32 GB, 3 GB RAM<br>Camera Primary 12 MP (f/2.2, 1.25 m), phase detection autofocus, dual-LED<br>dual-tone flash, check quality<br>Features Geo-tagging, touch focus, face/smile detection, HDR, panorama<br>Video 2160p@30fps, 1080p@30fps, check quality<br>Secondary 5 MP, 1080p<br>Sound Alert types Vibration; MP3, WAV ringtones<br>Loudspeaker Yes<br>3.5mm jack Yes<br>- Active noise cancellation with dedicated mic<br>Comms WLAN Wi-Fi 802.11 a/b/g/n, Wi-Fi Direct, hotspot<br>Bluetooth 4.2, A2DP, LE<br>GPS Yes, with A-GPS, GLONASS, BDS<br>Infrared port Yes<br>Radio FM radio<br>USB microUSB 2.0<br>Features Sensors Fingerprint (rear-mounted), accelerometer, gyro, proximity,<br>compass<br>Messaging SMS(threaded view), MMS, Email, Push Mail, IM<br>Browser HTML5<br>- Fast battery charging 5V/2A<br>- DivX/Xvid/MP4/H.265 player<br>- MP3/WAV/eAAC+/FLAC player<br>- Photo/video editor<br>- Document viewer<br>Battery Non-removable Li-Po 4000 mAh battery', 'a66c0ae3adca30bb5f105e3bb44ca957.jpg', 11, 11),
(36, 'SW00035', 'Xiaomi Redmi 8', 240000, 12, '<div><div><div><div><ul><li>Chipset: Mediatek Helio G90T</li><li>Kamera Belakang: 64MP + 8MP + 2MP + 2MP</li><li>Kamera Depan: 20MP</li><li>Ukuran Layar: 6.53 Inch</li><li>Battery : 4500 mAh</li><li>Sistem Operasi: Android 9.0 Pie</li></ul><span>Unit Termasuk<ul><li>Redmi Note 8 Pro</li><li>Power adapter</li><li>Simple protective cover</li><li>USB Type-C cable</li><li>SIM eject tool</li></ul></span></div></div></div></div>', '3e432346c7f4fcf3085ada2ed2b268d2.png', 11, 11),
(37, 'SW00036', 'Xiaomi Note 10', 165000, 18, '<ul><li>Rilis: November 2019.</li><li>Chipset: Qualcomm SDM730 Snapdragon 730G (8 nm)</li><li>RAM: 6GB.</li><li>Memori internal: 128GB.</li><li>Ukuran HP: 157.8 x 74.2 x 9.7 mm.</li><li>Berat HP: 208 gram.</li><li>Ukuran layar: 6,47 inci, 1080 x 2340 pixels.</li><li>Kamera depan: 32MP, f/2.0.</li></ul>', 'b8f7400430c4db7f2f8d407a97fadf58.jpg', 11, 11),
(38, 'SW00037', 'Oppo A3S', 165000, 18, '<ul><li>Layar Super Full View Display 6.2 Inch.</li><li>Processor Octa-core Qualcomm Snapdragon 450 dengan Adreno 506.</li><li>Dual Kamera Utama 13 MP + 2 MP, kamera depan 8 MP.</li><li>OS : Android 8.1 Oreo.</li><li>Baterai : 4.230 mAh.</li></ul>', '20179ceb8a081a421afc449c93c8c6ff.jpg', 11, 12),
(40, 'SW00039', 'Asus Zenfone 4 ZD552KL', 125000, 24, 'Prosesor: Snapdragon 625 Octa-core 2.0 GHz<br>Ukuran Layar: 5.5 Inch FHD<br>RAM: 4GB<br>Kapasitas: 64GB<br>Kamera depan: 24MP (12MPx2)<br>Kamera belakang: 16MP<br>Fingerprint<br>Baterai: 3000mAh<br>Sistem Operasi: Android v7.0 Nougat', '5b36ac13bd3117afd4c719b0dcc1f182.jpg', 11, 14),
(41, 'SW00040', 'Xiaomi Redmi 6A', 140000, 25, '<ul><li>Ukuran Layar : 5.45 inci IPS LCD 720 x 1440 pixels.</li><li>Chipset : Mediatek MT6761 Helio A22 (12 nm)</li><li>OS : Android 8.1 (Oreo)</li><li>RAM: 2GB / 3GB.</li><li>Memori internal : 16GB / 32GB.</li><li>Ukuran HP : 147.5 x 71.5 x 8.3 mm.</li><li>Berat HP : 145 gram.</li><li>Kamera depan : 5 MP, f/2.2.</li></ul>', '76340e17f3db8ac8a33642d1f8ff954c.jpg', 11, 11),
(42, 'SW00041', 'Asus Zenfone Laser 2', 110000, 27, '<ul><li>Platform. Android™ 5.0.</li><li>Pilihan Warna. Black/White/Red/Twilight Purple/Silver/Gold.</li><li>Dimensi.&nbsp;Phone: 152.5 x 77.2 x 3.9 ~ 10.8 mm (LxWxH)</li><li>Berat. 170 g (dengan baterai)</li><li>CPU. Qualcomm MSM8916 QuadCore 1.2GHz.</li><li>Memori. 2GB LPDDR3 RAM.</li><li>16GB eMMC Flash. 5GB free lifetime&nbsp;ASUS&nbsp;WebStorage.</li><li>Slot Memori. Micro-SD card (hingga 128 GB)</li></ul>', '1ede548261f881722d6b3703a6ee69f3.jpg', 11, 14),
(43, 'SW00042', 'Xiaomi Mi A1', 110000, 26, '<li>Optical zoom Dual kamera.</li><li>64GB Penyimpanan besar. 32GB Penyimpanan besar.</li><li>3080mAh(typ) baterai.</li><li>Body full metal.</li><li>RAM 4GB Kecepatan RAM yang tinggi.</li><li>Sensor sidik jari di belakang.</li><li>Kualitas suara yang baik.</li>\" &gt;<ul><li>Layar Full HD 5,5\" (13,5cm)</li><li>Optical zoom Dual kamera.</li><li>64GB Penyimpanan besar. 32GB Penyimpanan besar.</li><li>3080mAh(typ) baterai.</li><li>Body full metal.</li><li>RAM 4GB Kecepatan RAM yang tinggi.</li><li>Sensor sidik jari di belakang.</li><li>Kualitas suara yang baik.</li></ul>', '3d0bab49522b205307fe478da6eb870e.jpg', 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seo`
--

CREATE TABLE `tbl_seo` (
  `id_seo` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_seo`
--

INSERT INTO `tbl_seo` (`id_seo`, `tittle`, `keyword`, `description`) VALUES
(1, 'Delta - Jakarta', 'Dukungan Pelajar Jakarta', 'Delta adalah website untuk mempermudah penyediaan fasilitas untuk pelajar dalam pembelajaran dari rumah pada pandemi COVID-19.<br>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(3, 'Mengapa Delta?', '<div>• Harga sewa yang murah memberikan keringanan bagi\r\npelajar maupun keluarga pelajar dalam\r\nmempunyai fasilitas untuk\r\nmelakukan pembelajaran jarak\r\njauh pada pandemi Covid19</div>', '6a7b00f6e6f64ed01166a85db8e982dd.png', 1),
(5, 'Donasikan ponsel dan laptop bekas mu', 'Masih ada pelajar yang kesulitan mengikuti kegiatan belajar karena keluarga hanya punya satu ponsel.&nbsp;<br>Hp dan Laptop layak pakai akan sangat berguna bagi mereka yang membutuhkan.<br>', 'ba1fdd9326284fe1872b55bf2c3f3192.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sosial_media`
--

CREATE TABLE `tbl_sosial_media` (
  `id_sosial_media` int(11) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `gp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sosial_media`
--

INSERT INTO `tbl_sosial_media` (`id_sosial_media`, `tw`, `fb`, `gp`) VALUES
(1, 'http://twitter.com', 'http://facebook.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_bayar`
--

CREATE TABLE `tbl_sub_bayar` (
  `id_subbayar` int(11) NOT NULL,
  `kode_transaksi` int(11) NOT NULL,
  `kategori_pembayaran` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `nama_pensewa` varchar(200) NOT NULL,
  `no_tlp` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `des` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sub_bayar`
--

INSERT INTO `tbl_sub_bayar` (`id_subbayar`, `kode_transaksi`, `kategori_pembayaran`, `bank`, `nama_pensewa`, `no_tlp`, `email`, `gambar`, `des`) VALUES
(1, 2147483647, 'Sewa Handphone', 'BNI', 'Adi', '0878888888', 'adisyahh@gmail.com', '', 2),
(2, 52, 'Sewa Laptop', 'BCA', 'k', '123', 'k@gmail.com', '', 2),
(3, 22121, 'Sewa Handphone', 'BCA', 'k', '12', 'tes2@gmail.com', '', 2),
(4, 43, 'Sewa Handphone', 'BCA', 'we', '234', 'adiputro41@yahoo.co.id', '', 2),
(5, 22121, 'Sewa Laptop', 'BCA', 'vcx', '123', 'tes2@gmail.com', '', 2),
(6, 0, 'Sewa Handphone', 'BNI', 'we', '234', 'tes2@gmail.com', '', 0),
(7, 0, 'Sewa Handphone', 'BNI', 'we', '234', 'tes2@gmail.com', '', 2),
(8, 451, 'Sewa Handphone + Laptop', 'BNI', 'hgf', '123', 'coba@gmail.com', '', 0),
(9, 451, 'Sewa Handphone + Laptop', 'BNI', 'hgf', '123', 'coba@gmail.com', '', 0),
(10, 451, 'Sewa Handphone + Laptop', 'BNI', 'hgf', '123', 'coba@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentangkami`
--

CREATE TABLE `tbl_tentangkami` (
  `id_tentangkami` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tentangkami`
--

INSERT INTO `tbl_tentangkami` (`id_tentangkami`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda | Delta - Jakarta', 'Delta Jakarta adalah website dukungan pelajar jakarta yang menyediakan segala fasilitas bagi pelajar dalam mengikuti pembelajaran dari rumah di pandemi Covid-19\r\nSalam Owner\r\nAdi Putro Nugroho\r\n..');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_detail`
--

CREATE TABLE `tbl_transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi_detail`, `kode_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`) VALUES
(33, 20201118001, 'SW00041', 'Asus Zenfone Laser 2', '110000', 1),
(35, 20201118002, 'SW00036', 'Xiaomi Note 10', '165000', 1),
(36, 20201118003, 'SW00039', 'Asus Zenfone 4 ZD552KL', '125000', 1),
(37, 20201118003, 'SW00041', 'Asus Zenfone Laser 2', '110000', 1),
(38, 20201118003, 'SW00036', 'Xiaomi Note 10', '165000', 1),
(39, 20201118004, 'SW00040', 'Xiaomi Redmi 6A', '140000', 1),
(40, 20201118005, 'SW00039', 'Asus Zenfone 4 ZD552KL', '125000', 1),
(41, 20201118006, 'SW00036', 'Xiaomi Note 10', '165000', 1),
(42, 20201118001, 'SW00037', 'Oppo A3S', '165000', 1),
(43, 20201118002, 'SW00042', 'Xiaomi Mi A1', '110000', 1),
(44, 20201118003, 'SW00041', 'Asus Zenfone Laser 2', '110000', 1),
(45, 20201118004, 'SW00040', 'Xiaomi Redmi 6A', '140000', 1),
(46, 20201118005, 'SW00042', 'Xiaomi Mi A1', '110000', 1),
(47, 20201118006, 'SW00041', 'Asus Zenfone Laser 2', '110000', 1),
(48, 20201118007, 'SW00037', 'Oppo A3S', '165000', 1),
(49, 20201118008, 'SW00042', 'Xiaomi Mi A1', '110000', 1),
(50, 20201121001, 'SW00037', 'Oppo A3S', '165000', 1),
(51, 20201122001, 'SW00042', 'Xiaomi Mi A1', '110000', 1),
(52, 20201122001, 'SW00016', 'Asus X555BA', '175000', 1),
(53, 20201214001, 'SW00040', 'Xiaomi Redmi 6A', '140000', 1),
(54, 20201218001, 'SW00041', 'Asus Zenfone Laser 2', '110000', 1),
(55, 20201218002, 'SW00037', 'Oppo A3S', '165000', 1),
(56, 20210129001, 'SW00036', 'Xiaomi Note 10', '165000', 1),
(57, 20210129001, 'SW00017', 'HP 14 DQ1040', '180000', 1),
(58, 20210129002, 'SW00040', 'Xiaomi Redmi 6A', '140000', 1),
(59, 20210129002, 'SW00012', 'Dell 5579', '170000', 1),
(60, 20210129003, 'SW00041', 'Asus Zenfone Laser 2', '110000', 1),
(61, 20210129003, 'SW00016', 'Asus X555BA', '175000', 1),
(62, 20210129004, 'SW00040', 'Xiaomi Redmi 6A', '140000', 1),
(63, 20210129004, 'SW00018', 'HP 14 BS005TX', '175000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_header`
--

CREATE TABLE `tbl_transaksi_header` (
  `id_transaksi_header` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL,
  `bank_id` int(11) NOT NULL,
  `des` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`id_transaksi_header`, `kode_transaksi`, `penerima`, `email`, `alamat`, `no_telepon`, `tgl_sewa`, `tgl_jatuh_tempo`, `bank_id`, `des`, `status`) VALUES
(35, 20201118005, 'nama', 'email', 'alamat', '123123', '2020-11-20', '2020-11-30', 7, 3, 1),
(36, 20201118006, 'mail', 'mailhomo@gmail.com', 'rsko cibubur', '08120000', '2020-11-18', '2020-12-18', 6, 3, 1),
(37, 20201118007, 'nama', 'email', 'alamat', 'tlp', '2020-11-20', '2020-12-20', 7, 3, 1),
(38, 20201118008, 'nama', 'email', 'alamat', 'tlp', '2020-11-29', '2020-12-29', 7, 3, 1),
(39, 20201121001, 'nama', 'email', 'alamat', '1', '2020-11-28', '2020-12-28', 6, 1, 0),
(40, 20201122001, 'adi putro', 'adisyahh@gmail.com', 'taruna jaya rt 09/05 no 25 cibubur jakarta timru', '0877777777', '2020-11-30', '2020-12-30', 5, 3, 1),
(41, 20201214001, 'bara', 'bara@gmail.com', 'asd', '123', '2020-12-18', '2021-01-18', 7, 1, 0),
(42, 20201218001, 'nama tes', 'emailtes@gmail.com', 'alamat tes', '08788888', '2020-12-21', '2021-01-21', 5, 6, 1),
(43, 20201218002, 'adi putro', 'coba@gmail.com', 'b', '08788888', '2020-12-19', '2021-01-19', 6, 1, 0),
(44, 20210129001, 'fahmi', 'fahmi@gmail.com', 'jl abdul rachman, cibubur ', '0800000', '2021-02-03', '2021-03-03', 5, 1, 0),
(45, 20210129002, 'jajang', 'jajang@gmail.com', 'jl amaryliris cibubur jakarta timur', '02100000', '2021-02-03', '2021-03-03', 5, 3, 1),
(46, 20210129003, 'faiz', 'faiz@gmail.com', 'gang 8 cibubur jakarta timur', '0210000', '2021-01-30', '2021-03-02', 5, 1, 0),
(47, 20210129004, 'hani', 'hani@gmail.com', 'gang iman cibubur jakarta timur', '021000000', '2021-01-30', '2021-03-02', 5, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  ADD PRIMARY KEY (`id_carabelanja`);

--
-- Indexes for table `tbl_donasi`
--
ALTER TABLE `tbl_donasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_donasikita`
--
ALTER TABLE `tbl_donasikita`
  ADD PRIMARY KEY (`id_donasikita`);

--
-- Indexes for table `tbl_donasi_kita_kirim`
--
ALTER TABLE `tbl_donasi_kita_kirim`
  ADD PRIMARY KEY (`id_donasi_kita_kirim`);

--
-- Indexes for table `tbl_inet`
--
ALTER TABLE `tbl_inet`
  ADD PRIMARY KEY (`id_inet`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  ADD PRIMARY KEY (`id_kategorigaleri`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  ADD PRIMARY KEY (`id_seo`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  ADD PRIMARY KEY (`id_sosial_media`);

--
-- Indexes for table `tbl_sub_bayar`
--
ALTER TABLE `tbl_sub_bayar`
  ADD PRIMARY KEY (`id_subbayar`);

--
-- Indexes for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  ADD PRIMARY KEY (`id_tentangkami`);

--
-- Indexes for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- Indexes for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  ADD PRIMARY KEY (`id_transaksi_header`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  MODIFY `id_carabelanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_donasi`
--
ALTER TABLE `tbl_donasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_donasikita`
--
ALTER TABLE `tbl_donasikita`
  MODIFY `id_donasikita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_donasi_kita_kirim`
--
ALTER TABLE `tbl_donasi_kita_kirim`
  MODIFY `id_donasi_kita_kirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_inet`
--
ALTER TABLE `tbl_inet`
  MODIFY `id_inet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  MODIFY `id_kategorigaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  MODIFY `id_seo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  MODIFY `id_sosial_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sub_bayar`
--
ALTER TABLE `tbl_sub_bayar`
  MODIFY `id_subbayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  MODIFY `id_tentangkami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  MODIFY `id_transaksi_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
