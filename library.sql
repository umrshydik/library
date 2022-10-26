-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2022 pada 15.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sampul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `rak_id` bigint(20) UNSIGNED NOT NULL,
  `stok` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `slug`, `sampul`, `penulis`, `penerbit_id`, `kategori_id`, `rak_id`, `stok`, `total_stok`, `created_at`, `updated_at`) VALUES
(1, 'Mantapu', 'mantapu', 'buku/Tx8CInDUNl06lP09NlmYxJMdc2zyb64THEdqafjS.jpg', 'Jerome', 2, 2, 7, '11', 10, '2022-09-20 00:10:47', '2022-10-25 19:01:18'),
(2, 'Asd', 'asd', 'buku/2PyO35Ht9ThxG4scbrsRubb91HxnrvLIEJijmgMs.jpg', 'Asd', 2, 2, 5, '124', 124, '2022-09-25 02:33:50', '2022-09-28 18:32:49'),
(3, 'Fdas', 'fdas', 'buku/oGAvlhs9K48QyxN2ZcAnWrSIRUHiWH5bJV9OwlH1.jpg', 'Qweweq', 2, 2, 4, '12', 12, '2022-09-25 02:34:20', '2022-10-25 19:01:17'),
(4, 'Fddad', 'fddad', 'buku/SVXWe4s1Msah3qbuMwX0Gu6IrqhYkgwA9P9KdNjT.jpg', 'ASAD', 2, 2, 5, '21', 21, '2022-09-25 02:34:46', '2022-10-25 19:01:17'),
(5, 'Balabala', 'balabala', 'buku/8J0r5LMZLWfQp197eqzjvyqbA8aOD17g96BXh2PR.png', 'Jjjjj', 3, 2, 5, '2', 2, '2022-09-28 20:51:45', '2022-10-25 19:00:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `peminjaman_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id`, `peminjaman_id`, `buku_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-20 01:10:42', '2022-09-20 01:10:42'),
(2, 2, 1, '2022-09-21 19:31:16', '2022-09-21 19:31:16'),
(3, 3, 1, '2022-09-24 21:30:16', '2022-09-24 21:30:16'),
(4, 4, 4, '2022-09-25 02:35:12', '2022-09-25 02:35:12'),
(5, 4, 3, '2022-09-25 02:35:19', '2022-09-25 02:35:19'),
(6, 4, 1, '2022-09-25 02:38:27', '2022-09-25 02:38:27'),
(7, 4, 2, '2022-09-25 02:38:33', '2022-09-25 02:38:33'),
(8, 3, 4, '2022-09-25 02:39:42', '2022-09-25 02:39:42'),
(9, 3, 3, '2022-09-25 02:41:07', '2022-09-25 02:41:07'),
(10, 3, 2, '2022-09-25 02:41:33', '2022-09-25 02:41:33'),
(11, 3, 2, '2022-09-25 02:43:36', '2022-09-25 02:43:36'),
(12, 5, 1, '2022-09-25 02:48:42', '2022-09-25 02:48:42'),
(13, 6, 4, '2022-09-25 05:33:19', '2022-09-25 05:33:19'),
(14, 7, 1, '2022-09-28 18:09:40', '2022-09-28 18:09:40'),
(15, 7, 2, '2022-09-28 18:12:22', '2022-09-28 18:12:22'),
(18, 10, 4, '2022-09-28 20:58:10', '2022-09-28 20:58:10'),
(19, 11, 5, '2022-09-28 21:01:59', '2022-09-28 21:01:59'),
(20, 11, 4, '2022-09-28 21:03:08', '2022-09-28 21:03:08'),
(21, 12, 5, '2022-09-29 18:56:43', '2022-09-29 18:56:43'),
(22, 13, 5, '2022-09-29 19:02:29', '2022-09-29 19:02:29'),
(23, 14, 4, '2022-09-30 16:49:55', '2022-09-30 16:49:55'),
(24, 14, 3, '2022-09-30 16:50:00', '2022-09-30 16:50:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'None', 'none', '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(2, 'Matematika', 'matematika', '2022-09-20 00:10:47', '2022-09-20 00:10:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_10_074424_create_permission_tables', 1),
(5, '2021_06_10_092718_create_kategori_table', 1),
(6, '2021_06_10_092904_create_rak_table', 1),
(7, '2021_06_10_092922_create_penerbit_table', 1),
(8, '2021_06_10_092940_create_buku_table', 1),
(9, '2021_06_25_084641_create_peminjaman_table', 1),
(10, '2021_06_25_085011_create_detail_peminjaman_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peminjam_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_pinjam` bigint(20) UNSIGNED DEFAULT NULL,
  `petugas_kembali` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `denda` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `kode_pinjam`, `peminjam_id`, `petugas_pinjam`, `petugas_kembali`, `status`, `denda`, `tanggal_pinjam`, `tanggal_kembali`, `tanggal_pengembalian`, `created_at`, `updated_at`) VALUES
(1, '169580031', 3, 1, 1, 3, 0, '2022-09-20', '2022-09-27', '2022-09-20', '2022-09-20 01:10:42', '2022-09-20 01:11:38'),
(2, '441784022', 4, 1, 1, 3, 27000, '2022-09-22', '2022-09-29', '2022-10-26', '2022-09-21 19:31:16', '2022-10-25 19:01:18'),
(3, '982687747', 7, 1, 1, 3, 0, '2022-09-25', '2022-10-02', '2022-09-25', '2022-09-24 21:30:16', '2022-09-25 02:39:13'),
(4, '195483725', 7, 1, 1, 3, 0, '2022-09-25', '2022-10-02', '2022-09-25', '2022-09-25 02:35:12', '2022-09-25 02:39:24'),
(5, '664709232', 7, 1, 1, 3, 0, '2022-09-25', '2022-10-02', '2022-09-25', '2022-09-25 02:48:42', '2022-09-25 02:50:59'),
(6, '391802584', 7, 1, 1, 3, 0, '2022-09-29', '2022-10-06', '2022-09-29', '2022-09-25 05:33:19', '2022-09-28 20:47:19'),
(7, '284283253', 3, 1, 1, 3, 0, '2022-09-29', '2022-10-06', '2022-09-29', '2022-09-28 18:09:40', '2022-09-28 18:32:49'),
(10, '320426343', 3, 1, 1, 3, 20000, '2022-09-29', '2022-10-06', '2022-10-26', '2022-09-28 20:58:10', '2022-10-25 19:00:47'),
(11, '807167331', 3, 1, 1, 3, 7000, '2022-09-29', '2022-10-06', '2022-10-13', '2022-09-28 21:01:59', '2022-10-12 20:14:10'),
(12, '984187333', 3, 1, 1, 3, 0, '2022-09-30', '2022-10-07', '2022-09-30', '2022-09-29 18:56:43', '2022-09-29 19:01:48'),
(13, '790043765', 3, 1, 1, 3, 19000, '2022-09-30', '2022-10-07', '2022-10-26', '2022-09-29 19:02:29', '2022-10-25 19:00:46'),
(14, '163499547', 3, 1, 1, 3, 0, '2022-10-26', '2022-11-02', '2022-10-26', '2022-09-30 16:49:55', '2022-10-25 19:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'None', 'none', '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(2, 'Gramedia', 'gramedia', '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(3, 'Erlangga', 'erlangga', '2022-09-20 00:10:47', '2022-09-20 00:10:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id`, `rak`, `baris`, `slug`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, '0', '0', '0', 1, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(2, '1', '1', '1-1', 2, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(3, '1', '2', '1-2', 2, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(4, '1', '3', '1-3', 2, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(5, '1', '4', '1-4', 2, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(6, '1', '5', '1-5', 2, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(7, '2', '1', '2-1', 3, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(8, '2', '2', '2-2', 3, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(9, '2', '3', '2-3', 3, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(10, '2', '4', '2-4', 3, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(11, '2', '5', '2-5', 3, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(12, '3', '1', '3-1', 6, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(13, '3', '2', '3-2', 6, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(14, '3', '3', '3-3', 6, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(15, '3', '4', '3-4', 6, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(16, '3', '5', '3-5', 6, '2022-09-20 00:10:47', '2022-09-20 00:10:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(2, 'petugas', 'web', '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(3, 'peminjam', 'web', '2022-09-20 00:10:47', '2022-09-20 00:10:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-09-20 00:10:47', '$2y$10$zLHK6vYKZHxWA.3UCqif6.ORkQynIKKjhNvPiylwqKd90NkbbPJwK', NULL, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(2, 'Petugas', 'petugas@gmail.com', '2022-09-20 00:10:47', '$2y$10$VKOlza8POg30PYx015HD5eV8eDovp8L4IsoRKqITDnNBYt2KGz04O', NULL, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(3, 'Peminjam', 'peminjam@gmail.com', '2022-09-20 00:10:47', '$2y$10$1ZKZMR..1qfilq9ZpfgOEOAz4pEobqjWPgnfVi4xmTPdn.dxhLmVG', NULL, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(4, 'Wisnu saputra', 'wisnu@gmail.com', '2022-09-20 00:10:47', '$2y$10$HxxIA0vE.zePzy.AFkKmueZhXlTn1TZVisPrC6/EAegQP.X9hmzva', NULL, '2022-09-20 00:10:47', '2022-09-20 00:10:47'),
(6, 'Natan', 'natan@gmail.com', NULL, '$2y$10$lsWE4pv6AQ2ENREX1r.Egu7I8nY1fgINLEUiwlTgpDcDcj8e8NL5i', NULL, '2022-09-20 01:09:05', '2022-09-20 01:09:05'),
(7, 'Hendrik', 'hendrik@gmail.com', NULL, '$2y$10$I06CMLP6JQqcVVpi3r7vveA5kvpzoS1UWvDBX20yElroOIsn3DJnS', NULL, '2022-09-24 21:29:47', '2022-09-24 21:29:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rak`
--
ALTER TABLE `rak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
