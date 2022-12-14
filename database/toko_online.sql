-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 02:19 PM
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
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(5) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'sepatu Nike Bagus', 'Pakaian Pria', 3000000, 999, 'sepatu.jpg'),
(2, 'Canon', 'Kamera Bagus Untuk foto dan video', 'elektronik', 20000000, 149, 'camera.jpeg'),
(3, 'Laptop Asus', 'Laptop bagus buat gaming', 'elektronik', 50000000, 100, 'laptop.jpg'),
(4, 'iphone 14 pro max', 'Iphone 14 Pro Max terbaru', 'elektronik', 30000000, 499, 'hp.jpg'),
(15, 'jam tangan ', 'jam tangan asli', 'Pakaian Pria', 4000000, 50, 'jam_tangan.jpeg'),
(17, 'baju kaos pria', 'baju kaos bahan distro', 'Pakaian Pria', 200000, 300, 'baju_kaos.jpg'),
(18, 'kemeja pria', 'kemeja pria lengan panjang slimfit', 'Pakaian Pria', 400000, 300, 'baju_kemeja.jpeg'),
(19, 'baju santai anak anak', 'bagus dan bahan nya anti noda', 'Pakaian Anak Anak', 150000, 250, 'baju_anak_anak_1.png'),
(20, 'baju kaus anak anak cewek', 'bahan nya kuat dan tahan lama', 'pakaian anak anak', 200000, 400, 'baju_anak_anak_2.jpeg'),
(21, 'baju muslim muslim cowok', 'bagus dan bahan nya anti noda', 'pakaian anak anak', 400000, 450, 'baju_anak_anak_4.jpg'),
(22, 'stelan anak cowok', 'bahan kuat dan nyaman buat anak anak', 'pakaian anak anak', 300000, 300, 'baju_anak_anak3.jpg'),
(23, 'kemeja wanita', 'bahan nya kuat dan tidak transparant', 'pakaian wanita', 400000, 300, 'baju_wanita_1.jpg'),
(24, 'stelan wanita zaman now', 'satu paket ', 'Pakaian Wanita', 600000, 500, 'baju_wanita_2.jpeg'),
(25, 'hoodie cewek', 'bahan nya tebal dan cocok untuk msuim dingin', 'pakaian wanita', 70000, 500, 'baju_wanita_4.jpg'),
(26, 'bola kaki barca', 'bahan nya kuat dan tidak mudah sobek', 'peralatan olahraga', 400000, 700, 'bola_kaki.jpeg'),
(27, 'bola kaki nike', 'asli nike', 'peralatan olahraga', 1000000, 80, 'bola_kaki2.jpg'),
(28, 'burble', 'burble 20 kg', 'peralatan olahraga', 200000, 200, 'burble.jpg'),
(29, 'kemeja putih wanita', 'bahan nya elastis ', 'pakaian wanita', 500000, 140, 'kemeja_wanita_3.jpg'),
(30, 'matras ', 'cocok untuk olahraga di rumah', 'peralatan olahraga', 150000, 200, 'matras.jpeg'),
(31, 'perlengkapan yoga', 'bahan nya bagus', 'peralatan olahraga', 500000, 150, 'peralatan_yoga.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Afri', 'Padang Sumatra Barat', '2022-12-04 10:38:22', '2022-12-05 10:38:22'),
(2, 'Afri', 'Padang Sumatra Barat', '2022-12-04 10:40:36', '2022-12-05 10:40:36'),
(3, 'arnold', 'Padang Sumatra Barat', '2022-12-04 10:52:06', '2022-12-05 10:52:06'),
(4, '', '', '2022-12-05 19:04:58', '2022-12-06 19:04:58'),
(5, '', '', '2022-12-05 19:05:38', '2022-12-06 19:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `harga` varchar(25) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 3, 'Laptop Asus', '1', '50000000', ''),
(2, 1, 2, 'Canon', '1', '20000000', ''),
(3, 1, 4, 'iphone 14 pro max', '1', '30000000', ''),
(4, 1, 1, 'Sepatu', '2', '3000000', ''),
(5, 2, 3, 'Laptop Asus', '1', '50000000', ''),
(6, 2, 2, 'Canon', '1', '20000000', ''),
(7, 2, 4, 'iphone 14 pro max', '1', '30000000', ''),
(8, 2, 1, 'Sepatu', '2', '3000000', ''),
(9, 3, 1, 'Sepatu', '1', '3000000', ''),
(10, 3, 3, 'Laptop Asus', '1', '50000000', ''),
(11, 4, 2, 'Canon', '1', '20000000', ''),
(12, 4, 1, 'Sepatu', '1', '3000000', ''),
(13, 5, 4, 'iphone 14 pro max', '1', '30000000', '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '12345', 1),
(2, 'user', 'user', '12345', 2),
(3, 'Ali', 'Malin', '12345', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
