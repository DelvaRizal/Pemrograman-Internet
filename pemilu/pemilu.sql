-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2015 pada 00.37
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `pemilu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `artikel1` varchar(1000) NOT NULL,
  `artikel2` varchar(1000) NOT NULL,
  `caleg` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `artikel1`, `artikel2`, `caleg`) VALUES
(1, 'JAKARTA, KOMPAS.com', 'Komisi Pemilihan Umum (KPU) menetapkan Partai Golkar mendapat 91 kursi DPR periode 2014-2019. Dari 91 kursi DPR tersebut, sebanyak 49 kursi diisi oleh wajah-wajah baru dan sisanya, 42, orang merupakan petahana. Anggota petahana yang terpilih kembali dari Partai Golkar ialah 1. Meutya Hafid (Sumatera Utara I, 45.232 suara), 2. Anthon Sihombing (Sumatera Utara III, 66.601 suara), 3. HM Idris Laena (Riau II, 91.595 suara), 4. Dodi Reza Alex Noerdin (Sumatera Selatan I, 203.246 suara), 5. Kahar Muzakir (Sumatera Selatan I, 49.025 suara), 6. Aziz Syamsuddin (Lampung II, 70.619 suara), 7. Azhar Romli (Bangka Belitung, 33.693 suara), 8. Fayakhun Andriadi (Jakarta II, 25.446 suara), 9. Tantowi Yahya (Jakarta III, 45.507 suara), 10. Popong Otje Djunjunan (Jawa Barat I, 26.090 suara).', '11. Agus Gumiwang Kartasasmita (Jawa Barat II, 102.469 suara), 12. Lili Asdjudiredja (Jawa Barat II, 44.285 suara), 13. Deding Ishaq (Jawa Barat III, 33.009 suara), 14. Dewi Asmara (Jawa Barat IV, 77.158 suara	), 15. Airlangga Hartarto (Jawa Barat V, 113.939 suara), 16. Ade Komarudin (Jawa Barat VII, 167.732 suara), 17. Eldie Suwandie (Jawa Barat IX, 90.588 suara), 18. Agun Gunanjar Sudarsa (Jawa Barat X, 69.359 suara), 19. Ferdiansyah (Jabar XI, 67.847 suara), 20. Nusron Wahid (Jawa Tengah II, 243.021 suara). 21. Firman Subagyo (Jawa Tengah III, 90.757 suara), 22. Bambang Soesatyo (Jawa Tengah VII, 57.235 suara), 23. Dito Ganindito (Jawa Tengah VIII, 49.137 suara), 24. Budi Supriyanto (Jawa Tengah X, 57.339 suara), 25. Hardisoesilo	(Jawa Timur III, 34.000 suara), 26. SW Yudha (Jawa Timur IX, 46.022 suara), 27. Zainudin Amali (Jawa Timur XI, 122.167 suara), 28. Gde Sumarja Linggih (Bali, 141.168 suara), 29. Muhammad Lutfi (Nusa Tenggara Barat, 59.074 suara), 30. Melchias Markus Mekeng ', 'alvian'),
(2, 'artikel baru', 'menulis karakter dari seseorang', 'setiap teks ditampilkan', 'budi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `berita1` varchar(1000) NOT NULL,
  `berita2` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `berita1`, `berita2`) VALUES
(1, 'Pemilu 2014', 'Pemilu 2014 telah selesai digelar. Salah satu evaluasinya adalah masalah daftar pemilih dan pencetakan kertas suara yang berlebihan.\r\n\r\nLicense Officer pasangan capres-cawapres Prabowo-Hatta, Yanuar Arief menilai permasalahan daftar pemilih tak pernah lepas dari pemilu. Padahal menurut Yanuar, untuk mengkroscek daftar pemilih memerlukan dana yang tidak sedikit.\r\n\r\n"Toh pada pileg dan pilpres ini menjadi masalah. Bahkan di pilpres mengemuka begitu dahsyat soal DPKTB. Jumlah pasti jumlah pemilih yang terdaftar selalu tidak valid," kata Yanuar dalam diskusi di Komisi Pemilihan Umum (KPU), Jalan Imam Bonjol, Jakarta Pusat, Kamis (9/10/2014).', 'Yanuar juga menyayangkan penyediaan dan pencetakan kertas suara yang begitu besar. Padahal menurut Yanuar, angka golput atau pemilih yang tidak menggunakan hak suaranya cukup besar pada Pemilu 2014 kemarin. Hal itu pun dianggapnya sebagai pemborosan anggaran penyelenggaraan pemilu. "Terkait kebutuhan kertas suara. Partisipasi kemarin sekitar 70 persen. Kalau dicetak 100 persen, Rp 900 milar. Kalau 30 persen tidak digunakan, Rp 270 miliar mubazir," ucap dia. Untuk itu, Yanuar meminta kepada KPU sebagai penyelenggara pemilu untuk lebih teliti dalam menentukan daftar pemilih sehingga dapat mengetahui kebutuhan kertas suara bagi para pemilih sehingga nantinya tidak terjadi pemborosan anggaran. "Pemilu ke depan itu, coba gunakan pemilih aktif. Orang yang dari awal tidak mau milih, dia tidak akan memilih. Jadi negara mencetak kertas, untuk mereka yang tidak mau memilih," tambah Yanuar.'),
(2, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `caleg`
--

CREATE TABLE IF NOT EXISTS `caleg` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `partai` varchar(20) NOT NULL,
  `dapil` varchar(20) NOT NULL,
  `visi` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `caleg`
--

INSERT INTO `caleg` (`username`, `password`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `email`, `website`, `partai`, `dapil`, `visi`, `foto`, `url`) VALUES
('alvian', '8359d1b6e816f56c4c8850a7311ffb73', 'Alvian Yudha Prawira', 'Pemalang', '1994-12-16', 'Pemalang', 'alvian@yahoo.com', 'http://alvianyp.com', 'PDIP', 'Semarang Selatan', 'Menjadikan Semarang seperti Pemalang', 'caleg/image3.jpg', 'https://github.com/kaqfa/net-prog/tree/master/proj'),
('aris munandar', '288077f055be4fadc3804a69422dd4f8', 'aris munandar', 'kendal', '1986-08-19', 'kendal', 'aris@rocketmail.com', 'http://aris.com', 'PAN', 'Semarang Timur', 'bersih itu indah', 'caleg/image5.jpg', ''),
('budi', 'c67620564d2bbdded755b8e5ca8ec184', 'budi irawan', 'waleri', '1975-01-06', 'waleri indah', 'budi@yahoo.com', 'http://budiirawan.com', 'PKS', 'Semarang Tengah', 'waleri bersih dan sehat', 'caleg/image2.jpg', 'http://suaramerdeka.com'),
('faizhammam', '9d4d4ab0dfdb72a54b895d78b90b09c7', 'faiz hammam', 'semarang', '2015-01-05', 'semarang', 'faiz@gmail.com', 'http://faiz.com', 'GOLKAR', 'Semarang Tengah', 'semarang yang bermartabat', 'caleg/image.jpg', ''),
('ridwan', '8f31477c7030eb3467028724a024bb85', 'Ridwan Arif Kurniawan', 'Semarang', '1994-12-01', 'Semarang', 'ridwanganteng@yahoo.co.id', 'ridwankeren.co.id', 'Demokrat', 'Semarang Selatan', 'Menjadikan orang-orang semarang sekeren saya', 'caleg/image1.jpg', ''),
('valentino', '50b483d799f6b531772078e9cd0fa509', 'valentino rosi', 'garut', '1970-01-01', 'sekaran', 'valen@ymail.com', 'http://valen.com', 'Gerindra', 'Semarang Timur', 'sejahtera dan tenteram', 'caleg/image4.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `komentar` varchar(500) NOT NULL,
  `caleg` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `username`, `komentar`, `caleg`) VALUES
(1, 'alvian', 'test komentar', 'alvian'),
(2, 'rizal', 'komentar untuk mencoba', 'alvian'),
(3, 'zulfa', 'coba komentar', 'ridwan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partai`
--

CREATE TABLE IF NOT EXISTS `partai` (
  `partai` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(20) NOT NULL,
  PRIMARY KEY (`partai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `partai`
--

INSERT INTO `partai` (`partai`, `nama`, `foto`) VALUES
('Demokrat', 'Demokrasi Rakyat', 'partai/demokrat.jpg'),
('Gerindra', 'Gerakan Indonesia Raya', 'partai/gerindra.jpg'),
('GOLKAR', 'Golongan karya', 'partai/golkar.jpg'),
('PAN', 'Partai Amanat Nasional', 'partai/pan.jpg'),
('PDIP', 'Partai Demokrasi Indonesia perjuangan', 'partai/pdip.jpg'),
('PKS', 'Partai Keadilan Sejahtera', 'partai/pks.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `username` varchar(20) NOT NULL,
  `pilihan` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vote`
--

INSERT INTO `vote` (`username`, `pilihan`) VALUES
('elda', 'valentino'),
('rizal', 'alvian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `username` varchar(20) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `no_ktp` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dapil` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `voter`
--

INSERT INTO `voter` (`username`, `nama_lengkap`, `no_ktp`, `password`, `alamat`, `email`, `dapil`) VALUES
('deny', 'deny septianto', '232093', 'da6d061ac88e28b22293c0723d1b7d4a', 'Kendal', 'denys@gmail.com', 'Semarang Utara'),
('elda', 'eldaniati', '123455433333', 'bc101a61000875e2672a9d3e981f3b75', 'semarang, kra gunung', 'elda@gmail.com', 'Semarang Timur'),
('gerrard', 'steven gerrard', '1234567', '6ed61d4b80bb0f81937b32418e98adca', 'semarang', 'gerrardsteven@gmail.com', 'Semarang Tengah'),
('Rizal', 'Delva Rizal', 'A11.2012.07108', '372857c3cb7136fc4209acbe5202949d', 'Riau', 'delvarizal@gmail.com', 'Semarang Selatan'),
('zulfa', 'zulfa shufiyana', '213421', '8eb856767eb1bafe3966a04b3dfec572', 'BANYUMANIK, semarang', 'zulfa@gmail.com', 'Semarang Selatan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
