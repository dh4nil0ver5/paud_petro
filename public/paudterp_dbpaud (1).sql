-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 10:17 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paudterp_dbpaud`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id` int(11) NOT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  `nama` text DEFAULT NULL,
  `dinas` int(11) DEFAULT NULL,
  `bps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id`, `id_kecamatan`, `nama`, `dinas`, `bps`) VALUES
(1, 1, 'Desa Randuagung', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten_kota`
--

CREATE TABLE `kabupaten_kota` (
  `id` int(11) NOT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `nama` text DEFAULT NULL,
  `dinas` int(11) DEFAULT NULL,
  `bps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kabupaten_kota`
--

INSERT INTO `kabupaten_kota` (`id`, `id_provinsi`, `nama`, `dinas`, `bps`) VALUES
(1, 2, 'Kab. Gresik', 501, 3525);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Hiburan', '2', '2021-08-18 21:40:30', '2021-08-18 21:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `nama` text DEFAULT NULL,
  `dinas` int(11) DEFAULT NULL,
  `bps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `id_kota`, `nama`, `dinas`, `bps`) VALUES
(1, 1, 'Kec. Kebomas', 50109, 3525090);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_09_21_213028_p_p_d_b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int(10) NOT NULL,
  `instansi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_panggilan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota_kelahiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_rumah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kewarganegaraan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anak_ke` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_saudara_kandung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `APY` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bahasa_sehari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyakit_alergi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goldar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bb_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karakteristik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imunisasi_dasar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imunisasi_lanjutan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hubungan_anak_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir_ayah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kewarganegaraan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghasilan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_rumah_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp_rumahayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kantor_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp_kantorayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hubungan_anak_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir_ibu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kewarganegaraan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghasilan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_rumah_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp_rumahibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kantor_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp_kantoribu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaraklokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggalbersama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transportasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bakatminat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kontak_darurat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ppdb`
--

INSERT INTO `ppdb` (`id`, `instansi`, `nama_lengkap`, `nama_panggilan`, `jenis_kelamin`, `nik`, `no_kk`, `tanggal_lahir`, `kota_kelahiran`, `alamat_rumah`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `agama`, `kewarganegaraan`, `anak_ke`, `jumlah_saudara_kandung`, `tiri`, `angkat`, `APY`, `bahasa_sehari`, `penyakit_alergi`, `goldar`, `bb_lahir`, `karakteristik`, `imunisasi_dasar`, `imunisasi_lanjutan`, `nama_ayah`, `hubungan_anak_ayah`, `tgl_lahir_ayah`, `agama_ayah`, `kewarganegaraan_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `alamat_rumah_ayah`, `notelp_rumahayah`, `kantor_ayah`, `notelp_kantorayah`, `nama_ibu`, `hubungan_anak_ibu`, `tgl_lahir_ibu`, `agama_ibu`, `kewarganegaraan_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `alamat_rumah_ibu`, `notelp_rumahibu`, `kantor_ibu`, `notelp_kantoribu`, `jaraklokasi`, `tinggalbersama`, `transportasi`, `bakatminat`, `email`, `foto`, `kontak_darurat`, `status`) VALUES
(1, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'KB Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'TK Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'TK Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'KB Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'TK Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'KB Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'TK Simanjuntak', 'Devan', 'Devan', 'Laki-laki', '3525', '352514', '2011-08-12', 'Gresik', 'Randuagung', '1', '1', '1', NULL, 'Islam', 'Indo', '1', '1', 'tidak', 'tidak', 'kosong', 'Bahasa Indonesia', 'Tidak', 'Laki-laki', '2,6', 'Besar', 'Lengkap', 'Tidak', 'Riza', 'Kandung', '11/22/1981', 'Islam', 'Indo', 'S1', 'Swasta', '3000000', 'Randuagung', '0818828', 'Kebomas', '031', 'Dina', 'Kandung', '11/22/1983', 'Islam', 'Indo', 'Wali', 'Karyawan', '1000000', 'Randu', '08128282', 'Simanjuntak', '08138388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'KB Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'KB Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'KB Pongangan', 'Mahira Asyila Daviq', 'Mahira', 'Laki-laki', '3525104712170001', '3525102712170001', '2017-12-07', 'Gresik', 'Jl kayu 4 no 14 pongangan', '1', '1', '1', NULL, 'Islam', 'Indonesia', '1', '1', 'tidak', 'tidak', 'kosong', 'Bahasa Indonesia', 'Tidak ada', 'Laki-laki', '2900 gram', 'Tidak ada', 'Lengkap', 'Lengkap', 'Muhammad Daviq Ronadlon', 'Kandung', '05/17/1986', 'Islam', 'WNI', 'S2', 'PNS', '8000000', 'Jl kayu 4 no 14 pongangan', '085315099989', 'Kementerian Ketenagakerjaan RI, Jakarta', '085315099989', 'Vivi shantya kumalasari', 'Kandung', '09/16/1986', 'Islam', 'WNI', 'Wali', 'IRT', '0', 'Jl kayu 4 no 14 pongangan', '085648078133', '-', '-', '250 m', NULL, NULL, 'Menyanyi dan menari', 'shantyaku@gmail.com', NULL, '085648078133', NULL),
(12, 'KB Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'KB Simanjuntak', 'janda', 'uy', 'Laki-laki', '3276046501920004', '3276046501920001', '1954-01-04', 'bhd', 'bhdddjdh', '1', '1', '1', NULL, 'Islam', 'Indonesia', '1', '10', 'tidak', 'tidak', 'kosong', 'Bahasa Indonesia', 'janda', 'Laki-laki', '30kg', 'djjd', 'jdjd', 'jffj', 'jcjch', 'Tiri', '05/07/1993', 'Islam', 'indonrsia', 'Angkat', 'idudjdh', '5461319', 'bhdddjdh', 'pwuwued', 'hdhf', '027282', 'jdhfhd', 'Kandung', '01/04/2000', 'Islam', 'Indonesia', 'Wali', 'fjjff', '95959555', 'dhd', '01829282', 'jshdd', '0129376373', 'hdhfuduf', NULL, NULL, 'dydy', 'jeuhsh@gmail.com', NULL, '9272928202829822', NULL),
(14, 'KB Pongangan', 'Mahira Asyila Daviq', 'Mahira', 'Laki-laki', '3525104712170001', '3525102712170001', '2017-12-07', 'Gresik', 'Jl kayu 4 no 14 perum. Pongangan indah', '1', '1', '1', NULL, 'Islam', 'WNI', '1', '1', 'tidak', 'tidak', 'kosong', 'Bahasa Indonesia', 'Tidak', 'Laki-laki', '2,9', 'Tidak ada', 'Lengkap', 'Lengkap', 'Muhammad Daviq Romadlon', 'Kandung', '05/17/1986', 'Islam', 'WNI', 'S2', 'PNS', NULL, 'Jl kayu 4 no 14 perum. Pongangan indah', '085315099989', 'Jakarta', '-', 'Vivi shantya kumalasari', 'Kandung', '09/16/1986', 'Islam', 'WNI', 'Wali', 'IRT', NULL, 'Jl kayu 4 no 14 perum. Pongangan indah', '085648078133', '-', '-', '250 m', NULL, NULL, 'Menyanyi, menari', 'shantyaku@gmail.com', NULL, '085648078133', NULL),
(15, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'TPA Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'TK Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'KB Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'TK Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'KB Pongangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'TK Simanjuntak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'TK Simanjuntak', 'NUR CHAMDANI', 'd', 'Laki-laki', '123456', '1234567', '2021-08-02', 'Las Vegas, NV, USA', 'Dr Wahidin SH gg.38 No.22 RT/RW 02/01', '1', '1', '1', NULL, 'Islam', 'in', '1', '1', 'tidak', 'tidak', 'kosong', 'Bahasa Indonesia', '-', 'Laki-laki', '3', '-', '-', '-', '1', 'Kandung', '08/12/2021', 'Islam', '1', 'tidak ada', '1', '123', 'Dr Wahidin SH gg.38 No.22 RT/RW 02/01', '123', 'c', '123', 'c', 'Kandung', '08/12/2021', 'Islam', '11', 'Kandung', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, '1', 'teksin.cuch@gmail.com', NULL, '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tk` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `tk`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'admin@gmail.com', NULL, '$2y$10$fZuAElJaVhH0HfWGzyuUK.XLOg1BdCVKBDQ7bUzSkoWdnPnxpmA8G', 'IJ3kYzhmjHkuknIcnn0j4YsuDRQXG6Yz3kffQ0445nHHcPWOHsIn8HcCRwb7', '2020-09-23 17:10:08', '2020-09-23 17:10:08'),
(2, 'dani', NULL, 'siman@gmail.com', NULL, '$2y$10$K6EghfQ.6Yr2M2F4A2m2Ue3JzkQvt8VF2hvodlfOcTMfA05uMYRT2', 'shPcqFpWFKiL7zz7n0jfxU3ZoRKGzCXcsbpFcs3RBSU0PYQIgKiiZCN8Fhj3', '2020-10-05 21:00:00', '2020-10-05 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id` int(11) NOT NULL,
  `kode_dinas` int(11) DEFAULT NULL,
  `kode_bps` int(11) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id`, `kode_dinas`, `kode_bps`, `provinsi`) VALUES
(1, 1, 31, 'DKI Jakarta'),
(2, 5, 35, 'Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `wpda_commentmeta`
--

CREATE TABLE `wpda_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpda_comments`
--

CREATE TABLE `wpda_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpda_links`
--

CREATE TABLE `wpda_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpda_litespeed_img_optm`
--

CREATE TABLE `wpda_litespeed_img_optm` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `optm_status` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `src` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `srcpath_md5` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `src_md5` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `root_id` int(11) NOT NULL DEFAULT 0,
  `src_filesize` int(11) NOT NULL DEFAULT 0,
  `target_filesize` int(11) NOT NULL DEFAULT 0,
  `target_saved` int(11) NOT NULL DEFAULT 0,
  `webp_filesize` int(11) NOT NULL DEFAULT 0,
  `webp_saved` int(11) NOT NULL DEFAULT 0,
  `server_info` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpda_litespeed_optimizer`
--

CREATE TABLE `wpda_litespeed_optimizer` (
  `id` int(11) NOT NULL,
  `hash_name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'hash.filetype',
  `src` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'full url array set',
  `dateline` int(11) NOT NULL,
  `refer` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The container page url'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpda_options`
--

CREATE TABLE `wpda_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_options`
--

INSERT INTO `wpda_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://paudterpadu-pikpg.sch.id', 'yes'),
(2, 'home', 'https://paudterpadu-pikpg.sch.id', 'yes'),
(3, 'blogname', 'Paud Terpadu PIKPG', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@paudterpadu-pikpg.sch.id', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(1443, '_transient_timeout_wpseo_link_table_inaccessible', '1599296288', 'no'),
(1444, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(1445, '_transient_timeout_wpseo_meta_table_inaccessible', '1599296288', 'no'),
(1446, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(1451, 'wpseo-gsc', 'a:1:{s:7:\"profile\";s:33:\"https://paudterpadu-pikpg.sch.id/\";}', 'yes'),
(1454, 'wpseo_gsc_issues_counts', 'a:0:{}', 'yes'),
(1484, 'wpseo_gsc_last_fetch', '1567825526', 'no'),
(1505, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:47:\"instant-demo-importer/instant-demo-importer.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:68:\"/home/paudterp/public_html/wp-content/themes/wp-corporate/header.php\";i:1;s:67:\"/home/paudterp/public_html/wp-content/themes/wp-corporate/style.css\";i:2;s:67:\"/home/paudterp/public_html/wp-content/themes/wp-corporate/index.php\";i:3;s:74:\"/home/paudterp/public_html/wp-content/themes/wp-corporate/tpl-homepage.php\";i:5;s:68:\"/home/paudterp/public_html/wp-content/themes/wp-corporate/footer.php\";}', 'no'),
(40, 'template', 'wp-corporate', 'yes'),
(41, 'stylesheet', 'wp-corporate', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:3:{s:5:\"title\";s:14:\"ABOUT 8 DEGREE\";s:4:\"text\";s:306:\"<p>Whether another or built up business or association, you can look to us to best lucid who you are, your main event, and above all, why any of it makes as said in delightfull.</p>\r\n<span>8Degreethemes - Mathuri Sadan, Ravi Bhawan, Kathmandu</span><br>\r\n<span><b>E-mail:</b>  info@8degreethemes.com</span>\";s:6:\"filter\";b:0;}i:3;a:3:{s:5:\"title\";s:12:\"OUR SERVICES\";s:4:\"text\";s:146:\"<ul>\r\n<li>Software Integration</li>\r\n<li>Web Development</li>\r\n<li>Revolution Themes</li>\r\n<li>Web Designing</li>\r\n<li>Parallax Themes</li>\r\n</ul>\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:53:\"LiteSpeed_Cache_Activation::uninstall_litespeed_cache\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '23', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '631', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wpda_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:11:\"Recent Post\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}i:4;a:3:{s:5:\"title\";s:11:\"Recent Post\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:14:\"recent-posts-3\";i:2;s:7:\"pages-1\";i:3;s:12:\"categories-3\";}s:26:\"wp-corporate-right-sidebar\";a:2:{i:0;s:8:\"search-4\";i:1;s:7:\"pages-2\";}s:25:\"wp-corporate-left-sidebar\";a:2:{i:0;s:10:\"calendar-1\";i:1;s:12:\"categories-4\";}s:23:\"wp-corporate-footer-one\";a:0:{}s:23:\"wp-corporate-footer-two\";a:0:{}s:25:\"wp-corporate-footer-three\";a:0:{}s:24:\"wp-corporate-footer-four\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:4:{i:1;a:3:{s:5:\"title\";s:5:\"Pages\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:40:\"193,209,219,213,216,100,229,230,222,224,\";}i:2;a:3:{s:5:\"title\";s:5:\"Pages\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:47:\"193,209,219,213,216,100,229,230,222,224,283,279\";}i:3;a:3:{s:5:\"title\";s:5:\"PAGES\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:65:\"2,315,312,313,314,193,209,219,213,216,100,229,230,222,224,283,279\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:2:{i:1;a:1:{s:5:\"title\";s:8:\"Calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:7:{i:1582687088;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582689188;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582707488;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582721588;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582764815;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582766769;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1550796914;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(1496, 'db_upgraded', '', 'yes'),
(717, 'litespeed-cache-conf', 'a:126:{s:7:\"version\";s:7:\"2.9.8.5\";s:12:\"radio_select\";i:1;s:12:\"auto_upgrade\";b:0;s:13:\"purge_upgrade\";b:1;s:10:\"cache_priv\";b:1;s:15:\"cache_commenter\";b:1;s:10:\"cache_rest\";b:1;s:16:\"cache_page_login\";b:1;s:10:\"timed_urls\";s:0:\"\";s:15:\"timed_urls_time\";s:0:\"\";s:13:\"cache_favicon\";b:1;s:15:\"cache_resources\";b:1;s:18:\"mobileview_enabled\";b:0;s:16:\"mobileview_rules\";s:62:\"Mobile|Android|Silk/|Kindle|BlackBerry|Opera\\ Mini|Opera\\ Mobi\";s:12:\"cache_object\";b:0;s:17:\"cache_object_kind\";b:0;s:17:\"cache_object_host\";s:9:\"localhost\";s:17:\"cache_object_port\";s:5:\"11211\";s:17:\"cache_object_life\";s:3:\"360\";s:23:\"cache_object_persistent\";b:1;s:18:\"cache_object_admin\";b:1;s:23:\"cache_object_transients\";b:1;s:18:\"cache_object_db_id\";i:0;s:17:\"cache_object_user\";s:0:\"\";s:17:\"cache_object_pswd\";s:0:\"\";s:13:\"cache_browser\";b:0;s:17:\"cache_browser_ttl\";i:2592000;s:12:\"login_cookie\";s:0:\"\";s:19:\"check_advancedcache\";b:1;s:23:\"use_http_for_https_vary\";b:0;s:17:\"debug_disable_all\";b:0;s:5:\"debug\";i:0;s:9:\"admin_ips\";s:9:\"127.0.0.1\";s:11:\"debug_level\";b:0;s:13:\"log_file_size\";i:3;s:9:\"heartbeat\";b:1;s:12:\"debug_cookie\";b:0;s:10:\"collaps_qs\";b:0;s:11:\"log_filters\";b:0;s:10:\"public_ttl\";i:604800;s:11:\"private_ttl\";i:1800;s:14:\"front_page_ttl\";i:604800;s:8:\"feed_ttl\";i:0;s:7:\"403_ttl\";i:3600;s:7:\"404_ttl\";i:3600;s:7:\"500_ttl\";i:3600;s:13:\"purge_by_post\";s:22:\"A.F.H.M.PGS.PGSRP.PT.T\";s:11:\"excludes_qs\";s:0:\"\";s:12:\"excludes_cat\";s:0:\"\";s:12:\"excludes_tag\";s:0:\"\";s:13:\"instant_click\";b:0;s:10:\"css_minify\";b:0;s:17:\"css_inline_minify\";b:0;s:11:\"css_combine\";b:0;s:21:\"css_combined_priority\";b:0;s:9:\"css_http2\";b:0;s:11:\"css_exclude\";s:0:\"\";s:9:\"js_minify\";b:0;s:16:\"js_inline_minify\";b:0;s:10:\"js_combine\";b:0;s:20:\"js_combined_priority\";b:0;s:8:\"js_http2\";b:0;s:10:\"js_exclude\";s:0:\"\";s:12:\"optimize_ttl\";i:604800;s:11:\"html_minify\";b:0;s:10:\"optm_qs_rm\";b:0;s:15:\"optm_ggfonts_rm\";b:0;s:14:\"optm_css_async\";b:0;s:13:\"optm_ccss_gen\";b:1;s:15:\"optm_ccss_async\";b:1;s:21:\"optm_css_async_inline\";b:1;s:13:\"optm_js_defer\";b:0;s:13:\"optm_emoji_rm\";b:0;s:19:\"optm_exclude_jquery\";b:1;s:18:\"optm_ggfonts_async\";b:0;s:13:\"optm_max_size\";d:1.1999999999999999555910790149937383830547332763671875;s:15:\"optm_rm_comment\";b:0;s:3:\"cdn\";b:0;s:7:\"cdn_ori\";s:0:\"\";s:11:\"cdn_exclude\";s:0:\"\";s:17:\"cdn_remote_jquery\";b:0;s:8:\"cdn_quic\";b:0;s:14:\"cdn_quic_email\";s:0:\"\";s:12:\"cdn_quic_key\";s:0:\"\";s:14:\"cdn_cloudflare\";b:0;s:20:\"cdn_cloudflare_email\";s:0:\"\";s:18:\"cdn_cloudflare_key\";s:0:\"\";s:19:\"cdn_cloudflare_name\";s:0:\"\";s:19:\"cdn_cloudflare_zone\";s:0:\"\";s:14:\"media_img_lazy\";b:0;s:26:\"media_img_lazy_placeholder\";s:0:\"\";s:22:\"media_placeholder_resp\";b:0;s:28:\"media_placeholder_resp_color\";s:7:\"#cfd4db\";s:28:\"media_placeholder_resp_async\";b:1;s:17:\"media_iframe_lazy\";b:0;s:23:\"media_img_lazyjs_inline\";b:0;s:15:\"media_optm_auto\";b:0;s:15:\"media_optm_cron\";b:1;s:14:\"media_optm_ori\";b:1;s:17:\"media_rm_ori_bkup\";b:0;s:15:\"media_optm_webp\";b:0;s:19:\"media_optm_lossless\";b:0;s:15:\"media_optm_exif\";b:0;s:18:\"media_webp_replace\";b:0;s:25:\"media_webp_replace_srcset\";b:0;s:4:\"hash\";s:32:\"LmwsFfZk4u4ZqoEwqkm9s1G5yMdEETuH\";s:15:\"nocache_cookies\";s:0:\"\";s:18:\"nocache_useragents\";s:0:\"\";s:21:\"crawler_include_posts\";b:1;s:21:\"crawler_include_pages\";b:1;s:20:\"crawler_include_cats\";b:1;s:20:\"crawler_include_tags\";b:1;s:20:\"crawler_excludes_cpt\";s:0:\"\";s:19:\"crawler_order_links\";s:9:\"date_desc\";s:14:\"crawler_usleep\";i:500;s:20:\"crawler_run_duration\";i:400;s:20:\"crawler_run_interval\";i:600;s:22:\"crawler_crawl_interval\";i:302400;s:15:\"crawler_threads\";i:3;s:18:\"crawler_load_limit\";i:1;s:17:\"crawler_domain_ip\";s:0:\"\";s:22:\"crawler_custom_sitemap\";s:0:\"\";s:19:\"crawler_cron_active\";b:0;s:11:\"esi_enabled\";b:0;s:17:\"esi_cached_admbar\";b:1;s:19:\"esi_cached_commform\";b:1;}', 'yes'),
(1503, 'can_compress_scripts', '1', 'no'),
(3330, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1582681301;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(139, 'current_theme', 'WP Corporate', 'yes'),
(140, 'theme_mods_wp-corporate', 'a:125:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:16:\"background_color\";s:6:\"ffffff\";s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:4:\"fill\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:41:\"wp_corporate_basic_setting_webpage_layout\";s:9:\"fullwidth\";s:41:\"wp_corporate_header_setting_social_option\";i:1;s:43:\"wp_corporate_header_settings_logo_alignment\";s:4:\"left\";s:41:\"wp_corporate_header_setting_search_option\";i:0;s:43:\"wp_corporate_header_setting_slider_category\";i:18;s:42:\"wp_corporate_header_setting_slider_caption\";i:0;s:40:\"wp_corporate_header_setting_slider_pager\";i:0;s:43:\"wp_corporate_header_setting_slider_controls\";i:0;s:50:\"wp_corporate_header_setting_slider_transition_auto\";i:1;s:43:\"wp_corporate_homepage_setting_slider_option\";i:1;s:45:\"wp_corporate_homepage_setting_featured_option\";i:0;s:50:\"wp_corporate_homepage_setting_featured_page_option\";i:0;s:43:\"wp_corporate_homepage_setting_featured_page\";i:100;s:49:\"wp_corporate_innerpage_setting_single_page_slider\";i:0;s:49:\"wp_corporate_innerpage_setting_single_page_layout\";s:13:\"right-sidebar\";s:41:\"wp_corporate_footer_setting_social_option\";i:0;s:48:\"wp_corporate_basic_setting_footer_copyright_text\";s:18:\"Paud Terpadu PIKPG\";s:41:\"wp_corporate_header_setting_reorder_order\";s:12:\"slider,menu,\";s:50:\"wp_corporate_header_setting_slider_transition_type\";s:7:\"fadeOut\";s:44:\"wp_corporate_homepage_setting_counter_option\";i:0;s:43:\"wp_corporate_homepage_setting_counter_image\";s:73:\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/09/IbuDirut1.jpg\";s:41:\"wp_corporate_homepage_setting_counter_one\";i:5000;s:42:\"wp_corporate_homepage_setting_skill_option\";i:0;s:41:\"wp_corporate_header_setting_slider_option\";i:0;s:50:\"wp_corporate_homepage_setting_featured_post_option\";i:0;s:43:\"wp_corporate_homepage_setting_featured_post\";i:9;s:45:\"wp_corporate_homepage_setting_client_category\";i:9;s:43:\"wp_corporate_homepage_setting_client_option\";i:0;s:48:\"wp_corporate_homepage_setting_testimonial_option\";i:0;s:50:\"wp_corporate_homepage_setting_testimonial_category\";i:9;s:41:\"wp_corporate_homepage_setting_blog_option\";i:0;s:43:\"wp_corporate_homepage_setting_blog_category\";i:9;s:44:\"wp_corporate_homepage_setting_contact_option\";i:1;s:47:\"wp_corporate_innerpage_setting_blog_page_layout\";s:10:\"no-sidebar\";s:48:\"wp_corporate_homepage_setting_portfolio_category\";i:5;s:44:\"wp_corporate_homepage_setting_portfolio_desc\";s:124:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \";s:46:\"wp_corporate_homepage_setting_portfolio_option\";i:1;s:43:\"wp_corporate_homepage_setting_team_category\";i:10;s:45:\"wp_corporate_innerpage_setting_team_list_type\";i:1;s:52:\"wp_corporate_innerpage_setting_testimonial_list_type\";i:0;s:49:\"wp_corporate_innerpage_setting_testimonial_slider\";i:0;s:42:\"wp_corporate_innerpage_setting_team_layout\";s:13:\"right-sidebar\";s:48:\"wp_corporate_header_setting_slider_readmore_link\";s:0:\"\";s:47:\"wp_corporate_innerpage_setting_blog_page_slider\";i:0;s:42:\"wp_corporate_innerpage_setting_team_slider\";i:0;s:52:\"wp_corporate_innerpage_setting_portfolio_page_slider\";i:0;s:49:\"wp_corporate_innerpage_setting_testimonial_layout\";s:13:\"right-sidebar\";s:45:\"wp_corporate_innerpage_setting_archive_slider\";i:0;s:45:\"wp_corporate_innerpage_setting_archive_layout\";s:13:\"right-sidebar\";s:42:\"wp_corporate_homepage_setting_contact_form\";s:47:\"[contact-form-7 id=\"41\" title=\"Contact form 1\"]\";s:49:\"wp_corporate_innerpage_setting_single_post_slider\";i:0;s:49:\"wp_corporate_innerpage_setting_single_post_layout\";s:12:\"both-sidebar\";s:41:\"wp_corporate_homepage_setting_team_option\";i:1;s:42:\"wp_corporate_homepage_setting_client_title\";s:12:\"Lembaga Kami\";s:41:\"wp_corporate_homepage_setting_client_desc\";s:38:\"Lembaga-lembaga formal dan non formal \";s:40:\"wp_corporate_homepage_setting_cta_option\";i:0;s:41:\"wp_corporate_homepage_setting_skill_image\";s:72:\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/09/IbuDirut.jpg\";s:49:\"wp_corporate_social_setting_section_option_header\";i:1;s:39:\"wp_corporate_header_setting_callto_text\";s:21:\"Hub Kami 031 -3984958\";s:54:\"wp_corporate_innerpage_setting_portfolio_page_category\";i:9;s:44:\"wp_corporate_innerpage_setting_team_category\";i:9;s:48:\"wp_corporate_header_setting_slider_readmore_text\";s:12:\"Selengkapnya\";s:45:\"wp_corporate_homepage_setting_client_subtitle\";s:0:\"\";s:43:\"wp_corporate_homepage_setting_client_button\";s:9:\"READ MORE\";s:39:\"wp_corporate_homepage_setting_blog_desc\";s:9:\"Deskripsi\";s:40:\"wp_corporate_homepage_setting_cta_button\";s:10:\"JOIN TODAY\";s:39:\"wp_corporate_homepage_setting_cta_title\";s:37:\"Let\'s make outstanding work together!\";s:47:\"wp_corporate_innerpage_setting_blog_post_layout\";s:12:\"medium-image\";s:50:\"wp_corporate_innerpage_setting_archive_post_layout\";s:11:\"large-image\";s:42:\"wp_corporate_header_setting_reorder_orders\";s:12:\"slider,menu,\";s:47:\"wp_corporate_innerpage_setting_team_post_layout\";s:4:\"grid\";s:11:\"header_text\";i:0;s:47:\"wp_corporate_homepage_setting_testimonial_title\";s:0:\"\";s:50:\"wp_corporate_homepage_setting_testimonial_subtitle\";s:0:\"\";s:43:\"wp_corporate_homepage_setting_counter_title\";s:22:\"Assalamu\'alaikum Wr.Wb\";s:46:\"wp_corporate_homepage_setting_counter_subtitle\";s:0:\"\";s:42:\"wp_corporate_homepage_setting_counter_desc\";s:583:\"Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .\n\n            Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami.\n            Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘  \";s:46:\"wp_corporate_homepage_setting_counter_one_text\";s:9:\"READ MORE\";s:46:\"wp_corporate_homepage_setting_counter_one_icon\";s:9:\"fa-coffee\";s:41:\"wp_corporate_homepage_setting_counter_two\";i:5000;s:46:\"wp_corporate_homepage_setting_counter_two_text\";s:42:\"https://paudterpadu-pikpg.sch.id/sambutan/\";s:46:\"wp_corporate_homepage_setting_counter_two_icon\";s:9:\"fa-coffee\";s:43:\"wp_corporate_homepage_setting_counter_three\";i:5000;s:48:\"wp_corporate_homepage_setting_counter_three_text\";s:13:\"HAPPY Clients\";s:48:\"wp_corporate_homepage_setting_counter_three_icon\";s:9:\"fa-coffee\";s:42:\"wp_corporate_homepage_setting_counter_four\";i:4999;s:47:\"wp_corporate_homepage_setting_counter_four_text\";s:13:\"HAPPY Clients\";s:47:\"wp_corporate_homepage_setting_counter_four_icon\";s:9:\"fa-coffee\";s:42:\"wp_corporate_homepage_setting_counter_five\";i:5000;s:47:\"wp_corporate_homepage_setting_counter_five_text\";s:13:\"HAPPY Clients\";s:47:\"wp_corporate_homepage_setting_counter_five_icon\";s:9:\"fa-coffee\";s:41:\"wp_corporate_homepage_setting_counter_six\";i:5001;s:46:\"wp_corporate_homepage_setting_counter_six_text\";s:13:\"HAPPY Clients\";s:46:\"wp_corporate_homepage_setting_counter_six_icon\";s:9:\"fa-coffee\";s:38:\"wp_corporate_homepage_setting_cta_desc\";s:190:\"As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a mobile-first mentality.\";s:40:\"wp_corporate_homepage_setting_blog_title\";s:27:\"Lemabaga Paud Terpadu PIKPG\";s:43:\"wp_corporate_homepage_setting_blog_subtitle\";s:0:\"\";s:41:\"wp_corporate_homepage_setting_skill_title\";s:22:\"Assalamu\'alaikum Wr.Wb\";s:44:\"wp_corporate_homepage_setting_skill_subtitle\";s:0:\"\";s:40:\"wp_corporate_homepage_setting_skill_desc\";s:1635:\"Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .\n\n            Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .\n\n            Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :\n\n1.TPA PIKPG Simanjuntak\n\n2.Kelompok Bermain PIKPG Simanjuntak\n\n3.TK PIKPG Simanjuntak\n\n4.TPA PIKPG Pongangan\n\n5.Kelompok Bermain PIKPG Pongangan\n\n6.TK PIKPG Pongangan\n\n            Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .\n\n            Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .\n\nTerimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .\";s:46:\"wp_corporate_header_setting_search_placeholder\";s:0:\"\";s:39:\"wp_corporate_header_setting_search_text\";s:0:\"\";s:51:\"wp_corporate_header_setting_slider_transition_speed\";i:4000;s:39:\"wp_corporate_header_setting_social_text\";s:27:\"Tetap Terhubung dengan Kami\";s:48:\"wp_corporate_homepage_setting_client_button_link\";s:60:\"https://paudterpadu-pikpg.sch.id/lembaga-paud-terpadu-pikpg/\";s:39:\"wp_corporate_homepage_setting_skill_one\";i:1;s:44:\"wp_corporate_homepage_setting_skill_one_text\";s:0:\"\";s:39:\"wp_corporate_homepage_setting_skill_two\";i:0;s:44:\"wp_corporate_homepage_setting_skill_two_text\";s:0:\"\";s:41:\"wp_corporate_homepage_setting_skill_three\";i:0;s:46:\"wp_corporate_homepage_setting_skill_three_text\";s:0:\"\";s:39:\"wp_corporate_footer_setting_social_text\";s:0:\"\";s:28:\"wp_corporate_social_facebook\";s:40:\"facebook.com/paudterpadupikpgsimanjuntak\";}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(1424, 'litespeed-adv-purge_all_hooks', 'switch_theme\nwp_create_nav_menu\nwp_update_nav_menu\nwp_delete_nav_menu\ncreate_term\nedit_terms\ndelete_term\nadd_link\nedit_link\ndelete_link', 'yes'),
(1425, 'litespeed-log_ignore_filters', 'gettext\ngettext_with_context\nget_the_terms\nget_term', 'yes'),
(1426, 'litespeed-log_ignore_part_filters', 'i18n\nlocale\nsettings\noption', 'yes'),
(1427, 'litespeed-crawler-as-uids', '', 'yes'),
(1428, 'litespeed-crawler-cookies', 'a:0:{}', 'yes'),
(1429, 'litespeed-object_global_groups', 'users\nuserlogins\nusermeta\nuser_meta\nsite-transient\nsite-options\nsite-lookup\nblog-lookup\nblog-details\nrss\nglobal-posts\nblog-id-cache', 'yes'),
(1430, 'litespeed-object_non_persistent_groups', 'comment\ncounts\nplugins', 'yes'),
(1431, 'litespeed-cache-vary-group', '', 'yes'),
(621, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"admin@paudterpadu-pikpg.sch.id\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1576266683;}', 'no'),
(3248, 'category_children', 'a:1:{i:8;a:3:{i:0;i:13;i:1;i:14;i:2;i:15;}}', 'yes'),
(4031, '_site_transient_timeout_theme_roots', '1582683099', 'no'),
(4032, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"wp-corporate\";s:7:\"/themes\";}', 'no'),
(972, 'litespeed-timestamp-purge-css', '1576028544', 'yes'),
(974, 'litespeed-media-placeholder-summary', 'a:0:{}', 'yes'),
(973, 'litespeed-ccss-summary', 'a:2:{s:5:\"queue\";a:0:{}s:12:\"curr_request\";i:0;}', 'yes'),
(976, 'wpda_litespeed_img_optm', '2.9.7', 'yes'),
(977, 'wpda_litespeed_optimizer', '2.9.7', 'yes'),
(980, 'litespeed-gui-summary', 'a:5:{s:24:\"banner_promo.new_version\";i:1561430616;s:12:\"banner_promo\";i:1561776216;s:16:\"score.last_check\";i:1576027558;s:22:\"new_version.last_check\";i:1576027563;s:13:\"new_version.v\";s:7:\"2.9.9.2\";}', 'yes'),
(1407, 'litespeed-cache_uri_priv', '', 'yes'),
(1408, 'litespeed-cache-drop_qs', '', 'yes'),
(1409, 'litespeed-forced_cache_uri', '', 'yes'),
(1410, 'litespeed-excludes_uri', '', 'yes'),
(1411, 'litespeed-cache-exclude-cache-roles', 'a:0:{}', 'yes'),
(1412, 'litespeed-optm-css', 'a:0:{}', 'yes'),
(1413, 'litespeed-optm_excludes', '', 'yes'),
(1414, 'litespeed-optm-js-defer-excludes', '', 'yes'),
(1415, 'litespeed-cache-exclude-optimization-roles', 'a:0:{}', 'yes'),
(1416, 'litespeed-cache-dns_prefetch', '', 'yes'),
(1417, 'litespeed-optm-ccss-separate_posttype', '', 'yes'),
(1418, 'litespeed-optm-css-separate_uri', '', 'yes'),
(1419, 'litespeed-media-lazy-img-excludes', '', 'yes'),
(1420, 'litespeed-media-lazy-img-cls-excludes', '', 'yes'),
(1421, 'litespeed-media-webp_attribute', 'img.src\ndiv.data-thumb\nimg.data-src\ndiv.data-large_image\nimg.retina_logo_url', 'yes'),
(1422, 'litespeed-cdn-ori_dir', 'wp-content\nwp-includes\n/min/', 'yes'),
(1423, 'litespeed-cache-cdn_mapping', 'a:1:{i:0;a:5:{s:3:\"url\";b:0;s:7:\"inc_img\";s:1:\"1\";s:7:\"inc_css\";s:1:\"1\";s:6:\"inc_js\";s:1:\"1\";s:8:\"filetype\";s:86:\".aac\n.css\n.eot\n.gif\n.jpeg\n.js\n.jpg\n.less\n.mp3\n.mp4\n.ogg\n.otf\n.pdf\n.png\n.svg\n.ttf\n.woff\";}}', 'yes'),
(1389, 'litespeed_api_key_hash', 'KjPgJDDmcrWyTtxD', 'yes'),
(4034, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582681303;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";s:12:\"wp-corporate\";s:5:\"1.1.0\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"wp-corporate\";a:6:{s:5:\"theme\";s:12:\"wp-corporate\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/wp-corporate/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/wp-corporate.1.1.3.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"5.3\";}}s:12:\"translations\";a:0:{}}', 'no'),
(4035, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582681303;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"13.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.13.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"2.9.9.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.2.9.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=1574145\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=1574145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2031698\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2031698\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1394, 'litespeed_api_key', 'KpYDqdOTjjLj9vyAHL6Na3BbhWtFhh81', 'yes'),
(3301, '_transient_is_multi_author', '0', 'yes'),
(3369, '_transient_wp_corporate_categories', '2', 'yes'),
(3226, 'litespeed_messages', 'a:2:{i:0;b:0;i:1;s:94:\"<div class=\"notice notice-success is-dismissible\"><p>Purged all caches successfully.</p></div>\";}', 'yes'),
(1405, 'recently_activated', 'a:0:{}', 'yes'),
(1448, 'wpseo-gsc-refresh_token', '1/9S5zn-MAGon28CdP2aC-xdHfSlHznNmkHmVGsu7FK_Y', 'yes'),
(1449, 'wpseo-gsc-access_token', 'a:5:{s:13:\"refresh_token\";s:45:\"1/9S5zn-MAGon28CdP2aC-xdHfSlHznNmkHmVGsu7FK_Y\";s:12:\"access_token\";s:131:\"ya29.Glx8Bzv9F-Ps_mD43BcW4zkkbDzg-R1WhRi2oV0cmTGo6exPKKx1VF7i3zM1fdo791g1G0wrrvLqhvHTq2pI5Wnp6DmULNOHlDInFclus6aTIlRgfsQWOSc0jg_qMQ\";s:7:\"expires\";i:1567829126;s:10:\"expires_in\";i:3600;s:7:\"created\";i:1567825526;}', 'yes'),
(1439, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"12.0\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1567760288;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(1440, 'wpseo_titles', 'a:74:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:51:\"%%sitename%% %%title%% %%primary_category%% %%sep%%\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:51:\"%%sitename%% %%title%% %%primary_category%% %%sep%%\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(1441, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(1442, 'wpseo_flush_rewrite', '1', 'yes');
INSERT INTO `wpda_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1483, 'rewrite_rules', 'a:91:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1502, 'recovery_keys', 'a:0:{}', 'yes'),
(1388, 'litespeed_api_cloud', 'https://as.wp.api.litespeedtech.com', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wpda_postmeta`
--

CREATE TABLE `wpda_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_postmeta`
--

INSERT INTO `wpda_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2131;s:6:\"height\";i:161;s:4:\"file\";s:16:\"2019/02/logo.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x23.png\";s:5:\"width\";i:300;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"logo-768x58.png\";s:5:\"width\";i:768;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"logo-1024x77.png\";s:5:\"width\";i:1024;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:16:\"logo-600x161.png\";s:5:\"width\";i:600;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:16:\"logo-800x161.png\";s:5:\"width\";i:800;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:17:\"logo-1170x161.png\";s:5:\"width\";i:1170;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2019/02/logo.png'),
(7, 7, '_wp_attached_file', '2019/02/cropped-logo.png'),
(8, 7, '_wp_attachment_context', 'custom-logo'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2131;s:6:\"height\";i:161;s:4:\"file\";s:24:\"2019/02/cropped-logo.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-logo-300x23.png\";s:5:\"width\";i:300;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"cropped-logo-768x58.png\";s:5:\"width\";i:768;s:6:\"height\";i:58;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1024x77.png\";s:5:\"width\";i:1024;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:24:\"cropped-logo-600x161.png\";s:5:\"width\";i:600;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:24:\"cropped-logo-800x161.png\";s:5:\"width\";i:800;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1170x161.png\";s:5:\"width\";i:1170;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 11, '_customize_changeset_uuid', '2a7a6ac9-6a41-4727-854a-899412944319'),
(20, 11, '_edit_lock', '1550798231:1'),
(21, 13, '_menu_item_type', 'custom'),
(22, 13, '_menu_item_menu_item_parent', '0'),
(23, 13, '_menu_item_object_id', '13'),
(24, 13, '_menu_item_object', 'custom'),
(25, 13, '_menu_item_target', ''),
(26, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 13, '_menu_item_xfn', ''),
(28, 13, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id/tk-simanjuntak'),
(30, 14, '_menu_item_type', 'custom'),
(31, 14, '_menu_item_menu_item_parent', '0'),
(32, 14, '_menu_item_object_id', '14'),
(33, 14, '_menu_item_object', 'custom'),
(34, 14, '_menu_item_target', ''),
(35, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 14, '_menu_item_xfn', ''),
(37, 14, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id/tpa-simanjuntak'),
(39, 15, '_menu_item_type', 'custom'),
(40, 15, '_menu_item_menu_item_parent', '0'),
(41, 15, '_menu_item_object_id', '15'),
(42, 15, '_menu_item_object', 'custom'),
(43, 15, '_menu_item_target', ''),
(44, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 15, '_menu_item_xfn', ''),
(46, 15, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id/kb-simanjuntak'),
(1053, 489, '_menu_item_type', 'custom'),
(55, 20, '_wp_attached_file', '2019/02/cropped-background-web.jpg'),
(56, 20, '_wp_attachment_context', 'site-icon'),
(57, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2019/02/cropped-background-web.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-background-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-background-web-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:34:\"cropped-background-web-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:34:\"cropped-background-web-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:34:\"cropped-background-web-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:32:\"cropped-background-web-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 21, '_wp_attached_file', '2019/02/cropped-logo-1.png'),
(59, 21, '_wp_attachment_context', 'site-icon'),
(60, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2019/02/cropped-logo-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(975, 462, '_wp_attached_file', '2016/07/1.png'),
(976, 462, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:387;s:4:\"file\";s:13:\"2016/07/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 351, '_wp_attached_file', '2016/07/cropped-office-583841_1920.jpg'),
(151, 351, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:381;s:6:\"height\";i:410;s:4:\"file\";s:38:\"2016/07/cropped-office-583841_1920.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-office-583841_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-office-583841_1920-279x300.jpg\";s:5:\"width\";i:279;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 351, '_wp_attachment_context', 'custom-logo'),
(153, 351, '_wp_attachment_is_custom_background', 'wp-corporate-child'),
(178, 351, '_wp_attachment_context', 'custom-logo'),
(179, 351, '_wp_attachment_is_custom_background', 'wp-corporate-child'),
(1158, 519, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:387;s:4:\"file\";s:13:\"2019/03/3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1180, 524, '_wp_attached_file', '2019/03/logo-pikpg-1.png'),
(1161, 517, '_thumbnail_id', '519'),
(1181, 524, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:839;s:6:\"height\";i:839;s:4:\"file\";s:24:\"2019/03/logo-pikpg-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-pikpg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-pikpg-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"logo-pikpg-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:24:\"logo-pikpg-1-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:24:\"logo-pikpg-1-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:24:\"logo-pikpg-1-839x600.png\";s:5:\"width\";i:839;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1182, 525, '_wp_attached_file', '2019/03/cropped-logo-pikpg-1.png'),
(1183, 525, '_wp_attachment_context', 'site-icon'),
(1184, 525, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2019/03/cropped-logo-pikpg-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-logo-pikpg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-logo-pikpg-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-logo-pikpg-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-logo-pikpg-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-logo-pikpg-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1127, 508, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(1141, 511, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(1123, 508, '_thumbnail_id', '509'),
(1156, 517, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(1150, 517, '_edit_lock', '1576030204:1'),
(1132, 511, '_edit_lock', '1552015804:1'),
(1133, 512, '_wp_attached_file', '2019/03/1-1.png'),
(1134, 512, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:387;s:4:\"file\";s:15:\"2019/03/1-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1138, 511, '_edit_last', '1'),
(1137, 511, '_thumbnail_id', '512'),
(1153, 517, '_edit_last', '1'),
(1104, 502, '_wp_attachment_context', 'custom-logo'),
(1105, 502, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:142;s:6:\"height\";i:142;s:4:\"file\";s:24:\"2019/03/cropped-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1108, 504, '_wp_attached_file', '2019/03/logo1.png'),
(1109, 504, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:54;s:6:\"height\";i:54;s:4:\"file\";s:17:\"2019/03/logo1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1110, 505, '_wp_attached_file', '2019/03/cropped-logo1.png'),
(1111, 505, '_wp_attachment_context', 'custom-logo'),
(1112, 505, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:54;s:6:\"height\";i:54;s:4:\"file\";s:25:\"2019/03/cropped-logo1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1020, 478, '_wp_attached_file', '2016/07/3.png'),
(1021, 478, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:745;s:6:\"height\";i:497;s:4:\"file\";s:13:\"2016/07/3.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:13:\"3-600x497.png\";s:5:\"width\";i:600;s:6:\"height\";i:497;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1084, 493, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:39:\"2019/03/cropped-Logo-PIKPG-32x32-px.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-PIKPG-32x32-px-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-PIKPG-32x32-px-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-PIKPG-32x32-px-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-PIKPG-32x32-px-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:39:\"cropped-Logo-PIKPG-32x32-px-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:37:\"cropped-Logo-PIKPG-32x32-px-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1042, 481, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(1101, 501, '_wp_attached_file', '2019/03/logo.png'),
(1035, 481, '_edit_lock', '1552265804:1'),
(1124, 508, '_edit_last', '1'),
(1039, 481, '_edit_last', '1'),
(1038, 481, '_thumbnail_id', '478'),
(1059, 489, '_menu_item_xfn', ''),
(1060, 489, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id/tk-ppi'),
(1062, 490, '_menu_item_type', 'custom'),
(1063, 490, '_menu_item_menu_item_parent', '0'),
(1064, 490, '_menu_item_object_id', '490'),
(1065, 490, '_menu_item_object', 'custom'),
(1066, 490, '_menu_item_target', ''),
(1067, 490, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1068, 490, '_menu_item_xfn', ''),
(1069, 490, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id/kb-ppi'),
(1083, 493, '_wp_attachment_context', 'site-icon'),
(1071, 491, '_menu_item_type', 'custom'),
(1072, 491, '_menu_item_menu_item_parent', '0'),
(1073, 491, '_menu_item_object_id', '491'),
(1074, 491, '_menu_item_object', 'custom'),
(1075, 491, '_menu_item_target', ''),
(1076, 491, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1077, 491, '_menu_item_xfn', ''),
(1078, 491, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id/tpa-ppi'),
(1080, 492, '_wp_attached_file', '2019/03/Logo-PIKPG-32x32-px.png'),
(1081, 492, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:31:\"2019/03/Logo-PIKPG-32x32-px.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1082, 493, '_wp_attached_file', '2019/03/cropped-Logo-PIKPG-32x32-px.png'),
(1010, 473, '_wp_attached_file', '2016/07/2.png'),
(1011, 473, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:847;s:6:\"height\";i:565;s:4:\"file\";s:13:\"2016/07/2.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:13:\"2-600x565.png\";s:5:\"width\";i:600;s:6:\"height\";i:565;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:13:\"2-800x565.png\";s:5:\"width\";i:800;s:6:\"height\";i:565;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1118, 508, '_edit_lock', '1552016345:1'),
(1119, 509, '_wp_attached_file', '2019/03/1.png'),
(1120, 509, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:387;s:4:\"file\";s:13:\"2019/03/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1094, 498, '_wp_attached_file', '2019/03/logo-pikpg.png'),
(1095, 498, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:839;s:6:\"height\";i:839;s:4:\"file\";s:22:\"2019/03/logo-pikpg.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-pikpg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-pikpg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"logo-pikpg-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:22:\"logo-pikpg-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:22:\"logo-pikpg-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:22:\"logo-pikpg-839x600.png\";s:5:\"width\";i:839;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1096, 499, '_wp_attached_file', '2019/03/cropped-logo-pikpg.png'),
(1097, 499, '_wp_attachment_context', 'custom-logo'),
(1098, 499, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:839;s:6:\"height\";i:839;s:4:\"file\";s:30:\"2019/03/cropped-logo-pikpg.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:30:\"cropped-logo-pikpg-839x600.png\";s:5:\"width\";i:839;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 362, '_menu_item_type', 'taxonomy'),
(233, 362, '_menu_item_menu_item_parent', '0'),
(234, 362, '_menu_item_object_id', '5'),
(235, 362, '_menu_item_object', 'category'),
(236, 362, '_menu_item_target', ''),
(237, 362, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 362, '_menu_item_xfn', ''),
(239, 362, '_menu_item_url', ''),
(240, 363, '_menu_item_type', 'taxonomy'),
(241, 363, '_menu_item_menu_item_parent', '0'),
(242, 363, '_menu_item_object_id', '8'),
(243, 363, '_menu_item_object', 'category'),
(244, 363, '_menu_item_target', ''),
(245, 363, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 363, '_menu_item_xfn', ''),
(247, 363, '_menu_item_url', ''),
(248, 364, '_menu_item_type', 'taxonomy'),
(249, 364, '_menu_item_menu_item_parent', '0'),
(250, 364, '_menu_item_object_id', '10'),
(251, 364, '_menu_item_object', 'category'),
(252, 364, '_menu_item_target', ''),
(253, 364, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 364, '_menu_item_xfn', ''),
(255, 364, '_menu_item_url', ''),
(256, 365, '_menu_item_type', 'taxonomy'),
(257, 365, '_menu_item_menu_item_parent', '0'),
(258, 365, '_menu_item_object_id', '11'),
(259, 365, '_menu_item_object', 'category'),
(260, 365, '_menu_item_target', ''),
(261, 365, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(262, 365, '_menu_item_xfn', ''),
(263, 365, '_menu_item_url', ''),
(264, 366, '_menu_item_type', 'custom'),
(265, 366, '_menu_item_menu_item_parent', '0'),
(266, 366, '_menu_item_object_id', '366'),
(267, 366, '_menu_item_object', 'custom'),
(268, 366, '_menu_item_target', ''),
(269, 366, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 366, '_menu_item_xfn', ''),
(271, 366, '_menu_item_url', '#'),
(272, 367, '_menu_item_type', 'custom'),
(273, 367, '_menu_item_menu_item_parent', '366'),
(274, 367, '_menu_item_object_id', '367'),
(275, 367, '_menu_item_object', 'custom'),
(276, 367, '_menu_item_target', ''),
(277, 367, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 367, '_menu_item_xfn', ''),
(279, 367, '_menu_item_url', 'https://8degreethemes.com/demo/wp-corporate/?s=si'),
(280, 368, '_menu_item_type', 'custom'),
(281, 368, '_menu_item_menu_item_parent', '367'),
(282, 368, '_menu_item_object_id', '368'),
(283, 368, '_menu_item_object', 'custom'),
(284, 368, '_menu_item_target', ''),
(285, 368, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 368, '_menu_item_xfn', ''),
(287, 368, '_menu_item_url', 'https://8degreethemes.com/demo/wp-corporate/?s=zxc'),
(288, 369, '_menu_item_type', 'custom'),
(289, 369, '_menu_item_menu_item_parent', '366'),
(290, 369, '_menu_item_object_id', '369'),
(291, 369, '_menu_item_object', 'custom'),
(292, 369, '_menu_item_target', ''),
(293, 369, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(294, 369, '_menu_item_xfn', ''),
(295, 369, '_menu_item_url', 'https://8degreethemes.com/demo/wp-corporate/dds'),
(1102, 501, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:142;s:6:\"height\";i:142;s:4:\"file\";s:16:\"2019/03/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 371, '_menu_item_type', 'post_type'),
(301, 371, '_menu_item_menu_item_parent', '0'),
(302, 371, '_menu_item_object_id', '370'),
(303, 371, '_menu_item_object', 'page'),
(304, 371, '_menu_item_target', ''),
(305, 371, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 371, '_menu_item_xfn', ''),
(307, 371, '_menu_item_url', ''),
(308, 370, '_wp_page_template', 'default'),
(309, 372, '_menu_item_type', 'post_type'),
(310, 372, '_menu_item_menu_item_parent', '0'),
(311, 372, '_menu_item_object_id', '23'),
(312, 372, '_menu_item_object', 'page'),
(313, 372, '_menu_item_target', ''),
(314, 372, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 372, '_menu_item_xfn', ''),
(316, 372, '_menu_item_url', ''),
(317, 23, '_wp_page_template', 'tpl-homepage.php'),
(318, 373, '_menu_item_type', 'post_type'),
(319, 373, '_menu_item_menu_item_parent', '0'),
(320, 373, '_menu_item_object_id', '46'),
(321, 373, '_menu_item_object', 'page'),
(322, 373, '_menu_item_target', ''),
(323, 373, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(324, 373, '_menu_item_xfn', ''),
(325, 373, '_menu_item_url', ''),
(326, 46, '_wp_page_template', 'default'),
(327, 46, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(328, 374, '_menu_item_type', 'post_type'),
(329, 374, '_menu_item_menu_item_parent', '0'),
(330, 374, '_menu_item_object_id', '100'),
(331, 374, '_menu_item_object', 'page'),
(332, 374, '_menu_item_target', ''),
(333, 374, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(334, 374, '_menu_item_xfn', ''),
(335, 374, '_menu_item_url', ''),
(336, 100, '_wp_page_template', 'default'),
(337, 100, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(339, 375, '_menu_item_type', 'post_type'),
(340, 375, '_menu_item_menu_item_parent', '0'),
(341, 375, '_menu_item_object_id', '189'),
(342, 375, '_menu_item_object', 'page'),
(343, 375, '_menu_item_target', ''),
(344, 375, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 375, '_menu_item_xfn', ''),
(346, 375, '_menu_item_url', ''),
(347, 189, '_wp_page_template', 'default'),
(348, 189, 'wp_corporate_sidebar_layout', 'left-sidebar'),
(350, 376, '_menu_item_type', 'post_type'),
(351, 376, '_menu_item_menu_item_parent', '0'),
(352, 376, '_menu_item_object_id', '191'),
(353, 376, '_menu_item_object', 'page'),
(354, 376, '_menu_item_target', ''),
(355, 376, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(356, 376, '_menu_item_xfn', ''),
(357, 376, '_menu_item_url', ''),
(358, 191, '_wp_page_template', 'default'),
(359, 191, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(361, 377, '_menu_item_type', 'post_type'),
(362, 377, '_menu_item_menu_item_parent', '0'),
(363, 377, '_menu_item_object_id', '193'),
(364, 377, '_menu_item_object', 'page'),
(365, 377, '_menu_item_target', ''),
(366, 377, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(367, 377, '_menu_item_xfn', ''),
(368, 377, '_menu_item_url', ''),
(369, 193, '_wp_page_template', 'default'),
(370, 193, 'wp_corporate_sidebar_layout', 'both-sidebar'),
(372, 378, '_menu_item_type', 'custom'),
(373, 378, '_menu_item_menu_item_parent', '366'),
(374, 378, '_menu_item_object_id', '378'),
(375, 378, '_menu_item_object', 'custom'),
(376, 378, '_menu_item_target', ''),
(377, 378, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(378, 378, '_menu_item_xfn', ''),
(379, 378, '_menu_item_url', '#'),
(384, 380, '_wp_old_slug', 'i-am-wp-coporate'),
(385, 380, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(386, 380, '_thumbnail_id', '462'),
(387, 380, '_wp_old_slug', 'lorem-ispum'),
(390, 381, '_thumbnail_id', '473'),
(391, 381, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(392, 381, '_wp_old_slug', 'consectetur'),
(398, 383, '_menu_item_type', 'post_type'),
(399, 383, '_menu_item_menu_item_parent', '0'),
(400, 383, '_menu_item_object_id', '195'),
(401, 383, '_menu_item_object', 'page'),
(402, 383, '_menu_item_target', ''),
(403, 383, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(404, 383, '_menu_item_xfn', ''),
(405, 383, '_menu_item_url', ''),
(406, 195, '_wp_page_template', 'default'),
(407, 195, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(408, 209, '_wp_page_template', 'tpl-homepage-boxed.php'),
(409, 209, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(410, 384, '_menu_item_type', 'post_type'),
(411, 384, '_menu_item_menu_item_parent', '0'),
(412, 384, '_menu_item_object_id', '213'),
(413, 384, '_menu_item_object', 'page'),
(414, 384, '_menu_item_target', ''),
(415, 384, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 384, '_menu_item_xfn', ''),
(417, 384, '_menu_item_url', ''),
(418, 213, '_wp_page_template', 'blog-with-large-image.php'),
(419, 213, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(420, 385, '_menu_item_type', 'post_type'),
(421, 385, '_menu_item_menu_item_parent', '0'),
(422, 385, '_menu_item_object_id', '216'),
(423, 385, '_menu_item_object', 'page'),
(424, 385, '_menu_item_target', ''),
(425, 385, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(426, 385, '_menu_item_xfn', ''),
(427, 385, '_menu_item_url', ''),
(428, 216, '_wp_page_template', 'blog-with-alternate-image.php'),
(429, 216, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(430, 386, '_menu_item_type', 'post_type'),
(431, 386, '_menu_item_menu_item_parent', '0'),
(432, 386, '_menu_item_object_id', '219'),
(433, 386, '_menu_item_object', 'page'),
(434, 386, '_menu_item_target', ''),
(435, 386, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(436, 386, '_menu_item_xfn', ''),
(437, 386, '_menu_item_url', ''),
(438, 219, '_wp_page_template', 'blog-with-medium-image.php'),
(439, 219, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(440, 387, '_menu_item_type', 'post_type'),
(441, 387, '_menu_item_menu_item_parent', '0'),
(442, 387, '_menu_item_object_id', '222'),
(443, 387, '_menu_item_object', 'page'),
(444, 387, '_menu_item_target', ''),
(445, 387, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(446, 387, '_menu_item_xfn', ''),
(447, 387, '_menu_item_url', ''),
(448, 222, '_wp_page_template', 'team-with-list.php'),
(449, 222, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(450, 388, '_menu_item_type', 'post_type'),
(451, 388, '_menu_item_menu_item_parent', '0'),
(452, 388, '_menu_item_object_id', '224'),
(453, 388, '_menu_item_object', 'page'),
(454, 388, '_menu_item_target', ''),
(455, 388, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 388, '_menu_item_xfn', ''),
(457, 388, '_menu_item_url', ''),
(458, 224, '_wp_page_template', 'team-with-grid.php'),
(459, 224, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(460, 389, '_menu_item_type', 'post_type'),
(461, 389, '_menu_item_menu_item_parent', '0'),
(462, 389, '_menu_item_object_id', '229'),
(463, 389, '_menu_item_object', 'page'),
(464, 389, '_menu_item_target', ''),
(465, 389, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(466, 389, '_menu_item_xfn', ''),
(467, 389, '_menu_item_url', ''),
(468, 229, '_wp_page_template', 'testimonial-with-grid.php'),
(469, 229, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(470, 390, '_menu_item_type', 'post_type'),
(471, 390, '_menu_item_menu_item_parent', '0'),
(472, 390, '_menu_item_object_id', '230'),
(473, 390, '_menu_item_object', 'page'),
(474, 390, '_menu_item_target', ''),
(475, 390, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(476, 390, '_menu_item_xfn', ''),
(477, 390, '_menu_item_url', ''),
(478, 230, '_wp_page_template', 'testimonial-with-list.php'),
(479, 230, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(480, 391, '_menu_item_type', 'post_type'),
(481, 391, '_menu_item_menu_item_parent', '0'),
(482, 391, '_menu_item_object_id', '247'),
(483, 391, '_menu_item_object', 'page'),
(484, 391, '_menu_item_target', ''),
(485, 391, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(486, 391, '_menu_item_xfn', ''),
(487, 391, '_menu_item_url', ''),
(488, 247, '_wp_page_template', 'tpl-homepage-menu.php'),
(489, 247, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(490, 392, '_menu_item_type', 'post_type'),
(491, 392, '_menu_item_menu_item_parent', '0'),
(492, 392, '_menu_item_object_id', '279'),
(493, 392, '_menu_item_object', 'page'),
(494, 392, '_menu_item_target', ''),
(495, 392, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 392, '_menu_item_xfn', ''),
(497, 392, '_menu_item_url', ''),
(498, 279, '_wp_page_template', 'tpl-archive.php'),
(499, 279, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(501, 393, '_menu_item_type', 'post_type'),
(502, 393, '_menu_item_menu_item_parent', '0'),
(503, 393, '_menu_item_object_id', '283'),
(504, 393, '_menu_item_object', 'page'),
(505, 393, '_menu_item_target', ''),
(506, 393, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(507, 393, '_menu_item_xfn', ''),
(508, 393, '_menu_item_url', ''),
(509, 283, '_wp_page_template', 'tpl-page.php'),
(510, 283, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(512, 394, '_menu_item_type', 'post_type'),
(513, 394, '_menu_item_menu_item_parent', '0'),
(514, 394, '_menu_item_object_id', '312'),
(515, 394, '_menu_item_object', 'page'),
(516, 394, '_menu_item_target', ''),
(517, 394, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(518, 394, '_menu_item_xfn', ''),
(519, 394, '_menu_item_url', ''),
(520, 395, '_menu_item_type', 'post_type'),
(521, 395, '_menu_item_menu_item_parent', '0'),
(522, 395, '_menu_item_object_id', '313'),
(523, 395, '_menu_item_object', 'page'),
(524, 395, '_menu_item_target', ''),
(525, 395, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(526, 395, '_menu_item_xfn', ''),
(527, 395, '_menu_item_url', ''),
(528, 396, '_menu_item_type', 'post_type'),
(529, 396, '_menu_item_menu_item_parent', '0'),
(530, 396, '_menu_item_object_id', '314'),
(531, 396, '_menu_item_object', 'page'),
(532, 396, '_menu_item_target', ''),
(533, 396, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(534, 396, '_menu_item_xfn', ''),
(535, 396, '_menu_item_url', ''),
(536, 397, '_menu_item_type', 'post_type'),
(537, 397, '_menu_item_menu_item_parent', '0'),
(538, 397, '_menu_item_object_id', '315'),
(539, 397, '_menu_item_object', 'page'),
(540, 397, '_menu_item_target', ''),
(541, 397, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(542, 397, '_menu_item_xfn', ''),
(543, 397, '_menu_item_url', ''),
(1157, 519, '_wp_attached_file', '2019/03/3.png'),
(1103, 502, '_wp_attached_file', '2019/03/cropped-logo.png'),
(1057, 489, '_menu_item_target', ''),
(1058, 489, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(645, 398, '_menu_item_type', 'post_type'),
(646, 398, '_menu_item_menu_item_parent', '0'),
(647, 398, '_menu_item_object_id', '23'),
(648, 398, '_menu_item_object', 'page'),
(649, 398, '_menu_item_target', ''),
(650, 398, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(651, 398, '_menu_item_xfn', ''),
(652, 398, '_menu_item_url', ''),
(653, 399, '_menu_item_type', 'post_type'),
(654, 399, '_menu_item_menu_item_parent', '0'),
(655, 399, '_menu_item_object_id', '46'),
(656, 399, '_menu_item_object', 'page'),
(657, 399, '_menu_item_target', ''),
(658, 399, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(659, 399, '_menu_item_xfn', ''),
(660, 399, '_menu_item_url', ''),
(661, 400, '_menu_item_type', 'post_type'),
(662, 400, '_menu_item_menu_item_parent', '366'),
(663, 400, '_menu_item_object_id', '195'),
(664, 400, '_menu_item_object', 'page'),
(665, 400, '_menu_item_target', ''),
(666, 400, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(667, 400, '_menu_item_xfn', ''),
(668, 400, '_menu_item_url', ''),
(669, 401, '_menu_item_type', 'post_type'),
(670, 401, '_menu_item_menu_item_parent', '366'),
(671, 401, '_menu_item_object_id', '193'),
(672, 401, '_menu_item_object', 'page'),
(673, 401, '_menu_item_target', ''),
(674, 401, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 401, '_menu_item_xfn', ''),
(676, 401, '_menu_item_url', ''),
(677, 402, '_menu_item_type', 'post_type'),
(678, 402, '_menu_item_menu_item_parent', '366'),
(679, 402, '_menu_item_object_id', '191'),
(680, 402, '_menu_item_object', 'page'),
(681, 402, '_menu_item_target', ''),
(682, 402, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(683, 402, '_menu_item_xfn', ''),
(684, 402, '_menu_item_url', ''),
(685, 403, '_menu_item_type', 'post_type'),
(686, 403, '_menu_item_menu_item_parent', '366'),
(687, 403, '_menu_item_object_id', '189'),
(688, 403, '_menu_item_object', 'page'),
(689, 403, '_menu_item_target', ''),
(690, 403, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(691, 403, '_menu_item_xfn', ''),
(692, 403, '_menu_item_url', ''),
(693, 404, '_menu_item_type', 'post_type'),
(694, 404, '_menu_item_menu_item_parent', '398'),
(695, 404, '_menu_item_object_id', '209'),
(696, 404, '_menu_item_object', 'page'),
(697, 404, '_menu_item_target', ''),
(698, 404, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(699, 404, '_menu_item_xfn', ''),
(700, 404, '_menu_item_url', ''),
(701, 405, '_menu_item_type', 'post_type'),
(702, 405, '_menu_item_menu_item_parent', '362'),
(703, 405, '_menu_item_object_id', '213'),
(704, 405, '_menu_item_object', 'page'),
(705, 405, '_menu_item_target', ''),
(706, 405, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(707, 405, '_menu_item_xfn', ''),
(708, 405, '_menu_item_url', ''),
(709, 406, '_menu_item_type', 'post_type'),
(710, 406, '_menu_item_menu_item_parent', '362'),
(711, 406, '_menu_item_object_id', '216'),
(712, 406, '_menu_item_object', 'page'),
(713, 406, '_menu_item_target', ''),
(714, 406, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(715, 406, '_menu_item_xfn', ''),
(716, 406, '_menu_item_url', ''),
(717, 407, '_menu_item_type', 'post_type'),
(718, 407, '_menu_item_menu_item_parent', '362'),
(719, 407, '_menu_item_object_id', '219'),
(720, 407, '_menu_item_object', 'page'),
(721, 407, '_menu_item_target', ''),
(722, 407, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(723, 407, '_menu_item_xfn', ''),
(724, 407, '_menu_item_url', ''),
(725, 408, '_menu_item_type', 'post_type'),
(726, 408, '_menu_item_menu_item_parent', '364'),
(727, 408, '_menu_item_object_id', '224'),
(728, 408, '_menu_item_object', 'page'),
(729, 408, '_menu_item_target', ''),
(730, 408, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(731, 408, '_menu_item_xfn', ''),
(732, 408, '_menu_item_url', ''),
(733, 409, '_menu_item_type', 'post_type'),
(734, 409, '_menu_item_menu_item_parent', '364'),
(735, 409, '_menu_item_object_id', '222'),
(736, 409, '_menu_item_object', 'page'),
(737, 409, '_menu_item_target', ''),
(738, 409, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(739, 409, '_menu_item_xfn', ''),
(740, 409, '_menu_item_url', ''),
(741, 410, '_menu_item_type', 'post_type'),
(742, 410, '_menu_item_menu_item_parent', '365'),
(743, 410, '_menu_item_object_id', '229'),
(744, 410, '_menu_item_object', 'page'),
(745, 410, '_menu_item_target', ''),
(746, 410, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 410, '_menu_item_xfn', ''),
(748, 410, '_menu_item_url', ''),
(749, 411, '_menu_item_type', 'post_type'),
(750, 411, '_menu_item_menu_item_parent', '365'),
(751, 411, '_menu_item_object_id', '230'),
(752, 411, '_menu_item_object', 'page'),
(753, 411, '_menu_item_target', ''),
(754, 411, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(755, 411, '_menu_item_xfn', ''),
(756, 411, '_menu_item_url', ''),
(757, 412, '_menu_item_type', 'post_type'),
(758, 412, '_menu_item_menu_item_parent', '398'),
(759, 412, '_menu_item_object_id', '247'),
(760, 412, '_menu_item_object', 'page'),
(761, 412, '_menu_item_target', ''),
(762, 412, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(763, 412, '_menu_item_xfn', ''),
(764, 412, '_menu_item_url', ''),
(765, 413, '_menu_item_type', 'post_type'),
(766, 413, '_menu_item_menu_item_parent', '0'),
(767, 413, '_menu_item_object_id', '247'),
(768, 413, '_menu_item_object', 'page'),
(769, 413, '_menu_item_target', ''),
(770, 413, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(771, 413, '_menu_item_xfn', ''),
(772, 413, '_menu_item_url', ''),
(773, 414, '_menu_item_type', 'post_type'),
(774, 414, '_menu_item_menu_item_parent', '378'),
(775, 414, '_menu_item_object_id', '283'),
(776, 414, '_menu_item_object', 'page'),
(777, 414, '_menu_item_target', ''),
(778, 414, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(779, 414, '_menu_item_xfn', ''),
(780, 414, '_menu_item_url', ''),
(781, 415, '_menu_item_type', 'post_type'),
(782, 415, '_menu_item_menu_item_parent', '378'),
(783, 415, '_menu_item_object_id', '279'),
(784, 415, '_menu_item_object', 'page'),
(785, 415, '_menu_item_target', ''),
(786, 415, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(787, 415, '_menu_item_xfn', ''),
(788, 415, '_menu_item_url', ''),
(789, 416, '_menu_item_type', 'post_type'),
(790, 416, '_menu_item_menu_item_parent', '419'),
(791, 416, '_menu_item_object_id', '315'),
(792, 416, '_menu_item_object', 'page'),
(793, 416, '_menu_item_target', ''),
(794, 416, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(795, 416, '_menu_item_xfn', ''),
(796, 416, '_menu_item_url', ''),
(797, 417, '_menu_item_type', 'post_type'),
(798, 417, '_menu_item_menu_item_parent', '419'),
(799, 417, '_menu_item_object_id', '314'),
(800, 417, '_menu_item_object', 'page'),
(801, 417, '_menu_item_target', ''),
(802, 417, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(803, 417, '_menu_item_xfn', ''),
(804, 417, '_menu_item_url', ''),
(805, 418, '_menu_item_type', 'post_type'),
(806, 418, '_menu_item_menu_item_parent', '419'),
(807, 418, '_menu_item_object_id', '313'),
(808, 418, '_menu_item_object', 'page'),
(809, 418, '_menu_item_target', ''),
(810, 418, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(811, 418, '_menu_item_xfn', ''),
(812, 418, '_menu_item_url', ''),
(813, 419, '_menu_item_type', 'post_type'),
(814, 419, '_menu_item_menu_item_parent', '0'),
(815, 419, '_menu_item_object_id', '312'),
(816, 419, '_menu_item_object', 'page'),
(817, 419, '_menu_item_target', ''),
(818, 419, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(819, 419, '_menu_item_xfn', ''),
(820, 419, '_menu_item_url', ''),
(928, 380, '_edit_lock', '1552267699:1'),
(1055, 489, '_menu_item_object_id', '489'),
(931, 380, '_edit_last', '1'),
(1056, 489, '_menu_item_object', 'custom'),
(1054, 489, '_menu_item_menu_item_parent', '0'),
(952, 381, '_edit_last', '1'),
(958, 380, '_wp_old_slug', 'wp-corporate'),
(955, 381, '_edit_lock', '1552017050:1'),
(961, 381, '_wp_old_slug', 'a-business-theme'),
(1470, 626, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:501;s:6:\"height\";i:387;s:4:\"file\";s:29:\"2019/12/logo-paud-pikpg-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-3-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1469, 626, '_wp_attached_file', '2019/12/logo-paud-pikpg-3.jpg'),
(1468, 509, '_edit_lock', '1576031368:1'),
(1475, 627, '_wp_attached_file', '2019/12/logo-paud-pikpg-4.jpg'),
(1218, 542, '_edit_lock', '1567991894:1'),
(1219, 542, '_edit_last', '1'),
(1220, 542, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(1221, 542, '_yoast_wpseo_focuskw', 'Lembaga paud terpadu PIKPG'),
(1222, 542, '_yoast_wpseo_linkdex', '36'),
(1223, 542, '_yoast_wpseo_content_score', '60'),
(1224, 542, '_yoast_wpseo_is_cornerstone', '1'),
(1225, 544, '_menu_item_type', 'post_type'),
(1226, 544, '_menu_item_menu_item_parent', '0'),
(1227, 544, '_menu_item_object_id', '542'),
(1228, 544, '_menu_item_object', 'page'),
(1229, 544, '_menu_item_target', ''),
(1230, 544, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1231, 544, '_menu_item_xfn', ''),
(1232, 544, '_menu_item_url', ''),
(1235, 545, '_menu_item_type', 'custom'),
(1236, 545, '_menu_item_menu_item_parent', '0'),
(1237, 545, '_menu_item_object_id', '545'),
(1238, 545, '_menu_item_object', 'custom'),
(1239, 545, '_menu_item_target', ''),
(1240, 545, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1241, 545, '_menu_item_xfn', ''),
(1242, 545, '_menu_item_url', 'https://paudterpadu-pikpg.sch.id'),
(1538, 649, '_wp_attached_file', '2019/12/visi-pikpg.png'),
(1566, 654, '_edit_last', '1'),
(1565, 654, '_thumbnail_id', '650'),
(1572, 656, '_edit_lock', '1576039151:1'),
(1569, 654, '_yoast_wpseo_primary_category', '18'),
(1277, 23, '_edit_lock', '1568000816:1'),
(1288, 100, '_edit_lock', '1567993871:1'),
(1289, 100, '_edit_last', '1'),
(1290, 100, '_yoast_wpseo_content_score', '30'),
(1291, 100, '_yoast_wpseo_focuskw', 'Mengapa harus paud terpadu pikpg'),
(1292, 100, '_yoast_wpseo_linkdex', '24');
INSERT INTO `wpda_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1461, 624, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4640;s:6:\"height\";i:2464;s:4:\"file\";s:29:\"2019/12/logo-paud-pikpg-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-2-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-2-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"logo-paud-pikpg-2-1024x544.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-2-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:30:\"logo-paud-pikpg-2-1170x600.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1460, 624, '_wp_attached_file', '2019/12/logo-paud-pikpg-2.jpg'),
(1498, 634, '_wp_attached_file', '2019/12/LOGO-BARU-PIKPG.png'),
(1499, 634, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2412;s:6:\"height\";i:1723;s:4:\"file\";s:27:\"2019/12/LOGO-BARU-PIKPG.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"LOGO-BARU-PIKPG-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"LOGO-BARU-PIKPG-300x214.png\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"LOGO-BARU-PIKPG-768x549.png\";s:5:\"width\";i:768;s:6:\"height\";i:549;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"LOGO-BARU-PIKPG-1024x731.png\";s:5:\"width\";i:1024;s:6:\"height\";i:731;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:27:\"LOGO-BARU-PIKPG-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:27:\"LOGO-BARU-PIKPG-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:28:\"LOGO-BARU-PIKPG-1170x600.png\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1544, 650, '_wp_attached_file', '2019/12/visi-pikpg-1.png'),
(1545, 650, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:24:\"2019/12/visi-pikpg-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"visi-pikpg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"visi-pikpg-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"visi-pikpg-1-768x513.png\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:24:\"visi-pikpg-1-600x534.png\";s:5:\"width\";i:600;s:6:\"height\";i:534;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:24:\"visi-pikpg-1-800x534.png\";s:5:\"width\";i:800;s:6:\"height\";i:534;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1500, 635, '_wp_attached_file', '2019/12/cropped-LOGO-BARU-PIKPG.png'),
(1501, 635, '_wp_attachment_context', 'custom-logo'),
(1555, 651, '_thumbnail_id', '652'),
(1345, 584, '_edit_lock', '1567999645:1'),
(1346, 584, '_edit_last', '1'),
(1347, 584, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(1348, 584, '_yoast_wpseo_content_score', '30'),
(1349, 586, '_menu_item_type', 'post_type'),
(1350, 586, '_menu_item_menu_item_parent', '0'),
(1351, 586, '_menu_item_object_id', '584'),
(1352, 586, '_menu_item_object', 'page'),
(1353, 586, '_menu_item_target', ''),
(1354, 586, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1355, 586, '_menu_item_xfn', ''),
(1356, 586, '_menu_item_url', ''),
(1357, 584, '_yoast_wpseo_focuskw', 'Paud terpadu pikpg'),
(1358, 584, '_yoast_wpseo_linkdex', '52'),
(1561, 651, '_yoast_wpseo_content_score', '30'),
(1559, 651, '_yoast_wpseo_primary_category', '18'),
(1556, 651, '_edit_last', '1'),
(1550, 651, '_edit_lock', '1576038374:1'),
(1551, 652, '_wp_attached_file', '2019/12/misi-pikpg.png'),
(1552, 652, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:22:\"2019/12/misi-pikpg.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"misi-pikpg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"misi-pikpg-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"misi-pikpg-768x513.png\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:22:\"misi-pikpg-600x534.png\";s:5:\"width\";i:600;s:6:\"height\";i:534;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:22:\"misi-pikpg-800x534.png\";s:5:\"width\";i:800;s:6:\"height\";i:534;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1377, 595, '_edit_lock', '1568001532:1'),
(1378, 596, '_menu_item_type', 'post_type'),
(1379, 596, '_menu_item_menu_item_parent', '0'),
(1380, 596, '_menu_item_object_id', '595'),
(1381, 596, '_menu_item_object', 'page'),
(1382, 596, '_menu_item_target', ''),
(1383, 596, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1384, 596, '_menu_item_xfn', ''),
(1385, 596, '_menu_item_url', ''),
(1386, 595, '_edit_last', '1'),
(1387, 595, 'wp_corporate_sidebar_layout', 'no-sidebar'),
(1388, 595, '_yoast_wpseo_content_score', '30'),
(1562, 654, '_edit_lock', '1576039039:1'),
(1570, 654, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(1571, 654, '_yoast_wpseo_content_score', '30'),
(1576, 656, '_edit_last', '1'),
(1575, 656, '_thumbnail_id', '624'),
(1579, 656, '_yoast_wpseo_primary_category', '18'),
(1580, 656, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(1581, 656, '_yoast_wpseo_content_score', '30'),
(1476, 627, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4640;s:6:\"height\";i:3584;s:4:\"file\";s:29:\"2019/12/logo-paud-pikpg-4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-4-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-4-768x593.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"logo-paud-pikpg-4-1024x791.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:791;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:29:\"logo-paud-pikpg-4-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:30:\"logo-paud-pikpg-4-1170x600.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1486, 629, '_wp_attached_file', '2019/12/favicon-pikpg.png'),
(1487, 629, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:27;s:6:\"height\";i:16;s:4:\"file\";s:25:\"2019/12/favicon-pikpg.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1490, 630, '_wp_attached_file', '2019/12/favicon-pikpg-1.png'),
(1491, 630, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:451;s:4:\"file\";s:27:\"2019/12/favicon-pikpg-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"favicon-pikpg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"favicon-pikpg-1-300x176.png\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"favicon-pikpg-1-768x451.png\";s:5:\"width\";i:768;s:6:\"height\";i:451;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:27:\"favicon-pikpg-1-600x451.png\";s:5:\"width\";i:600;s:6:\"height\";i:451;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1492, 631, '_wp_attached_file', '2019/12/cropped-favicon-pikpg-1.png'),
(1493, 631, '_wp_attachment_context', 'site-icon'),
(1494, 631, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:35:\"2019/12/cropped-favicon-pikpg-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-pikpg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-pikpg-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-pikpg-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-pikpg-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-pikpg-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:33:\"cropped-favicon-pikpg-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1560, 651, 'wp_corporate_sidebar_layout', 'right-sidebar'),
(1502, 635, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2274;s:6:\"height\";i:929;s:4:\"file\";s:35:\"2019/12/cropped-LOGO-BARU-PIKPG.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-LOGO-BARU-PIKPG-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-LOGO-BARU-PIKPG-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"cropped-LOGO-BARU-PIKPG-768x314.png\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"cropped-LOGO-BARU-PIKPG-1024x418.png\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"wp-corporate-feature-image\";a:4:{s:4:\"file\";s:35:\"cropped-LOGO-BARU-PIKPG-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-portfolio-image\";a:4:{s:4:\"file\";s:35:\"cropped-LOGO-BARU-PIKPG-800x600.png\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"wp-corporate-fullwidth-image\";a:4:{s:4:\"file\";s:36:\"cropped-LOGO-BARU-PIKPG-1170x600.png\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1509, 639, '_wp_attached_file', '2019/12/LOGO-BARU-PIKPG-1.png'),
(1510, 639, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:216;s:4:\"file\";s:29:\"2019/12/LOGO-BARU-PIKPG-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"LOGO-BARU-PIKPG-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"LOGO-BARU-PIKPG-1-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1511, 640, '_wp_attached_file', '2019/12/cropped-LOGO-BARU-PIKPG-1.png'),
(1512, 640, '_wp_attachment_context', 'custom-logo'),
(1513, 640, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:112;s:4:\"file\";s:37:\"2019/12/cropped-LOGO-BARU-PIKPG-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-LOGO-BARU-PIKPG-1-150x112.png\";s:5:\"width\";i:150;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-LOGO-BARU-PIKPG-1-300x111.png\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1539, 649, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:22:\"2019/12/visi-pikpg.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"visi-pikpg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"visi-pikpg-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1593, 656, '_pingme', '1'),
(1594, 656, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wpda_posts`
--

CREATE TABLE `wpda_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_posts`
--

INSERT INTO `wpda_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-02-22 00:53:08', '2019-02-22 00:53:08', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://paudterpadu-pikpg.sch.id/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-22 00:53:08', '2019-02-22 00:53:08', '', 0, 'https://paudterpadu-pikpg.sch.id/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-22 00:53:08', '2019-02-22 00:53:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://paudterpadu-pikpg.sch.id.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-02-22 00:53:08', '2019-02-22 00:53:08', '', 0, 'https://paudterpadu-pikpg.sch.id/?page_id=3', 0, 'page', '', 0),
(489, 1, '2019-03-01 08:58:35', '2019-03-01 08:58:35', '', 'TK PPI', '', 'publish', 'closed', 'closed', '', 'tk-pongangan-indah', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=489', 7, 'nav_menu_item', '', 0),
(6, 1, '2019-02-22 00:57:22', '2019-02-22 00:57:22', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-02-22 00:57:22', '2019-02-22 00:57:22', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-02-22 00:57:32', '2019-02-22 00:57:32', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-02-22 00:57:32', '2019-02-22 00:57:32', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2019-02-22 01:16:35', '2019-02-22 01:16:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-22 01:16:35', '2019-02-22 01:16:35', '', 0, 'https://paudterpadu-pikpg.sch.id/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-02-22 01:16:35', '2019-02-22 01:16:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-22 01:16:35', '2019-02-22 01:16:35', '', 11, 'https://paudterpadu-pikpg.sch.id/2019/02/22/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-02-22 01:21:42', '2019-02-22 01:21:42', '', 'TK Simanjuntak', '', 'publish', 'closed', 'closed', '', 'tk-simanjuntak', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2019-02-22 01:22:21', '2019-02-22 01:22:21', '', 'TPA Simanjuntak', '', 'publish', 'closed', 'closed', '', 'tpa-simanjuntak', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2019-02-22 01:22:21', '2019-02-22 01:22:21', '', 'KB Simanjuntak', '', 'publish', 'closed', 'closed', '', 'kb-simanjuntak', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=15', 3, 'nav_menu_item', '', 0),
(524, 1, '2019-03-11 01:29:21', '2019-03-11 01:29:21', '', 'logo pikpg', '', 'inherit', 'open', 'closed', '', 'logo-pikpg-2', '', '', '2019-03-11 01:29:21', '2019-03-11 01:29:21', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/logo-pikpg-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2019-02-22 01:30:01', '2019-02-22 01:30:01', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/cropped-background-web.jpg', 'cropped-background-web.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-background-web-jpg', '', '', '2019-02-22 01:30:01', '2019-02-22 01:30:01', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/cropped-background-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-02-22 01:30:51', '2019-02-22 01:30:51', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2019-02-22 01:30:51', '2019-02-22 01:30:51', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/02/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(492, 1, '2019-03-01 09:01:04', '2019-03-01 09:01:04', '', 'Logo PIKPG 32x32 px', '', 'inherit', 'open', 'closed', '', 'logo-pikpg-32x32-px', '', '', '2019-03-01 09:01:04', '2019-03-01 09:01:04', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/Logo-PIKPG-32x32-px.png', 0, 'attachment', 'image/png', 0),
(493, 1, '2019-03-01 09:01:26', '2019-03-01 09:01:26', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-Logo-PIKPG-32x32-px.png', 'cropped-Logo-PIKPG-32x32-px.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-pikpg-32x32-px-png', '', '', '2019-03-01 09:01:26', '2019-03-01 09:01:26', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-Logo-PIKPG-32x32-px.png', 0, 'attachment', 'image/png', 0),
(525, 1, '2019-03-11 01:29:26', '2019-03-11 01:29:26', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo-pikpg-1.png', 'cropped-logo-pikpg-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-pikpg-1-png', '', '', '2019-03-11 01:29:26', '2019-03-11 01:29:26', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo-pikpg-1.png', 0, 'attachment', 'image/png', 0),
(523, 1, '2019-03-08 03:41:26', '2019-03-08 03:41:26', 'Kelompok Belajar PIKPG', 'KB Simanjuntak', 'KB SIMANJUNTAK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '381-revision-v1', '', '', '2019-03-08 03:41:26', '2019-03-08 03:41:26', '', 381, 'https://paudterpadu-pikpg.sch.id/381-revision-v1/', 0, 'revision', '', 0),
(520, 1, '2019-03-08 03:39:04', '2019-03-08 03:39:04', '', 'TK PPI', 'TK PPI PIKPG,<span class=\"color-yellow\"> SMILE AND</span> CARE', 'inherit', 'closed', 'closed', '', '508-revision-v1', '', '', '2019-03-08 03:39:04', '2019-03-08 03:39:04', '', 508, 'https://paudterpadu-pikpg.sch.id/508-revision-v1/', 0, 'revision', '', 0),
(521, 1, '2019-03-08 03:41:10', '2019-03-08 03:41:10', '<!-- wp:paragraph -->\n<p>TPA PIKPG</p>\n<!-- /wp:paragraph -->', 'TPA Simanjuntak', 'TPA SIMANJUNTAK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '481-revision-v1', '', '', '2019-03-08 03:41:10', '2019-03-08 03:41:10', '', 481, 'https://paudterpadu-pikpg.sch.id/481-revision-v1/', 0, 'revision', '', 0),
(522, 1, '2019-03-08 03:41:18', '2019-03-08 03:41:18', '<p>Taman Kanak-Kanak PIKPG</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK SIMANJUNTAK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-03-08 03:41:18', '2019-03-08 03:41:18', '', 380, 'https://paudterpadu-pikpg.sch.id/380-revision-v1/', 0, 'revision', '', 0),
(462, 1, '2019-02-28 08:14:37', '2019-02-28 08:14:37', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-02-28 08:14:37', '2019-02-28 08:14:37', '', 380, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2016/07/1.png', 0, 'attachment', 'image/png', 0),
(519, 1, '2019-03-08 03:38:23', '2019-03-08 03:38:23', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-03-08 03:38:23', '2019-03-08 03:38:23', '', 517, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/3.png', 0, 'attachment', 'image/png', 0),
(351, 1, '2016-07-14 11:01:23', '2016-07-14 11:01:23', 'http://localhost/8degree/wp-coporate/wp-content/uploads/2016/07/cropped-office-583841_1920.jpg', 'cropped-office-583841_1920.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-office-583841_1920-jpg', '', '', '2016-07-14 11:01:23', '2016-07-14 11:01:23', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2016/07/cropped-office-583841_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(517, 1, '2019-03-08 03:33:02', '2019-03-08 03:33:02', '', 'KB PPI', 'KB PPI PIKPG,<span class=\"color-yellow\"> SMILE AND</span> CARE', 'publish', 'open', 'open', '', 'kb-ppi', '', '', '2019-09-09 01:30:29', '2019-09-09 01:30:29', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=517', 0, 'post', '', 0),
(518, 1, '2019-03-08 03:33:02', '2019-03-08 03:33:02', '', 'KB PPI', 'KB PPI PIKPG,<span class=\"color-yellow\"> SMILE AND</span> CARE', 'inherit', 'closed', 'closed', '', '517-revision-v1', '', '', '2019-03-08 03:33:02', '2019-03-08 03:33:02', '', 517, 'https://paudterpadu-pikpg.sch.id/517-revision-v1/', 0, 'revision', '', 0),
(516, 1, '2019-03-08 03:31:13', '2019-03-08 03:31:13', '<!-- wp:paragraph -->\n<p>\n\nSpiritual, modern, inovatif, love, encouragement, Confident, active, religious, emphaty</p>\n<!-- /wp:paragraph -->', 'TPA PPI', 'TPA PPI PIKPG,<span class=\"color-yellow\"> SMILE AND</span> CARE', 'inherit', 'closed', 'closed', '', '511-revision-v1', '', '', '2019-03-08 03:31:13', '2019-03-08 03:31:13', '', 511, 'https://paudterpadu-pikpg.sch.id/511-revision-v1/', 0, 'revision', '', 0),
(508, 1, '2019-03-08 01:27:26', '2019-03-08 01:27:26', '', 'TK PPI', 'TK PPI PIKPG,<span class=\"color-yellow\"> SMILE AND</span> CARE', 'publish', 'open', 'open', '', 'tk-ppi', '', '', '2019-03-08 03:39:05', '2019-03-08 03:39:05', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=508', 0, 'post', '', 0),
(509, 1, '2019-03-08 01:27:10', '2019-03-08 01:27:10', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-03-08 01:27:10', '2019-03-08 01:27:10', '', 508, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/1.png', 0, 'attachment', 'image/png', 0),
(510, 1, '2019-03-08 01:27:26', '2019-03-08 01:27:26', '', 'TK PPI', '', 'inherit', 'closed', 'closed', '', '508-revision-v1', '', '', '2019-03-08 01:27:26', '2019-03-08 01:27:26', '', 508, 'https://paudterpadu-pikpg.sch.id/508-revision-v1/', 0, 'revision', '', 0),
(511, 1, '2019-03-08 03:28:35', '2019-03-08 03:28:35', '<!-- wp:paragraph -->\n<p>\n\nSpiritual, modern, inovatif, love, encouragement, Confident, active, religious, emphaty</p>\n<!-- /wp:paragraph -->', 'TPA PPI', 'TPA PPI PIKPG,<span class=\"color-yellow\"> SMILE AND</span> CARE', 'publish', 'open', 'open', '', 'tpa-ppi', '', '', '2019-03-08 03:31:14', '2019-03-08 03:31:14', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=511', 0, 'post', '', 0),
(512, 1, '2019-03-08 03:27:33', '2019-03-08 03:27:33', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-03-08 03:27:33', '2019-03-08 03:27:33', '', 511, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/1-1.png', 0, 'attachment', 'image/png', 0),
(514, 1, '2019-03-08 03:28:45', '2019-03-08 03:28:45', '<!-- wp:paragraph -->\n<p>\n\nSpiritual, modern, inovatif, love, encouragement, Confident, active, religious, emphaty</p>\n<!-- /wp:paragraph -->', 'TPA PPI', 'Spiritual, modern, inovatif, love, encouragement, Confident, active, religious, emphaty', 'inherit', 'closed', 'closed', '', '511-revision-v1', '', '', '2019-03-08 03:28:45', '2019-03-08 03:28:45', '', 511, 'https://paudterpadu-pikpg.sch.id/511-revision-v1/', 0, 'revision', '', 0),
(513, 1, '2019-03-08 03:28:35', '2019-03-08 03:28:35', '<!-- wp:paragraph -->\n<p>\n\nSpiritual, modern, inovatif, love, encouragement, Confident, active, religious, emphaty</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sumber Berita:&nbsp;<a href=\"http://tk-ppi.paudterpadu-pikpg.sch.id/#ixzz5hXzwgdMb\">http://tk-ppi.paudterpadu-pikpg.sch.id/#ixzz5hXzwgdMb</a><br>Under Creative Commons License:&nbsp;<a href=\"http://creativecommons.org/licenses/by-nc-nd/3.0\">Attribution Non-Commercial No Derivatives</a></p>\n<!-- /wp:paragraph -->', 'TPA PPI', 'Spiritual, modern, inovatif, love, encouragement, Confident, active, religious, emphaty', 'inherit', 'closed', 'closed', '', '511-revision-v1', '', '', '2019-03-08 03:28:35', '2019-03-08 03:28:35', '', 511, 'https://paudterpadu-pikpg.sch.id/511-revision-v1/', 0, 'revision', '', 0),
(504, 1, '2019-03-08 01:19:00', '2019-03-08 01:19:00', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2019-03-08 01:19:00', '2019-03-08 01:19:00', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/logo1.png', 0, 'attachment', 'image/png', 0),
(505, 1, '2019-03-08 01:19:04', '2019-03-08 01:19:04', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo1.png', 'cropped-logo1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo1-png', '', '', '2019-03-08 01:19:04', '2019-03-08 01:19:04', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo1.png', 0, 'attachment', 'image/png', 0),
(502, 1, '2019-03-08 01:17:49', '2019-03-08 01:17:49', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png-2', '', '', '2019-03-08 01:17:49', '2019-03-08 01:17:49', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(501, 1, '2019-03-08 01:17:44', '2019-03-08 01:17:44', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-03-08 01:17:44', '2019-03-08 01:17:44', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/logo.png', 0, 'attachment', 'image/png', 0),
(481, 1, '2019-02-28 09:05:45', '2019-02-28 09:05:45', '<!-- wp:paragraph -->\n<p>TPA PIKPG</p>\n<!-- /wp:paragraph -->', 'TPA Simanjuntak', 'TPA SIMANJUNTAK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'publish', 'closed', 'closed', '', 'tpa-simanjuntak', '', '', '2019-03-08 03:41:11', '2019-03-08 03:41:11', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=481', 0, 'post', '', 0),
(475, 1, '2019-02-28 08:59:02', '2019-02-28 08:59:02', '<p>Taman Kanak-Kanak PIKPG</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:59:02', '2019-02-28 08:59:02', '', 380, 'https://paudterpadu-pikpg.sch.id/380-revision-v1/', 0, 'revision', '', 0),
(476, 1, '2019-02-28 08:59:17', '2019-02-28 08:59:17', 'Kelompok Belajar PIKPG', 'KB Simanjuntak', 'KB PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '381-revision-v1', '', '', '2019-02-28 08:59:17', '2019-02-28 08:59:17', '', 381, 'https://paudterpadu-pikpg.sch.id/381-revision-v1/', 0, 'revision', '', 0),
(478, 1, '2019-02-28 09:03:17', '2019-02-28 09:03:17', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-02-28 09:03:17', '2019-02-28 09:03:17', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2016/07/3.png', 0, 'attachment', 'image/png', 0),
(498, 1, '2019-03-06 08:42:16', '2019-03-06 08:42:16', '', 'logo pikpg', '', 'inherit', 'open', 'closed', '', 'logo-pikpg', '', '', '2019-03-06 08:42:16', '2019-03-06 08:42:16', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/logo-pikpg.png', 0, 'attachment', 'image/png', 0),
(499, 1, '2019-03-06 08:42:35', '2019-03-06 08:42:35', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo-pikpg.png', 'cropped-logo-pikpg.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-pikpg-png', '', '', '2019-03-06 08:42:35', '2019-03-06 08:42:35', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/03/cropped-logo-pikpg.png', 0, 'attachment', 'image/png', 0),
(362, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', ' ', '', '', 'publish', 'closed', 'closed', '', '362', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 15, 'nav_menu_item', '', 0),
(363, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', ' ', '', '', 'publish', 'closed', 'closed', '', '363', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 19, 'nav_menu_item', '', 0),
(364, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', ' ', '', '', 'publish', 'closed', 'closed', '', '364', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 20, 'nav_menu_item', '', 0),
(365, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', ' ', '', '', 'publish', 'closed', 'closed', '', '365', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 23, 'nav_menu_item', '', 0),
(366, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 'pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/pages/', 4, 'nav_menu_item', '', 0),
(367, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 'Search Results', '', 'publish', 'closed', 'closed', '', 'search-results', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/search-results/', 9, 'nav_menu_item', '', 0),
(368, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 'Search No Result', '', 'publish', 'closed', 'closed', '', 'search-no-result', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/search-no-result/', 10, 'nav_menu_item', '', 0),
(369, 1, '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 'Error 404', '', 'publish', 'closed', 'closed', '', 'error-404', '', '', '2019-02-22 02:24:26', '2019-02-22 02:24:26', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/error-404/', 11, 'nav_menu_item', '', 0),
(370, 1, '2016-07-14 05:12:53', '2016-07-14 05:12:53', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/8degree/wp-coporate/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page-2', '', '', '2016-07-14 05:12:53', '2016-07-14 05:12:53', '', 0, 'http://localhost/8degree/wp-coporate/?page_id=2', 0, 'page', '', 0),
(371, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '371', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 0, 'nav_menu_item', '', 0),
(23, 1, '2016-07-15 06:16:11', '2016-07-15 06:16:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2016-07-15 06:16:11', '2016-07-15 06:16:11', '', 0, 'http://localhost/8degree/wp-coporate/?page_id=23', 0, 'page', '', 0),
(372, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '372', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 2, 'nav_menu_item', '', 0),
(46, 1, '2016-07-22 06:16:24', '2016-07-22 06:16:24', '[ufbl form_id=\"1\"]\n\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.27694383222!2d85.29111314602403!3d27.709031833628234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600!5e0!3m2!1sen!2snp!4v1473162596598\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-07-22 06:16:24', '2016-07-22 06:16:24', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=46', 0, 'page', '', 0),
(373, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '373', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 3, 'nav_menu_item', '', 0),
(100, 1, '2016-08-10 08:20:31', '2016-08-10 08:20:31', '<!-- wp:paragraph -->\n<p>Tulis Alasan disini.......</p>\n<!-- /wp:paragraph -->', 'WHY PAUD TERPADU PIKPG?', '', 'publish', 'closed', 'closed', '', 'why-8-degree', '', '', '2019-09-09 01:50:06', '2019-09-09 01:50:06', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=100', 0, 'page', '', 0),
(557, 1, '2019-09-09 01:47:12', '2019-09-09 01:47:12', '', 'MENGAPA PAUD TERPADU PIKPG?', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-09-09 01:47:12', '2019-09-09 01:47:12', '', 100, 'https://paudterpadu-pikpg.sch.id/100-revision-v1/', 0, 'revision', '', 0),
(556, 1, '2019-09-09 01:46:58', '2019-09-09 01:46:58', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>fsdfsdfsdfsdfsdf</p></blockquote>\n<!-- /wp:quote -->', 'MENGAPA PAUD TERPADU PIKPG?', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-09-09 01:46:58', '2019-09-09 01:46:58', '', 100, 'https://paudterpadu-pikpg.sch.id/100-revision-v1/', 0, 'revision', '', 0),
(558, 1, '2019-09-09 01:48:05', '2019-09-09 01:48:05', '<!-- wp:paragraph -->\n<p>Tulis Alasan disini.......</p>\n<!-- /wp:paragraph -->', 'MENGAPA PAUD TERPADU PIKPG?', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-09-09 01:48:05', '2019-09-09 01:48:05', '', 100, 'https://paudterpadu-pikpg.sch.id/100-revision-v1/', 0, 'revision', '', 0),
(559, 1, '2019-09-09 01:50:06', '2019-09-09 01:50:06', '<!-- wp:paragraph -->\n<p>Tulis Alasan disini.......</p>\n<!-- /wp:paragraph -->', 'WHY PAUD TERPADU PIKPG?', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-09-09 01:50:06', '2019-09-09 01:50:06', '', 100, 'https://paudterpadu-pikpg.sch.id/100-revision-v1/', 0, 'revision', '', 0),
(374, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '374', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 4, 'nav_menu_item', '', 0),
(189, 1, '2016-08-23 10:36:12', '2016-08-23 10:36:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie urna quis nunc aliquam egestas. Pellentesque eget gravida eros. Aliquam lectus neque, vehicula rutrum ante vitae, tempor convallis magna. Praesent mauris arcu, rutrum eget neque auctor, condimentum rhoncus tortor. Duis suscipit pulvinar justo ut cursus. Praesent fermentum leo nulla, sit amet mattis ligula commodo non. Morbi semper massa a malesuada vestibulum. Aliquam vel justo placerat, consequat ex non, dictum mauris. Ut feugiat ac purus quis volutpat.\n\nPellentesque nulla nibh, auctor eu efficitur et, scelerisque ut metus. Mauris ac purus lorem. Donec varius suscipit auctor. Integer eros lorem, finibus id condimentum id, vehicula vitae lectus. Maecenas id cursus massa. Nulla volutpat suscipit ultricies. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\nMauris vel dolor dui. Nam eu lectus eget diam tempor vestibulum. Etiam ut velit ut risus accumsan ultricies a eu magna. Praesent eu augue ut nisl molestie mattis. Aliquam sed lobortis nisi. Praesent sed urna metus. Curabitur maximus leo purus, euismod imperdiet nisi pretium vel. Donec eget mi dignissim, interdum ante eu, suscipit neque. Donec fermentum dui id ex mattis tempus. Sed varius, tortor vel laoreet gravida, eros lacus vestibulum orci, eu semper erat augue sed dolor. Nunc nec lobortis odio. Sed imperdiet erat in enim molestie venenatis. Praesent ac mattis risus.', 'Left Sidebar', '', 'publish', 'closed', 'closed', '', 'left-sidebar', '', '', '2016-08-23 10:36:12', '2016-08-23 10:36:12', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=189', 0, 'page', '', 0),
(375, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '375', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 5, 'nav_menu_item', '', 0),
(191, 1, '2016-08-23 10:37:16', '2016-08-23 10:37:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie urna quis nunc aliquam egestas. Pellentesque eget gravida eros. Aliquam lectus neque, vehicula rutrum ante vitae, tempor convallis magna. Praesent mauris arcu, rutrum eget neque auctor, condimentum rhoncus tortor. Duis suscipit pulvinar justo ut cursus. Praesent fermentum leo nulla, sit amet mattis ligula commodo non. Morbi semper massa a malesuada vestibulum. Aliquam vel justo placerat, consequat ex non, dictum mauris. Ut feugiat ac purus quis volutpat.\n\nPellentesque nulla nibh, auctor eu efficitur et, scelerisque ut metus. Mauris ac purus lorem. Donec varius suscipit auctor. Integer eros lorem, finibus id condimentum id, vehicula vitae lectus. Maecenas id cursus massa. Nulla volutpat suscipit ultricies. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\nMauris vel dolor dui. Nam eu lectus eget diam tempor vestibulum. Etiam ut velit ut risus accumsan ultricies a eu magna. Praesent eu augue ut nisl molestie mattis. Aliquam sed lobortis nisi. Praesent sed urna metus. Curabitur maximus leo purus, euismod imperdiet nisi pretium vel. Donec eget mi dignissim, interdum ante eu, suscipit neque. Donec fermentum dui id ex mattis tempus. Sed varius, tortor vel laoreet gravida, eros lacus vestibulum orci, eu semper erat augue sed dolor. Nunc nec lobortis odio. Sed imperdiet erat in enim molestie venenatis. Praesent ac mattis risus.', 'Right Sidebar', '', 'publish', 'closed', 'closed', '', 'right-sidebar', '', '', '2016-08-23 10:37:16', '2016-08-23 10:37:16', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=191', 0, 'page', '', 0),
(376, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '376', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 6, 'nav_menu_item', '', 0),
(193, 1, '2016-08-23 10:38:10', '2016-08-23 10:38:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie urna quis nunc aliquam egestas. Pellentesque eget gravida eros. Aliquam lectus neque, vehicula rutrum ante vitae, tempor convallis magna. Praesent mauris arcu, rutrum eget neque auctor, condimentum rhoncus tortor. Duis suscipit pulvinar justo ut cursus. Praesent fermentum leo nulla, sit amet mattis ligula commodo non. Morbi semper massa a malesuada vestibulum. Aliquam vel justo placerat, consequat ex non, dictum mauris. Ut feugiat ac purus quis volutpat. Pellentesque nulla nibh, auctor eu efficitur et, scelerisque ut metus. Mauris ac purus lorem. Donec varius suscipit auctor. Integer eros lorem, finibus id condimentum id, vehicula vitae lectus. Maecenas id cursus massa. Nulla volutpat suscipit ultricies. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\nMauris vel dolor dui. Nam eu lectus eget diam tempor vestibulum. Etiam ut velit ut risus accumsan ultricies a eu magna. Praesent eu augue ut nisl molestie mattis. Aliquam sed lobortis nisi. Praesent sed urna metus. Curabitur maximus leo purus, euismod imperdiet nisi pretium vel. Donec eget mi dignissim, interdum ante eu, suscipit neque. Donec fermentum dui id ex mattis tempus. Sed varius, tortor vel laoreet gravida, eros lacus vestibulum orci, eu semper erat augue sed dolor. Nunc nec lobortis odio. Sed imperdiet erat in enim molestie venenatis. Praesent ac mattis risus.', 'Both Sidebar', '', 'publish', 'closed', 'closed', '', 'both-sidebar', '', '', '2016-08-23 10:38:10', '2016-08-23 10:38:10', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=193', 0, 'page', '', 0),
(377, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', ' ', '', '', 'publish', 'closed', 'closed', '', '377', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 7, 'nav_menu_item', '', 0),
(378, 1, '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 'Slider Layout in Pages', '', 'publish', 'closed', 'closed', '', 'slider-layout-in-pages', '', '', '2019-02-22 02:24:28', '2019-02-22 02:24:28', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/slider-layout-in-pages/', 12, 'nav_menu_item', '', 0),
(380, 1, '2016-07-14 09:30:39', '2016-07-14 09:30:39', '<p>Taman Kanak-Kanak PIKPG</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK SIMANJUNTAK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'publish', 'closed', 'closed', '', 'tk-simanjuntak', '', '', '2019-03-08 03:41:20', '2019-03-08 03:41:20', '', 0, 'http://localhost/8degree/wp-coporate/?p=7', 0, 'post', '', 0),
(381, 1, '2016-07-14 09:34:44', '2016-07-14 09:34:44', 'Kelompok Belajar PIKPG', 'KB Simanjuntak', 'KB SIMANJUNTAK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'publish', 'open', 'open', '', 'kb-simanjuntak', '', '', '2019-03-08 03:41:28', '2019-03-08 03:41:28', '', 0, 'http://localhost/8degree/wp-coporate/?p=15', 0, 'post', '', 0),
(195, 1, '2016-08-23 10:39:28', '2016-08-23 10:39:28', '<img class=\"alignright wp-image-71 size-large\" src=\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2016/07/notebook-405755_1920-1024x683.jpg\" alt=\"notebook-405755_1920\" width=\"640\" height=\"427\" />\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie urna quis nunc aliquam egestas. Pellentesque eget gravida eros. Aliquam lectus neque, vehicula rutrum ante vitae, tempor convallis magna. Praesent mauris arcu, rutrum eget neque auctor, condimentum rhoncus tortor. Duis suscipit pulvinar justo ut cursus. Praesent fermentum leo nulla, sit amet mattis ligula commodo non. Morbi semper massa a malesuada vestibulum. Aliquam vel justo placerat, consequat ex non, dictum mauris. Ut feugiat ac purus quis volutpat. Pellentesque nulla nibh, auctor eu efficitur et, scelerisque ut metus. Mauris ac purus lorem. Donec varius suscipit auctor. Integer eros lorem, finibus id condimentum id, vehicula vitae lectus. Maecenas id cursus massa. Nulla volutpat suscipit ultricies. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\nSed sem libero, vehicula a tellus vel, tempor eleifend diam. Quisque posuere massa at magna cursus tincidunt. Nam tincidunt mauris in imperdiet varius. Curabitur nunc lorem, dignissim vitae rutrum in, dignissim nec purus. In enim lorem, rhoncus id nisl vitae, congue bibendum neque. Mauris ut cursus mi, nec ultricies elit. Praesent in nibh commodo, mattis arcu rhoncus, rhoncus ipsum. Curabitur sodales nibh non quam tempor, eget pellentesque lorem aliquet. Sed tempor elementum turpis, accumsan feugiat lacus scelerisque non. Nulla quis consequat lacus.\n\n<img class=\"alignleft wp-image-16 size-large\" src=\"https://8degreethemes.com/demo/wp-corporate/wp-content/uploads/2016/07/write-593333_1920-1024x605.jpg\" alt=\"write-593333_1920\" width=\"640\" height=\"378\" />\n\nMauris vel dolor dui. Nam eu lectus eget diam tempor vestibulum. Etiam ut velit ut risus accumsan ultricies a eu magna. Praesent eu augue ut nisl molestie mattis. Aliquam sed lobortis nisi. Praesent sed urna metus. Curabitur maximus leo purus, euismod imperdiet nisi pretium vel. Donec eget mi dignissim, interdum ante eu, suscipit neque. Donec fermentum dui id ex mattis tempus. Sed varius, tortor vel laoreet gravida, eros lacus vestibulum orci, eu semper erat augue sed dolor. Nunc nec lobortis odio. Sed imperdiet erat in enim molestie venenatis. Praesent ac mattis risus.', 'No Sidebar', '', 'publish', 'closed', 'closed', '', 'no-sidebar', '', '', '2016-08-23 10:39:28', '2016-08-23 10:39:28', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=195', 0, 'page', '', 0),
(383, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '383', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 8, 'nav_menu_item', '', 0),
(209, 1, '2016-08-25 08:42:22', '2016-08-25 08:42:22', '', 'Boxed Layout', '', 'publish', 'closed', 'closed', '', 'homepage-with-boxed-layout', '', '', '2016-08-25 08:42:22', '2016-08-25 08:42:22', '', 23, 'https://8degreethemes.com/demo/wp-corporate/?page_id=209', 0, 'page', '', 0),
(213, 1, '2016-08-25 09:14:23', '2016-08-25 09:14:23', '', 'With Large Image', '', 'publish', 'closed', 'closed', '', 'with-large-image', '', '', '2016-08-25 09:14:23', '2016-08-25 09:14:23', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=213', 0, 'page', '', 0),
(384, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '384', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 9, 'nav_menu_item', '', 0),
(216, 1, '2016-08-25 09:46:38', '2016-08-25 09:46:38', '', 'With Alternate Image', '', 'publish', 'closed', 'closed', '', 'with-alternate-image', '', '', '2016-08-25 09:46:38', '2016-08-25 09:46:38', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=216', 0, 'page', '', 0),
(385, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '385', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 10, 'nav_menu_item', '', 0),
(219, 1, '2016-08-25 09:47:44', '2016-08-25 09:47:44', '', 'With Medium Image', '', 'publish', 'closed', 'closed', '', 'with-medium-image', '', '', '2016-08-25 09:47:44', '2016-08-25 09:47:44', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=219', 0, 'page', '', 0),
(386, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '386', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 11, 'nav_menu_item', '', 0),
(222, 1, '2016-08-25 09:49:32', '2016-08-25 09:49:32', '', 'Team List View', '', 'publish', 'closed', 'closed', '', 'team-list-view', '', '', '2016-08-25 09:49:32', '2016-08-25 09:49:32', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=222', 0, 'page', '', 0),
(387, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '387', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 12, 'nav_menu_item', '', 0),
(224, 1, '2016-08-25 09:49:29', '2016-08-25 09:49:29', '', 'Team Grid View', '', 'publish', 'closed', 'closed', '', 'team-grid-view', '', '', '2016-08-25 09:49:29', '2016-08-25 09:49:29', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=224', 0, 'page', '', 0),
(388, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '388', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 13, 'nav_menu_item', '', 0),
(229, 1, '2016-08-25 10:02:30', '2016-08-25 10:02:30', '', 'Testimonial with Grid View', '', 'publish', 'closed', 'closed', '', 'testimonial-with-grid-view', '', '', '2016-08-25 10:02:30', '2016-08-25 10:02:30', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=229', 0, 'page', '', 0),
(389, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '389', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 14, 'nav_menu_item', '', 0),
(230, 1, '2016-08-25 10:02:04', '2016-08-25 10:02:04', '', 'Testimonial List View', '', 'publish', 'closed', 'closed', '', 'testimonial-list-view', '', '', '2016-08-25 10:02:04', '2016-08-25 10:02:04', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=230', 0, 'page', '', 0),
(390, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '390', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 15, 'nav_menu_item', '', 0),
(247, 1, '2016-08-28 11:44:55', '2016-08-28 11:44:55', '', 'Menu at top', '', 'publish', 'closed', 'closed', '', 'menu-at-top', '', '', '2016-08-28 11:44:55', '2016-08-28 11:44:55', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=247', 0, 'page', '', 0),
(391, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '391', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 16, 'nav_menu_item', '', 0),
(279, 1, '2016-09-07 08:17:09', '2016-09-07 08:17:09', 'There are two slider layout. In Single Page and Post, Slider are shown after the featured image and before the content. And rest of the pages( like homepage, blog, team, archive,etc),  Slider are shown in Header section. It is default layout of the slider. In default slider layout, Slider can be shown either before and after the menu. But slider in single page and single post doesn\'t have this feature.\n\nThis page contains default slider layout. You can see the slider at top of the pages. i.e. In header.', 'Default Slider', '', 'publish', 'closed', 'closed', '', 'slider-layout-for-category-and-archive', '', '', '2016-09-07 08:17:09', '2016-09-07 08:17:09', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=279', 0, 'page', '', 0),
(392, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '392', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 17, 'nav_menu_item', '', 0),
(283, 1, '2016-09-07 08:20:27', '2016-09-07 08:20:27', 'There are two slider layout. In Single Page and Post, Slider are shown after the featured image and before the content. And rest of the pages( like homepage, blog, team, archive,etc),  Slider are shown in Header section. It is default layout of the slider. In default slider layout, Slider can be shown either before and after the menu. But slider in single page and single post doesn\'t have this feature.\n\nThis page contains other slider layout. You can see the slider after the feature page and before the content(i.e. just above this content).', 'Slider Layout for Single Page and Post', '', 'publish', 'closed', 'closed', '', 'slider-layout-for-single-page-and-post', '', '', '2016-09-07 08:20:27', '2016-09-07 08:20:27', '', 0, 'https://8degreethemes.com/demo/wp-corporate/?page_id=283', 0, 'page', '', 0),
(393, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '393', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 18, 'nav_menu_item', '', 0),
(312, 1, '2016-09-12 05:22:04', '2016-09-12 05:22:04', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-09-12 05:22:04', '2016-09-12 05:22:04', '', 0, 'https://8degreethemes.com/demo/wp-corporate/shop/', 0, 'page', '', 0),
(394, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '394', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 19, 'nav_menu_item', '', 0),
(313, 1, '2016-09-12 05:22:04', '2016-09-12 05:22:04', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-09-12 05:22:04', '2016-09-12 05:22:04', '', 0, 'https://8degreethemes.com/demo/wp-corporate/cart/', 0, 'page', '', 0),
(395, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '395', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 20, 'nav_menu_item', '', 0),
(314, 1, '2016-09-12 05:22:04', '2016-09-12 05:22:04', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-09-12 05:22:04', '2016-09-12 05:22:04', '', 0, 'https://8degreethemes.com/demo/wp-corporate/checkout/', 0, 'page', '', 0),
(396, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '396', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 21, 'nav_menu_item', '', 0),
(315, 1, '2016-09-12 05:22:04', '2016-09-12 05:22:04', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-09-12 05:22:04', '2016-09-12 05:22:04', '', 0, 'https://8degreethemes.com/demo/wp-corporate/my-account/', 0, 'page', '', 0),
(397, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '397', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/', 22, 'nav_menu_item', '', 0),
(473, 1, '2019-02-28 08:57:24', '2019-02-28 08:57:24', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-02-28 08:57:24', '2019-02-28 08:57:24', '', 381, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2016/07/2.png', 0, 'attachment', 'image/png', 0),
(398, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '398', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/398/', 1, 'nav_menu_item', '', 0),
(399, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '399', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/399/', 30, 'nav_menu_item', '', 0),
(400, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '400', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/400/', 8, 'nav_menu_item', '', 0),
(401, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '401', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/401/', 7, 'nav_menu_item', '', 0),
(402, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '402', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/402/', 6, 'nav_menu_item', '', 0),
(403, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '403', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/403/', 5, 'nav_menu_item', '', 0),
(404, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'With Boxed Layout', '', 'publish', 'closed', 'closed', '', 'with-boxed-layout', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 23, 'https://paudterpadu-pikpg.sch.id/2019/02/22/with-boxed-layout/', 2, 'nav_menu_item', '', 0);
INSERT INTO `wpda_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(405, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '405', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/405/', 16, 'nav_menu_item', '', 0),
(406, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '406', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/406/', 18, 'nav_menu_item', '', 0),
(407, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '407', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/407/', 17, 'nav_menu_item', '', 0),
(408, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'With Grid View', '', 'publish', 'closed', 'closed', '', 'with-grid-view', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/with-grid-view/', 22, 'nav_menu_item', '', 0),
(409, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'With List View', '', 'publish', 'closed', 'closed', '', 'with-list-view', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/with-list-view/', 21, 'nav_menu_item', '', 0),
(410, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'With Grid View', '', 'publish', 'closed', 'closed', '', 'with-grid-view-2', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/with-grid-view-2/', 25, 'nav_menu_item', '', 0),
(411, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'With List View', '', 'publish', 'closed', 'closed', '', 'with-list-view-2', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/with-list-view-2/', 24, 'nav_menu_item', '', 0),
(412, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'With Menu at Top', '', 'publish', 'closed', 'closed', '', 'with-menu-at-top', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/with-menu-at-top/', 3, 'nav_menu_item', '', 0),
(413, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '413', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/413/', 1, 'nav_menu_item', '', 0),
(414, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'Layout 2', '', 'publish', 'closed', 'closed', '', 'layout-2', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/layout-2/', 14, 'nav_menu_item', '', 0),
(415, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 'Layout 1(Default)', '', 'publish', 'closed', 'closed', '', 'layout-1default', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/layout-1default/', 13, 'nav_menu_item', '', 0),
(416, 1, '2019-02-22 02:24:29', '2019-02-22 02:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '416', '', '', '2019-02-22 02:24:29', '2019-02-22 02:24:29', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/416/', 27, 'nav_menu_item', '', 0),
(417, 1, '2019-02-22 02:24:30', '2019-02-22 02:24:30', ' ', '', '', 'publish', 'closed', 'closed', '', '417', '', '', '2019-02-22 02:24:30', '2019-02-22 02:24:30', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/417/', 29, 'nav_menu_item', '', 0),
(418, 1, '2019-02-22 02:24:30', '2019-02-22 02:24:30', ' ', '', '', 'publish', 'closed', 'closed', '', '418', '', '', '2019-02-22 02:24:30', '2019-02-22 02:24:30', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/418/', 28, 'nav_menu_item', '', 0),
(419, 1, '2019-02-22 02:24:30', '2019-02-22 02:24:30', ' ', '', '', 'publish', 'closed', 'closed', '', '419', '', '', '2019-02-22 02:24:30', '2019-02-22 02:24:30', '', 0, 'https://paudterpadu-pikpg.sch.id/2019/02/22/419/', 26, 'nav_menu_item', '', 0),
(491, 1, '2019-03-01 08:58:35', '2019-03-01 08:58:35', '', 'TPA PPI', '', 'publish', 'closed', 'closed', '', 'tpa-pongangan-indah', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=491', 5, 'nav_menu_item', '', 0),
(455, 1, '2019-02-22 02:45:35', '2019-02-22 02:45:35', 'TK Simanjuntak', 'TK Simanjuntak', 'FREE WORDPRESS <span class=\"color-yellow\">BUSINESS</span> THEME', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-22 02:45:35', '2019-02-22 02:45:35', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/22/380-revision-v1/', 0, 'revision', '', 0),
(490, 1, '2019-03-01 08:58:35', '2019-03-01 08:58:35', '', 'KB PPI', '', 'publish', 'closed', 'closed', '', 'kb-pongangan-indah', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=490', 6, 'nav_menu_item', '', 0),
(457, 1, '2019-02-28 08:07:46', '2019-02-28 08:07:46', 'BUILD ANY <span class=\"color-yellow\">WEBSITE</span>', 'KB Simanjuntak', 'BUILD ANY <span class=\"color-yellow\">WEBSITE</span>', 'inherit', 'closed', 'closed', '', '381-revision-v1', '', '', '2019-02-28 08:07:46', '2019-02-28 08:07:46', '', 381, 'https://paudterpadu-pikpg.sch.id/2019/02/28/381-revision-v1/', 0, 'revision', '', 0),
(461, 1, '2019-02-28 08:11:27', '2019-02-28 08:11:27', 'TK Simanjuntak', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:11:27', '2019-02-28 08:11:27', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(460, 1, '2019-02-28 08:09:53', '2019-02-28 08:09:53', 'TK Simanjuntak', 'TK Simanjuntak', 'TK PIKPG<span class=\"color-yellow\">, cerdas kreatif, berkarakter</span> THEME', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:09:53', '2019-02-28 08:09:53', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(472, 1, '2019-02-28 08:44:27', '2019-02-28 08:44:27', '<p>TK Simanjuntak</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:44:27', '2019-02-28 08:44:27', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(469, 1, '2019-02-28 08:35:22', '2019-02-28 08:35:22', '<p>TK Simanjuntak</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter\n</br>\n<span>Selengkapnya</span>', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:35:22', '2019-02-28 08:35:22', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(468, 1, '2019-02-28 08:34:21', '2019-02-28 08:34:21', '<p>TK Simanjuntak</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:34:21', '2019-02-28 08:34:21', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(470, 1, '2019-02-28 08:36:05', '2019-02-28 08:36:05', '<p>TK Simanjuntak</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter\n \n<span>Selengkapnya</span>', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:36:05', '2019-02-28 08:36:05', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(471, 1, '2019-02-28 08:36:56', '2019-02-28 08:36:56', '<p>TK Simanjuntak</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'TK Simanjuntak', 'TK PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter\n \n<a href=\"#\">Selengkapnya</a>', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2019-02-28 08:36:56', '2019-02-28 08:36:56', '', 380, 'https://paudterpadu-pikpg.sch.id/2019/02/28/380-revision-v1/', 0, 'revision', '', 0),
(482, 1, '2019-02-28 09:05:45', '2019-02-28 09:05:45', '<!-- wp:paragraph -->\n<p>TPA PIKPG</p>\n<!-- /wp:paragraph -->', 'TPA Simanjuntak', 'TPA PIKPG,<span class=\"color-yellow\"> cerdas kreatif,</span> berkarakter', 'inherit', 'closed', 'closed', '', '481-revision-v1', '', '', '2019-02-28 09:05:45', '2019-02-28 09:05:45', '', 481, 'https://paudterpadu-pikpg.sch.id/481-revision-v1/', 0, 'revision', '', 0),
(542, 1, '2019-09-09 01:16:04', '2019-09-09 01:16:04', '<!-- wp:list {\"ordered\":true} -->\n<ol><li>TPA Simanjuntak</li><li>KB Simanjuntak</li><li>TK Simanjuntak</li><li>TPA Perum Pongangan Indah</li><li>KB  Perum Pongangan Indah </li><li>TK  Perum Pongangan Indah </li></ol>\n<!-- /wp:list -->', 'Lembaga Paud Terpadu PIKPG', '', 'publish', 'closed', 'closed', '', 'lembaga-paud-terpadu-pikpg', '', '', '2019-09-09 01:16:05', '2019-09-09 01:16:05', '', 0, 'https://paudterpadu-pikpg.sch.id/?page_id=542', 0, 'page', '', 0),
(543, 1, '2019-09-09 01:15:23', '2019-09-09 01:15:23', '<!-- wp:list {\"ordered\":true} -->\n<ol><li>TPA Simanjuntak</li><li>KB Simanjuntak</li><li>TK Simanjuntak</li><li>TPA Perum Pongangan Indah</li><li>KB  Perum Pongangan Indah </li><li>TK  Perum Pongangan Indah </li></ol>\n<!-- /wp:list -->', 'Lembaga Paud Terpadu PIKPG', '', 'inherit', 'closed', 'closed', '', '542-revision-v1', '', '', '2019-09-09 01:15:23', '2019-09-09 01:15:23', '', 542, 'https://paudterpadu-pikpg.sch.id/542-revision-v1/', 0, 'revision', '', 0),
(544, 1, '2019-09-09 01:16:04', '2019-09-09 01:16:04', ' ', '', '', 'publish', 'closed', 'closed', '', '544', '', '', '2019-09-09 01:16:04', '2019-09-09 01:16:04', '', 0, 'https://paudterpadu-pikpg.sch.id/544/', 23, 'nav_menu_item', '', 0),
(545, 1, '2019-09-09 01:21:22', '2019-09-09 01:21:22', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2019-12-11 03:21:16', '2019-12-11 03:21:16', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=545', 1, 'nav_menu_item', '', 0),
(555, 1, '2019-09-09 01:46:16', '2019-09-09 01:46:16', '', 'MENGAPA PAUD TERPADU PIKPG?', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-09-09 01:46:16', '2019-09-09 01:46:16', '', 100, 'https://paudterpadu-pikpg.sch.id/100-revision-v1/', 0, 'revision', '', 0),
(554, 1, '2019-09-09 01:45:17', '2019-09-09 01:45:17', 'As the number of mobile users\ncontinues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality. As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.As the number of mobile users continues to outspace the number of desktop users, it should go without saying that designers, now more than ever, have to design with a movile-first mentality.', 'MENGAPA PAUD TERPADU PIKPG?', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-09-09 01:45:17', '2019-09-09 01:45:17', '', 100, 'https://paudterpadu-pikpg.sch.id/100-revision-v1/', 0, 'revision', '', 0),
(656, 1, '2019-12-11 04:37:39', '2019-12-11 04:37:39', '', 'logo', '', 'publish', 'open', 'open', '', 'logo', '', '', '2019-12-11 04:39:11', '2019-12-11 04:39:11', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=656', 0, 'post', '', 0),
(649, 1, '2019-12-11 03:57:04', '2019-12-11 03:57:04', '', 'visi pikpg', '', 'inherit', 'open', 'closed', '', 'visi-pikpg-2', '', '', '2019-12-11 03:57:04', '2019-12-11 03:57:04', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/visi-pikpg.png', 0, 'attachment', 'image/png', 0),
(657, 1, '2019-12-11 04:37:39', '2019-12-11 04:37:39', '', 'logo', '', 'inherit', 'closed', 'closed', '', '656-revision-v1', '', '', '2019-12-11 04:37:39', '2019-12-11 04:37:39', '', 656, 'https://paudterpadu-pikpg.sch.id/656-revision-v1/', 0, 'revision', '', 0),
(640, 1, '2019-12-11 03:10:45', '2019-12-11 03:10:45', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/cropped-LOGO-BARU-PIKPG-1.png', 'cropped-LOGO-BARU-PIKPG-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-baru-pikpg-1-png', '', '', '2019-12-11 03:10:45', '2019-12-11 03:10:45', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/cropped-LOGO-BARU-PIKPG-1.png', 0, 'attachment', 'image/png', 0),
(639, 1, '2019-12-11 03:10:29', '2019-12-11 03:10:29', '', 'LOGO BARU PIKPG', '', 'inherit', 'open', 'closed', '', 'logo-baru-pikpg-2', '', '', '2019-12-11 03:10:29', '2019-12-11 03:10:29', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/LOGO-BARU-PIKPG-1.png', 0, 'attachment', 'image/png', 0),
(635, 1, '2019-12-11 02:49:06', '2019-12-11 02:49:06', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/cropped-LOGO-BARU-PIKPG.png', 'cropped-LOGO-BARU-PIKPG.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-baru-pikpg-png', '', '', '2019-12-11 02:49:06', '2019-12-11 02:49:06', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/cropped-LOGO-BARU-PIKPG.png', 0, 'attachment', 'image/png', 0),
(655, 1, '2019-12-11 04:37:17', '2019-12-11 04:37:17', '', 'visi', '', 'inherit', 'closed', 'closed', '', '654-revision-v1', '', '', '2019-12-11 04:37:17', '2019-12-11 04:37:17', '', 654, 'https://paudterpadu-pikpg.sch.id/654-revision-v1/', 0, 'revision', '', 0),
(631, 1, '2019-12-11 02:44:51', '2019-12-11 02:44:51', 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/cropped-favicon-pikpg-1.png', 'cropped-favicon-pikpg-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-pikpg-1-png', '', '', '2019-12-11 02:44:51', '2019-12-11 02:44:51', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/cropped-favicon-pikpg-1.png', 0, 'attachment', 'image/png', 0),
(629, 1, '2019-12-11 02:43:05', '2019-12-11 02:43:05', '', 'favicon pikpg', '', 'inherit', 'open', 'closed', '', 'favicon-pikpg', '', '', '2019-12-11 02:43:05', '2019-12-11 02:43:05', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/favicon-pikpg.png', 0, 'attachment', 'image/png', 0),
(630, 1, '2019-12-11 02:44:36', '2019-12-11 02:44:36', '', 'favicon pikpg', '', 'inherit', 'open', 'closed', '', 'favicon-pikpg-2', '', '', '2019-12-11 02:44:36', '2019-12-11 02:44:36', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/favicon-pikpg-1.png', 0, 'attachment', 'image/png', 0),
(627, 1, '2019-12-11 02:37:10', '2019-12-11 02:37:10', '', 'logo paud pikpg', '', 'inherit', 'open', 'closed', '', 'logo-paud-pikpg-5', '', '', '2019-12-11 02:37:10', '2019-12-11 02:37:10', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/logo-paud-pikpg-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(626, 1, '2019-12-11 02:36:09', '2019-12-11 02:36:09', '', 'logo paud pikpg', '', 'inherit', 'open', 'closed', '', 'logo-paud-pikpg-4', '', '', '2019-12-11 02:36:09', '2019-12-11 02:36:09', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/logo-paud-pikpg-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(650, 1, '2019-12-11 03:59:25', '2019-12-11 03:59:25', '', 'visi pikpg', '', 'inherit', 'open', 'closed', '', 'visi-pikpg', '', '', '2019-12-11 03:59:25', '2019-12-11 03:59:25', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/visi-pikpg-1.png', 0, 'attachment', 'image/png', 0),
(624, 1, '2019-12-11 02:27:50', '2019-12-11 02:27:50', '', 'logo paud pikpg', '', 'inherit', 'open', 'closed', '', 'logo-paud-pikpg-3', '', '', '2019-12-11 02:27:50', '2019-12-11 02:27:50', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/logo-paud-pikpg-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(634, 1, '2019-12-11 02:48:21', '2019-12-11 02:48:21', '', 'LOGO BARU PIKPG', '', 'inherit', 'open', 'closed', '', 'logo-baru-pikpg', '', '', '2019-12-11 02:48:21', '2019-12-11 02:48:21', '', 0, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/LOGO-BARU-PIKPG.png', 0, 'attachment', 'image/png', 0),
(653, 1, '2019-12-11 04:26:12', '2019-12-11 04:26:12', '', 'misi', '', 'inherit', 'closed', 'closed', '', '651-revision-v1', '', '', '2019-12-11 04:26:12', '2019-12-11 04:26:12', '', 651, 'https://paudterpadu-pikpg.sch.id/651-revision-v1/', 0, 'revision', '', 0),
(654, 1, '2019-12-11 04:37:17', '2019-12-11 04:37:17', '', 'visi', '', 'publish', 'open', 'open', '', 'visi-2', '', '', '2019-12-11 04:37:18', '2019-12-11 04:37:18', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=654', 0, 'post', '', 0),
(584, 1, '2019-09-09 02:49:36', '2019-09-09 02:49:36', '<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.TPA PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.Kelompok Bermain PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.TK PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.TPA PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.Kelompok Bermain PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.TK PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->', 'Tentang Kami', '', 'publish', 'closed', 'closed', '', 'tentang-kami', '', '', '2019-09-09 02:49:36', '2019-09-09 02:49:36', '', 0, 'https://paudterpadu-pikpg.sch.id/?page_id=584', 0, 'page', '', 0),
(585, 1, '2019-09-09 02:45:05', '2019-09-09 02:45:05', '<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.TPA PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.Kelompok Bermain PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.TK PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.TPA PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.Kelompok Bermain PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.TK PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->', 'Tentang Kami', '', 'inherit', 'closed', 'closed', '', '584-revision-v1', '', '', '2019-09-09 02:45:05', '2019-09-09 02:45:05', '', 584, 'https://paudterpadu-pikpg.sch.id/584-revision-v1/', 0, 'revision', '', 0),
(586, 1, '2019-09-09 02:49:36', '2019-09-09 02:49:36', ' ', '', '', 'publish', 'closed', 'closed', '', '586', '', '', '2019-09-09 02:49:36', '2019-09-09 02:49:36', '', 0, 'https://paudterpadu-pikpg.sch.id/586/', 24, 'nav_menu_item', '', 0),
(651, 1, '2019-12-11 04:26:12', '2019-12-11 04:26:12', '', 'misi', '', 'publish', 'open', 'open', '', 'misi', '', '', '2019-12-11 04:26:13', '2019-12-11 04:26:13', '', 0, 'https://paudterpadu-pikpg.sch.id/?p=651', 0, 'post', '', 0),
(595, 1, '2019-09-09 03:50:07', '2019-09-09 03:50:07', '<!-- wp:image {\"id\":598,\"align\":\"right\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright\"><img src=\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/09/IbuDirut1-1.jpg\" alt=\"\" class=\"wp-image-598\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>TPA PIKPG Simanjuntak</li><li>Kelompok Bermain PIKPG Simanjuntak </li><li>TK PIKPG Simanjuntak </li><li>TPA PIKPG Pongangan</li><li>Kelompok Bermain PIKPG Pongangan</li><li>TK PIKPG Pongangan </li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sumber Berita:&nbsp;<a href=\"http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk\">http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk</a><br>Under Creative Commons License:&nbsp;<a href=\"https://creativecommons.org/licenses/by-nc-nd/3.0\">Attribution Non-Commercial No Derivatives</a></p>\n<!-- /wp:paragraph -->', 'SAMBUTAN', '', 'publish', 'closed', 'closed', '', 'sambutan', '', '', '2019-09-09 03:54:19', '2019-09-09 03:54:19', '', 0, 'https://paudterpadu-pikpg.sch.id/?page_id=595', 0, 'page', '', 0),
(596, 1, '2019-09-09 03:50:07', '2019-09-09 03:50:07', ' ', '', '', 'publish', 'closed', 'closed', '', '596', '', '', '2019-09-09 03:50:07', '2019-09-09 03:50:07', '', 0, 'https://paudterpadu-pikpg.sch.id/596/', 25, 'nav_menu_item', '', 0),
(597, 1, '2019-09-09 03:50:07', '2019-09-09 03:50:07', '<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.TPA PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.Kelompok Bermain PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.TK PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.TPA PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.Kelompok Bermain PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.TK PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sumber Berita:&nbsp;<a href=\"http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk\">http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk</a><br>Under Creative Commons License:&nbsp;<a href=\"https://creativecommons.org/licenses/by-nc-nd/3.0\">Attribution Non-Commercial No Derivatives</a></p>\n<!-- /wp:paragraph -->', 'SAMBUTAN', '', 'inherit', 'closed', 'closed', '', '595-revision-v1', '', '', '2019-09-09 03:50:07', '2019-09-09 03:50:07', '', 595, 'https://paudterpadu-pikpg.sch.id/595-revision-v1/', 0, 'revision', '', 0),
(652, 1, '2019-12-11 04:26:07', '2019-12-11 04:26:07', '', 'misi pikpg', '', 'inherit', 'open', 'closed', '', 'misi-pikpg', '', '', '2019-12-11 04:26:07', '2019-12-11 04:26:07', '', 651, 'https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/12/misi-pikpg.png', 0, 'attachment', 'image/png', 0),
(599, 1, '2019-09-09 03:50:46', '2019-09-09 03:50:46', '<!-- wp:image {\"id\":598} -->\n<figure class=\"wp-block-image\"><img src=\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/09/IbuDirut1-1.jpg\" alt=\"\" class=\"wp-image-598\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.TPA PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.Kelompok Bermain PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.TK PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.TPA PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.Kelompok Bermain PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.TK PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sumber Berita:&nbsp;<a href=\"http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk\">http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk</a><br>Under Creative Commons License:&nbsp;<a href=\"https://creativecommons.org/licenses/by-nc-nd/3.0\">Attribution Non-Commercial No Derivatives</a></p>\n<!-- /wp:paragraph -->', 'SAMBUTAN', '', 'inherit', 'closed', 'closed', '', '595-revision-v1', '', '', '2019-09-09 03:50:46', '2019-09-09 03:50:46', '', 595, 'https://paudterpadu-pikpg.sch.id/595-revision-v1/', 0, 'revision', '', 0),
(601, 1, '2019-09-09 03:54:19', '2019-09-09 03:54:19', '<!-- wp:image {\"id\":598,\"align\":\"right\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright\"><img src=\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/09/IbuDirut1-1.jpg\" alt=\"\" class=\"wp-image-598\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>TPA PIKPG Simanjuntak</li><li>Kelompok Bermain PIKPG Simanjuntak </li><li>TK PIKPG Simanjuntak </li><li>TPA PIKPG Pongangan</li><li>Kelompok Bermain PIKPG Pongangan</li><li>TK PIKPG Pongangan </li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sumber Berita:&nbsp;<a href=\"http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk\">http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk</a><br>Under Creative Commons License:&nbsp;<a href=\"https://creativecommons.org/licenses/by-nc-nd/3.0\">Attribution Non-Commercial No Derivatives</a></p>\n<!-- /wp:paragraph -->', 'SAMBUTAN', '', 'inherit', 'closed', 'closed', '', '595-revision-v1', '', '', '2019-09-09 03:54:19', '2019-09-09 03:54:19', '', 595, 'https://paudterpadu-pikpg.sch.id/595-revision-v1/', 0, 'revision', '', 0),
(600, 1, '2019-09-09 03:51:26', '2019-09-09 03:51:26', '<!-- wp:image {\"id\":598,\"align\":\"right\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright\"><img src=\"https://paudterpadu-pikpg.sch.id/wp-content/uploads/2019/09/IbuDirut1-1.jpg\" alt=\"\" class=\"wp-image-598\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Bismillahirrahmanirrahim</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Assalamualaikum Warahmatullah Wabarokatuh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alhamdulillahirrabbil alamin, Puji syukur kami panjatkan kepada Allah SWT, bahwasannnya dengan rahmat dan karuniaNya lah akhirnya website sekolah ini dengan alamat ‘paudterpadu-pikpg.sch.id’ dapat kami buat .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami mengucapkan selamat datang di website kami ‘ PAUD TERPADU PIKPG ‘ yang kami tujukan kepada seluruh unsur pimpinan , guru , karyawan , siswa , walimurid , dan khalayak umum guna dapat mengakses seluruh informasi tentang segala profil , aktifitas / kegiatan serta fasilitas lembaga kami .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlu diketahui bahwa ‘ PAUD TERPADU PIKPG ‘ adalah sebuah lembaga pendidikan yang di dalamnya terdapat 6 lembaga yang terdiri dari :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.TPA PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.Kelompok Bermain PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.TK PIKPG Simanjuntak</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.TPA PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.Kelompok Bermain PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.TK PIKPG Pongangan</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kami selaku koordinator PAUD TERPADU PIKPG mengucapkan teriimakasih kepada tim pembuat website ini yang telah berusaha untuk dapat lebih memperkenalkan segala perihal yang dimiliki masing –masing lembaga . Dan tentunya website kami masuh terdapat banyak kekurangan , oleh karena itu kepada seluruh civitas akademika dan masyarakat umum memberikan saran dan kritik yang membangun demi kemajuan website ini lebih lanjut .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saya berharap Website ini dapat dijadikan wahana interaksi yang positf baik antar civitas akademika maupun masyarakat pada umumnya , sehingga dapat menjalin silaturrahmi yang erat dengan mengharap ridlo Allah SWT dan keikhlasan yang tulus dijiwav demi anak bangsa .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Terimakasih , semoga Allah ‘Azza Wa Jalla menyertai doa kita semua ... Amin .</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sumber Berita:&nbsp;<a href=\"http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk\">http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk</a><br>Under Creative Commons License:&nbsp;<a href=\"https://creativecommons.org/licenses/by-nc-nd/3.0\">Attribution Non-Commercial No Derivatives</a></p>\n<!-- /wp:paragraph -->', 'SAMBUTAN', '', 'inherit', 'closed', 'closed', '', '595-revision-v1', '', '', '2019-09-09 03:51:26', '2019-09-09 03:51:26', '', 595, 'https://paudterpadu-pikpg.sch.id/595-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpda_termmeta`
--

CREATE TABLE `wpda_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpda_terms`
--

CREATE TABLE `wpda_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_terms`
--

INSERT INTO `wpda_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'TK Simanjuntak', 'tk-simanjuntak', 0),
(3, 'menu paud', 'menu-paud', 0),
(5, 'Blog', 'blog', 0),
(6, 'Client', 'client', 0),
(7, 'Featured Post', 'featured-post', 0),
(8, 'Portfolio', 'portfolio', 0),
(9, 'Slider', 'slider', 0),
(10, 'Team', 'team', 0),
(11, 'Testimonial', 'testimonial', 0),
(12, 'Travel', 'travel', 0),
(13, 'Travel', 'travel-portfolio', 0),
(14, 'Work', 'work', 0),
(15, 'Photography', 'photography', 0),
(16, 'Menu 1', 'menu-1', 0),
(17, 'Menu2', 'menu2', 0),
(18, 'slide2', 'slide2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpda_term_relationships`
--

CREATE TABLE `wpda_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_term_relationships`
--

INSERT INTO `wpda_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(362, 16, 0),
(363, 16, 0),
(364, 16, 0),
(365, 16, 0),
(366, 16, 0),
(367, 16, 0),
(368, 16, 0),
(369, 16, 0),
(371, 2, 0),
(372, 2, 0),
(373, 2, 0),
(374, 2, 0),
(375, 2, 0),
(376, 2, 0),
(377, 2, 0),
(378, 16, 0),
(383, 2, 0),
(380, 9, 0),
(381, 9, 0),
(384, 2, 0),
(385, 2, 0),
(386, 2, 0),
(387, 2, 0),
(388, 2, 0),
(389, 2, 0),
(390, 2, 0),
(391, 2, 0),
(392, 2, 0),
(393, 2, 0),
(394, 2, 0),
(395, 2, 0),
(396, 2, 0),
(397, 2, 0),
(398, 16, 0),
(399, 16, 0),
(400, 16, 0),
(401, 16, 0),
(402, 16, 0),
(403, 16, 0),
(404, 16, 0),
(405, 16, 0),
(406, 16, 0),
(407, 16, 0),
(408, 16, 0),
(409, 16, 0),
(410, 16, 0),
(411, 16, 0),
(412, 16, 0),
(413, 17, 0),
(414, 16, 0),
(415, 16, 0),
(416, 16, 0),
(417, 16, 0),
(418, 16, 0),
(419, 16, 0),
(489, 3, 0),
(481, 9, 0),
(490, 3, 0),
(491, 3, 0),
(586, 2, 0),
(508, 9, 0),
(511, 9, 0),
(517, 9, 0),
(544, 2, 0),
(545, 3, 0),
(651, 18, 0),
(596, 2, 0),
(654, 18, 0),
(656, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpda_term_taxonomy`
--

CREATE TABLE `wpda_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_term_taxonomy`
--

INSERT INTO `wpda_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 25),
(3, 3, 'nav_menu', '', 0, 7),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 6),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 0),
(13, 13, 'category', '', 8, 0),
(14, 14, 'category', '', 8, 0),
(15, 15, 'category', '', 8, 0),
(16, 16, 'nav_menu', '', 0, 30),
(17, 17, 'nav_menu', '', 0, 1),
(18, 18, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wpda_usermeta`
--

CREATE TABLE `wpda_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_usermeta`
--

INSERT INTO `wpda_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpda_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpda_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"16709e16959dfa82596468b33ce8510db61105b9788c90eae5971b8885959039\";a:4:{s:10:\"expiration\";i:1576200356;s:2:\"ip\";s:14:\"203.130.237.78\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576027556;}}'),
(17, 1, 'wpda_dashboard_quick_press_last_post_id', '606'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"203.130.237.0\";}'),
(19, 1, 'wpda_user-settings', 'libraryContent=browse'),
(20, 1, 'wpda_user-settings-time', '1552016312'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'wpda_media_library_mode', 'grid'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:0:{}'),
(30, 1, '_yoast_wpseo_profile_updated', '1567825236');

-- --------------------------------------------------------

--
-- Table structure for table `wpda_users`
--

CREATE TABLE `wpda_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpda_users`
--

INSERT INTO `wpda_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bv08owxGjtl2z1oOgXuYeSqyCCeURe0', 'admin', 'admin@paudterpadu-pikpg.sch.id', '', '2019-02-22 00:53:08', '1551141726:$P$BxQ.LJ9SNRXwfzz9VtWSgJT//39B7./', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wpda_yoast_seo_links`
--

CREATE TABLE `wpda_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpda_yoast_seo_links`
--

INSERT INTO `wpda_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(15, 'http://paudterpadu-pikpg.sch.id/tk-simanjuntak/hal-sambutan-kepala-sekolah.html#ixzz5yzoiM2Hk', 595, 0, 'internal'),
(16, 'https://creativecommons.org/licenses/by-nc-nd/3.0', 595, 0, 'external');

-- --------------------------------------------------------

--
-- Table structure for table `wpda_yoast_seo_meta`
--

CREATE TABLE `wpda_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpda_yoast_seo_meta`
--

INSERT INTO `wpda_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(542, 0, 0),
(547, 0, 0),
(548, 0, 0),
(517, 0, 0),
(100, 0, 0),
(584, 0, 0),
(595, 1, 0),
(530, 0, 0),
(603, 0, 0),
(532, 0, 0),
(531, 0, 0),
(533, 0, 0),
(534, 0, 0),
(535, 0, 0),
(536, 0, 0),
(537, 0, 0),
(538, 0, 0),
(539, 0, 0),
(540, 0, 0),
(541, 0, 0),
(552, 0, 0),
(551, 0, 0),
(550, 0, 0),
(549, 0, 0),
(553, 0, 0),
(560, 0, 0),
(561, 0, 0),
(562, 0, 0),
(563, 0, 0),
(564, 0, 0),
(565, 0, 0),
(566, 0, 0),
(567, 0, 0),
(568, 0, 0),
(569, 0, 0),
(570, 0, 0),
(571, 0, 0),
(572, 0, 0),
(573, 0, 0),
(575, 0, 0),
(576, 0, 0),
(577, 0, 0),
(578, 0, 0),
(579, 0, 0),
(580, 0, 0),
(581, 0, 0),
(582, 0, 0),
(583, 0, 0),
(587, 0, 0),
(588, 0, 0),
(589, 0, 0),
(590, 0, 0),
(591, 0, 0),
(593, 0, 0),
(594, 0, 0),
(602, 0, 0),
(604, 0, 0),
(605, 0, 0),
(613, 0, 0),
(617, 0, 0),
(616, 0, 0),
(615, 0, 0),
(614, 0, 0),
(619, 0, 0),
(620, 0, 0),
(546, 0, 0),
(610, 0, 0),
(611, 0, 0),
(646, 0, 0),
(647, 0, 0),
(633, 0, 0),
(618, 0, 0),
(598, 0, 0),
(592, 0, 0),
(574, 0, 0),
(651, 0, 0),
(654, 0, 0),
(656, 0, 0),
(606, 0, 0),
(623, 0, 0),
(625, 0, 0),
(622, 0, 0),
(612, 0, 0),
(609, 0, 0),
(645, 0, 0),
(644, 0, 0),
(607, 0, 0),
(643, 0, 0),
(608, 0, 0),
(628, 0, 0),
(632, 0, 0),
(636, 0, 0),
(637, 0, 0),
(638, 0, 0),
(641, 0, 0),
(642, 0, 0),
(648, 0, 0),
(621, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpda_commentmeta`
--
ALTER TABLE `wpda_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpda_comments`
--
ALTER TABLE `wpda_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wpda_links`
--
ALTER TABLE `wpda_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpda_litespeed_img_optm`
--
ALTER TABLE `wpda_litespeed_img_optm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_2` (`post_id`,`srcpath_md5`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `optm_status` (`optm_status`),
  ADD KEY `root_id` (`root_id`),
  ADD KEY `src_md5` (`src_md5`),
  ADD KEY `srcpath_md5` (`srcpath_md5`);

--
-- Indexes for table `wpda_litespeed_optimizer`
--
ALTER TABLE `wpda_litespeed_optimizer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash_name` (`hash_name`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `wpda_options`
--
ALTER TABLE `wpda_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpda_postmeta`
--
ALTER TABLE `wpda_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpda_posts`
--
ALTER TABLE `wpda_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpda_termmeta`
--
ALTER TABLE `wpda_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpda_terms`
--
ALTER TABLE `wpda_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpda_term_relationships`
--
ALTER TABLE `wpda_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpda_term_taxonomy`
--
ALTER TABLE `wpda_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpda_usermeta`
--
ALTER TABLE `wpda_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpda_users`
--
ALTER TABLE `wpda_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wpda_yoast_seo_links`
--
ALTER TABLE `wpda_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wpda_yoast_seo_meta`
--
ALTER TABLE `wpda_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wpda_commentmeta`
--
ALTER TABLE `wpda_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wpda_comments`
--
ALTER TABLE `wpda_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wpda_links`
--
ALTER TABLE `wpda_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpda_litespeed_img_optm`
--
ALTER TABLE `wpda_litespeed_img_optm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpda_litespeed_optimizer`
--
ALTER TABLE `wpda_litespeed_optimizer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpda_options`
--
ALTER TABLE `wpda_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4038;

--
-- AUTO_INCREMENT for table `wpda_postmeta`
--
ALTER TABLE `wpda_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1598;

--
-- AUTO_INCREMENT for table `wpda_posts`
--
ALTER TABLE `wpda_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=658;

--
-- AUTO_INCREMENT for table `wpda_termmeta`
--
ALTER TABLE `wpda_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpda_terms`
--
ALTER TABLE `wpda_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wpda_term_taxonomy`
--
ALTER TABLE `wpda_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wpda_usermeta`
--
ALTER TABLE `wpda_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wpda_users`
--
ALTER TABLE `wpda_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wpda_yoast_seo_links`
--
ALTER TABLE `wpda_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
