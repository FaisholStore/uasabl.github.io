-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jul 2023 pada 17.58
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas-abl-api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_07_26_035501_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'api-product', '1b1a193cbdd03263f60daf3c8ee1e0541324060a57674db5b626d8ccaa3f5eb3', '[\"*\"]', NULL, NULL, '2023-07-26 04:19:53', '2023-07-26 04:19:53'),
(2, 'App\\Models\\User', 4, 'api-product', '29da03a23d3db991ad9c2a12270dd7e934acdcf5a6227c796ffc62691637f439', '[\"*\"]', NULL, NULL, '2023-07-26 04:24:08', '2023-07-26 04:24:08'),
(3, 'App\\Models\\User', 4, 'api-product', 'fe2709172a8cfbc029d11d7b6567e01bcd59480854452efaaefd647179441c29', '[\"*\"]', NULL, NULL, '2023-07-26 04:24:33', '2023-07-26 04:24:33'),
(4, 'App\\Models\\User', 4, 'api-product', 'a0a1de462db28a464f8dd7170e4fa582fdf44511be04e21372a66f8293fcf436', '[\"*\"]', NULL, NULL, '2023-07-26 04:27:27', '2023-07-26 04:27:27'),
(5, 'App\\Models\\User', 4, 'api-product', 'ef621b00343fc25ae00e8d551168a1610ef8cf7f89c493a983364e390f1031e6', '[\"*\"]', NULL, NULL, '2023-07-26 04:28:16', '2023-07-26 04:28:16'),
(6, 'App\\Models\\User', 4, 'api-product', 'dcd21fcaa9ab09800ed9ae7338565aae2967e7531897ce4e872b69f2a20396ea', '[\"*\"]', '2023-07-26 08:39:53', NULL, '2023-07-26 08:27:27', '2023-07-26 08:39:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat_rumah` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nim`, `fakultas`, `jurusan`, `tanggal_lahir`, `alamat_rumah`, `created_at`, `updated_at`) VALUES
(1, 'Ihsan Daliman Nugroho S.Gz', '202129591195', 'Ilmu Komputer', 'Teknik Informatika', '1984-03-30', 'Psr. Pelajar Pejuang 45 No. 778, Ternate 25650, Banten', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(2, 'Usyi Yance Hasanah M.Farm', '202197708224', 'Ilmu Komputer', 'Sistem Informasi', '1996-08-28', 'Jr. B.Agam 1 No. 131, Kotamobagu 18642, Bengkulu', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(3, 'Karja Firmansyah', '202154513398', 'Ilmu Komputer', 'Sistem Informasi', '1994-11-02', 'Dk. Untung Suropati No. 171, Bukittinggi 45086, Sulsel', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(4, 'Heru Cawisono Manullang', '202149819871', 'Ilmu Komputer', 'Teknik Elektro', '1980-07-14', 'Kpg. Jagakarsa No. 968, Padang 18770, Bali', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(5, 'Maras Utama', '202106724610', 'Ilmu Komputer', 'Sistem Informasi', '1972-09-25', 'Psr. Reksoninten No. 388, Tangerang Selatan 67213, Bali', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(6, 'Winda Aryani S.IP', '202121559949', 'Ilmu Komputer', 'Teknik Elektro', '1975-01-08', 'Ds. Baladewa No. 927, Bekasi 76420, Jambi', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(7, 'Padmi Padmasari S.Ked', '202173764329', 'Ilmu Komputer', 'Sistem Informasi', '1978-05-26', 'Jr. Industri No. 183, Sibolga 52437, Aceh', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(8, 'Makuta Jono Firmansyah', '202155921447', 'Ilmu Komputer', 'Sistem Informasi', '1974-08-25', 'Jr. Baung No. 948, Bandar Lampung 51776, NTT', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(9, 'Mumpuni Paiman Mangunsong', '202131751831', 'Ilmu Komputer', 'Sistem Informasi', '2001-01-19', 'Ki. Wahid Hasyim No. 27, Jambi 94833, Babel', '2023-07-26 00:49:34', '2023-07-26 00:49:34'),
(10, 'Hana Usada', '202123093712', 'Ilmu Komputer', 'Teknik Informatika', '1977-06-09', 'Ki. Sukajadi No. 804, Ternate 98051, Jateng', '2023-07-26 00:49:34', '2023-07-26 00:49:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'faishol', 'faishol2561@gmail.com', NULL, '$2y$10$iqu8K1zIvJkz0/LTaMrAE.ROAJsNIt0Pgd591l6rH8EzUthuoC/Ee', NULL, '2023-07-26 02:23:22', '2023-07-26 02:23:22'),
(2, 'faishol', 'faishol25611@gmail.com', NULL, '$2y$10$UG02Ohjx9sdc/rROrAsffus.N92h48kSbOna0F6yDpvcP.dMc95F2', NULL, '2023-07-26 03:03:59', '2023-07-26 03:03:59'),
(3, 'faissholll', 'faishshol@gmail.com', NULL, '$2y$10$wXkuHSC/V/j5hZqnM2n5XOEiIOh0GGCes/K7RzH.SbBwDrH5NWuE2', NULL, '2023-07-26 03:12:58', '2023-07-26 03:12:58'),
(4, 'wijanarko', 'rrqhoishi891@gmail.com', NULL, '$2y$10$ahqN.R/J3fciHMTsmxj7WORzvozXPaw5xJCVTmAS/XPWENtvX23Gi', NULL, '2023-07-26 03:38:54', '2023-07-26 03:38:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_nim_unique` (`nim`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
