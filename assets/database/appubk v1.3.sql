-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Apr 2020 pada 08.02
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appubk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay`
--

CREATE TABLE `essay` (
  `soal_id` int(11) NOT NULL,
  `soal_pelajaran` int(11) NOT NULL,
  `soal_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `essay`
--

INSERT INTO `essay` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`) VALUES
(1, 2, 'Cermati kutipan teks dialog berikut!<span style=\"white-space:pre\">	</span><br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/de4ce8d92efc187896dc4cfbba959e2e.PNG\" width=\"452\"><br></div><div><div>Lengkapilah kutipan teks dialog tersebut dengan kalimat pada bagian yang rumpang!</div><div>Gunakan kalimat, ejaan, dan tanda baca yang tepat!</div></div>'),
(2, 16, '<div><i>Asmaul Husna</i> adalah nama-nama yang baik dan indah yang hanya dimiliki&nbsp; Allah Swt.sebagai bukti keagunganNya. Kemukakan masing-masing 3 contoh perilaku kita dalam kehidupan sehari-hari untuk meneladani&nbsp; <i>Al-Asmaul Husna</i>:</div><div>a.<i>Al-Karim</i></div><div>b.<i>Al-Mukmin</i></div><div>c.<i>Al-Jami’</i></div>'),
(3, 16, 'Perhatikan Q.S. Luqman/ 13: 14 berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/9d9d0385fdd3ee9f3e69e761e1a98786.PNG\" width=\"395\"><br></div><div><div>Setelah memperhatikan ayat tersebut,</div><div>a.Jelaskan isi kandungan ayat tersebut!</div><div>b.Mengapa manusia harus bersyukur sesuai isi kandungan ayat tersebut?</div></div>'),
(4, 16, 'Jelaskan perilaku sikap baik yang bisa diambil dari ayat Q.S. Asy-Syura ayat 38 di bawah ini!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/3c8713a11246f095eb76f9754c21bcd3.PNG\" width=\"489\"><br></div>'),
(5, 16, 'Syamil tengah menolong Arya yang sedang kerasukan jin dengan cara&nbsp; membaca surah Al Fatihah dan surah Al Mukminun ayat 97 dan 98. Dengan penuh&nbsp; keyakinan Syamil berharap agar doanya dikabulkan Allah swt. Akhirnya Syamil berhasil mengeluarkan jin dari tubuh Arya, sehingga kembali normal. Dari peristiwa Syamil&nbsp; menolong Arya di atas, jelaskan hikmah beriman kepada kitab-kitab Allah Swt. apa saja yang bisa di petik!<br>'),
(6, 16, 'Jelaskan dengan singkat bagaimana kehidupan toleransi beragama di Indonesia!<br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay_jawaban`
--

CREATE TABLE `essay_jawaban` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `soal_id` int(11) DEFAULT NULL,
  `jawaban` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `NIP` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `NIP`) VALUES
(1, 'Dosti Purba', '848333'),
(2, 'Hendri Arifin, S.Kom', '123'),
(3, 'Muhammad Fajrin Nur, S.Kom', '45'),
(4, 'Henni Sinaga, S.Pd', '1980'),
(5, 'MGMP SMK USBN', '1234567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'XII RPL'),
(2, 'XII TKJ'),
(3, 'XII MM 1'),
(4, 'XII MM 2'),
(5, 'XII OTKP 1'),
(6, 'XII OTKP 2'),
(7, 'XII OTKP 3'),
(8, 'XII AKL 1'),
(9, 'XII AKL 2'),
(10, 'XII AKL 3'),
(11, 'XII BDP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `KKM` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`id_pelajaran`, `id_guru`, `nama`, `KKM`) VALUES
(1, 5, 'Bahasa Inggris', 75),
(2, 5, 'Bahasa Indonesia', 75),
(3, 5, 'Matematika', 75),
(4, 5, 'Produktif RPL', 75),
(5, 5, 'PPKN', 75),
(11, 5, 'Produktif MM', 75),
(12, 5, 'Produktif TKJ', 75),
(13, 5, 'Produktif AKL', 75),
(14, 5, 'Produktif BDP', 75),
(15, 5, 'Produktif OTKP', 75),
(16, 5, 'Pendidikan Agama Islam', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `record`
--

CREATE TABLE `record` (
  `id_record` int(11) NOT NULL,
  `id_siswa` int(15) NOT NULL,
  `id_pelajaran` int(15) NOT NULL,
  `id_soal` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `nama`, `nis`, `tanggal_lahir`, `username`, `password`) VALUES
(1, 8, 'AHMAD RAHMAN', '', '0000-00-00', 'K0005975855', '9741*'),
(2, 8, 'Akbar Maulana', '', '0000-00-00', 'K0004243645', '9744*'),
(3, 8, 'ANITA RISKA AMALIA', '', '0000-00-00', 'K0010581839', '9765*'),
(4, 8, 'DELPHIE NUR RISKA FEBRIANA', '', '0000-00-00', 'K0015630466', '9793*'),
(5, 8, 'Dina Widyastuti', '', '0000-00-00', 'K9967235742', '9806*'),
(6, 8, 'DODI', '', '0000-00-00', 'K9992255113', '9809*'),
(7, 8, 'DWI ANDINI', '', '0000-00-00', 'K0011363273', '9814*'),
(8, 8, 'ELA NURAYNI', '', '0000-00-00', 'K0027971308', '9817*'),
(9, 8, 'Fanesa Akmalia Putri', '', '0000-00-00', 'K0016294700', '9827*'),
(10, 8, 'FITRI MAHARANI', '', '0000-00-00', 'K0016385693', '9837*'),
(11, 8, 'Fitriyatuz Zahra', '', '0000-00-00', 'K0011622175', '9842*'),
(12, 8, 'HIKMAH', '', '0000-00-00', 'K0028456850', '9863*'),
(13, 8, 'Istikomah', '', '0000-00-00', 'K0021884206', '9872*'),
(14, 8, 'M.Imran Maulana', '', '0000-00-00', 'K0032402920', '9909*'),
(15, 8, 'Mardiana', '', '0000-00-00', 'K0029198961', '9929*'),
(16, 8, 'Mariandini', '', '0000-00-00', 'K0016294696', '9931*'),
(17, 8, 'MARLIANA ADEANTI PRATIWI', '', '0000-00-00', 'K0022958840', '9933*'),
(18, 8, 'Muhammad Fajar', '', '0000-00-00', 'K0012620518', '9958*'),
(19, 8, 'MUHAMMAD PERIANSYAH', '', '0000-00-00', 'K0016377962', '9979*'),
(20, 8, 'MUHAMMAD RAFLY NORSYA', '', '0000-00-00', 'K0002386888', '9984*'),
(21, 8, 'MUHAMMAD YUSUF', '', '0000-00-00', 'K0011985925', '9993*'),
(22, 8, 'NADIA WULANDARI', '', '0000-00-00', 'K0010525053', '10000*'),
(23, 8, 'NAHDA FITRIA', '', '0000-00-00', 'K0023537549', '10002*'),
(24, 8, 'NINDA HANDAYANI', '', '0000-00-00', 'K0012981506', '10008*'),
(25, 8, 'NISWA NIRWALA', '', '0000-00-00', 'K9992527512', '10009*'),
(26, 8, 'Noor Afifah', '', '0000-00-00', 'K0016022277', '10010*'),
(27, 8, 'NUR KAMSIAH RAHMAH', '', '0000-00-00', 'K0016294725', '10027*'),
(28, 8, 'NYINYI', '', '0000-00-00', 'K0006844192', '10035*'),
(29, 8, 'Perdi Apriansyah', '', '0000-00-00', 'K0016294695', '10038*'),
(30, 8, 'Putri Wanda', '', '0000-00-00', 'K0029142721', '10048*'),
(31, 8, 'Rahmatiah', '', '0000-00-00', 'K0017432780', '10051*'),
(32, 8, 'RESTIA VERNANDA', '', '0000-00-00', 'K0023010809', '10061*'),
(33, 8, 'Reyhan Allthaf', '', '0000-00-00', 'K0016377960', '10062*'),
(34, 8, 'ROSY ANDEA KUSWARA', '', '0000-00-00', 'K0028304606', '10087*'),
(35, 8, 'SERLY NOVIA HERLIANI', '', '0000-00-00', 'K0021731812', '10107*'),
(36, 8, 'SRI MAULIDDA', '', '0000-00-00', 'K0028445478', '10123*'),
(37, 9, 'ACHMAD JAYADI', '', '0000-00-00', 'K0010581832', '9731*'),
(38, 9, 'AGUSTINA', '', '0000-00-00', 'K0026312635', '9737*'),
(39, 9, 'ALFINA NANDA FIRDAUSI', '', '0000-00-00', 'K0029434129', '9753*'),
(40, 9, 'Desi Ariyanti Ramli', '', '0000-00-00', 'K0016294712', '9796*'),
(41, 9, 'DEVI TRIYANI', '', '0000-00-00', 'K0019616244', '9799*'),
(42, 9, 'DEVINA INDRIANI', '', '0000-00-00', 'K0018391739', '9800*'),
(43, 9, 'DITI ZANNUBA ARIFAH HAFSHOH', '', '0000-00-00', 'K0017433855', '9808*'),
(44, 9, 'EMELIYA ARIYANI', '', '0000-00-00', 'K0017414648', '9821*'),
(45, 9, 'FITRIANI', '', '0000-00-00', 'K0025713746', '9839*'),
(46, 9, 'IRAWATI SUHRA', '', '0000-00-00', 'K0001728607', '9869*'),
(47, 9, 'Khaerudin', '', '0000-00-00', 'K0027058670', '9882*'),
(48, 9, 'LILISMAWATI', '', '0000-00-00', 'K0002383335', '9888*'),
(49, 9, 'LOLA MAULINA', '', '0000-00-00', 'K0020063267', '9889*'),
(50, 9, 'LOLLYTA SAFITRI', '', '0000-00-00', 'K0022794016', '9890*'),
(51, 9, 'M. RAHMAN SIDIQ', '', '0000-00-00', 'K0016937035', '9901*'),
(52, 9, 'Maria Ulpah', '', '0000-00-00', 'K0023289570', '9930*'),
(53, 9, 'MARLIANA', '', '0000-00-00', 'K0027976608', '9932*'),
(54, 9, 'Muhamad Ramadhani', '', '0000-00-00', 'K0007774218', '9943*'),
(55, 9, 'Muhammad Affandi', '', '0000-00-00', 'K9992322861', '9947*'),
(56, 9, 'MUHAMMAD NUR ASHIL', '', '0000-00-00', 'K0017413551', '9978*'),
(57, 9, 'MUTIARA RAMADHANI', '', '0000-00-00', 'K0018391687', '9998*'),
(58, 9, 'NORHIDAYAH', '', '0000-00-00', 'K0017203545', '10018*'),
(59, 9, 'NUR PADILA', '', '0000-00-00', 'K0003022230', '10029*'),
(60, 9, 'NUR QHANIFAH TURAHMAH', '', '0000-00-00', 'K0017130152', '10030*'),
(61, 9, 'Puput Melati', '', '0000-00-00', 'K0032179755', '10041*'),
(62, 9, 'PUSPA SARI', '', '0000-00-00', 'K0010846177', '10044*'),
(63, 9, 'REINALDI', '', '0000-00-00', 'K0011442854', '10059*'),
(64, 9, 'Risma', '', '0000-00-00', 'K0025713738', '10076*'),
(65, 9, 'RISMAWATI', '', '0000-00-00', 'K0016294706', '10079*'),
(66, 9, 'RUSMIYATI', '', '0000-00-00', 'K0002067822', '10088*'),
(67, 9, 'Santika', '', '0000-00-00', 'K0023076661', '10094*'),
(68, 9, 'SITI AISYAH MUKARRAMAH ZAINI', '', '0000-00-00', 'K0024332614', '10114*'),
(69, 9, 'Suharni Ayu Lestari', '', '0000-00-00', 'K0017619261', '10125*'),
(70, 9, 'SYIFA URRIDA', '', '0000-00-00', 'K0023537569', '10131*'),
(71, 9, 'WAHYU ANANDA PUTRA', '', '0000-00-00', 'K0011186109', '10137*'),
(72, 9, 'Yulia Rahmawati', '', '0000-00-00', 'K0028456868', '10144*'),
(73, 10, 'ALPIYAN EFENDI', '', '0000-00-00', 'K0005499982', '9757*'),
(74, 10, 'ASYIFA HERMAWATI', '', '0000-00-00', 'K0022631520', '9774*'),
(75, 10, 'Aufa Wiranu Chumaiedy', '', '0000-00-00', 'K0015622535', '9776*'),
(76, 10, 'Bulan Permata Sari', '', '0000-00-00', 'K0023537548', '9786*'),
(77, 10, 'Bunga Ratih Yuniana Irawati', '', '0000-00-00', 'K0028000351', '9787*'),
(78, 10, 'Ega Ranisa', '', '0000-00-00', 'K0027976609', '9816*'),
(79, 10, 'FAISAL', '', '0000-00-00', 'K9981621245', '9826*'),
(80, 10, 'FITRIANI SUMARMATA', '', '0000-00-00', 'K0016936528', '9841*'),
(81, 10, 'Gilang Yuda Pratama', '', '0000-00-00', 'K0014664539', '9845*'),
(82, 10, 'HAFIZAH', '', '0000-00-00', 'K0028038548', '9848*'),
(83, 10, 'HARMAWATI', '', '0000-00-00', 'K0016294718', '9853*'),
(84, 10, 'Komang Widyastuti', '', '0000-00-00', 'K0023739827', '9885*'),
(85, 10, 'LILISA YULIANA', '', '0000-00-00', 'K0010525049', '9887*'),
(86, 10, 'Muhammad Jumadi', '', '0000-00-00', 'K0028588766', '9971*'),
(87, 10, 'Maisarah', '', '0000-00-00', 'K0010266784', '9927*'),
(88, 10, 'Milawati', '', '0000-00-00', 'K0010286452', '9938*'),
(89, 10, 'MUHAMMAD AIDIL', '', '0000-00-00', 'K0018550517', '9948*'),
(90, 10, 'MUHAMMAD KHORI SAL SAL BILLA', '', '0000-00-00', 'K0023537555', '9973*'),
(91, 10, 'MUHAMMAD RAFI', '', '0000-00-00', 'K0018831825', '9982*'),
(92, 10, 'Muhammad. Frima Ananda Syahputra', '', '0000-00-00', 'K0027058692', '9961*'),
(93, 10, 'NASYA JAYANTI PUTRI', '', '0000-00-00', 'K0017432965', '10006*'),
(94, 10, 'NOR HALIZA MAYADA', '', '0000-00-00', 'K0018442733', '10015*'),
(95, 10, 'NOVIYANTI ADELIA', '', '0000-00-00', 'K0017130142', '10022*'),
(96, 10, 'Nur Mujalipah', '', '0000-00-00', 'K0014844902', '10028*'),
(97, 10, 'Pahriansyah', '', '0000-00-00', 'K0025725324', '100366*'),
(98, 10, 'REYNALDI PUTRA', '', '0000-00-00', 'K0017130137', '10063*'),
(99, 10, 'Riafida Astika', '', '0000-00-00', 'K0026236282', '10064*'),
(100, 10, 'RIKI AGUSTIAN', '', '0000-00-00', 'K0006821759', '9633*'),
(101, 10, 'RINI SAPUTRI', '', '0000-00-00', 'K0017130138', '10069*'),
(102, 10, 'Siti Jumiati', '', '0000-00-00', 'K0010547680', '10118*'),
(103, 10, 'SITI KHODIJAH', '', '0000-00-00', 'K0027731447', '10120*'),
(104, 10, 'SONIA NUR HALIZAH', '', '0000-00-00', 'K0022174069', '10121*'),
(105, 10, 'Wina Fahriyani', '', '0000-00-00', 'K0017708712', '10141*'),
(106, 10, 'YUSMANIAR', '', '0000-00-00', 'K0010286455', '10145*'),
(107, 10, 'Zatiah', '', '0000-00-00', 'K0002366094', '10150*'),
(108, 11, 'Abd Basir', '', '0000-00-00', 'K0011461121', '9727*'),
(109, 11, 'Abdul Manan', '', '0000-00-00', 'K0001752807', '10518*'),
(110, 11, 'Asbullah', '', '0000-00-00', 'K9992705280', '9773*'),
(111, 11, 'Awaludin', '', '0000-00-00', 'K0009385743', '9780*'),
(112, 11, 'Bahrul Ilmi', '', '0000-00-00', 'K0018898727', '9784*'),
(113, 11, 'BIMA CAHYA PERMANA', '', '0000-00-00', 'K0010344831', '9375*'),
(114, 11, 'DALMIA', '', '0000-00-00', 'K9993729682', '9788*'),
(115, 11, 'DARMA YULIANA', '', '0000-00-00', 'K0027924587', '9790*'),
(116, 11, 'Desty Rusliana Arianty', '', '0000-00-00', 'K0011442865', '9797*'),
(117, 11, 'Dody Misrul', '', '0000-00-00', 'K0017773764', '9810*'),
(118, 11, 'Erwin Saputra', '', '0000-00-00', 'K0003788085', '9823*'),
(119, 11, 'Fadli', '', '0000-00-00', 'K0027702615', '9825*'),
(120, 11, 'Febriansyah', '', '0000-00-00', 'K0018898738', '9831*'),
(121, 11, 'Ferry Rahmadinata', '', '0000-00-00', 'K0028639835', '9834*'),
(122, 11, 'HENDRA', '', '0000-00-00', 'K0002366087', '9856*'),
(123, 11, 'Jumadi', '', '0000-00-00', 'K0005877013', '9877*'),
(124, 11, 'JUMRIADI', '', '0000-00-00', 'K9993604602', '9880*'),
(125, 11, 'M. Alwi', '', '0000-00-00', 'K0001728611', '9898*'),
(126, 11, 'M. Rasid Sidik', '', '0000-00-00', 'K0018490635', '9915*'),
(127, 11, 'MELIDA RAHMADAYANTI', '', '0000-00-00', 'K0018050610', '9934*'),
(128, 11, 'MISLAWATI', '', '0000-00-00', 'K0022830807', '9939*'),
(129, 11, 'MUHAMMAD NASHIH', '', '0000-00-00', 'K0018550511', '9976*'),
(130, 11, 'MUHAMMAD RIZKI', '', '0000-00-00', 'K9996547309', '9556*'),
(131, 11, 'Muhammad Rizky Saputra', '', '0000-00-00', 'K0015630501', '9987*'),
(132, 11, 'MUHAMMAD YUSUF', '', '0000-00-00', 'K0016696083', '9994*'),
(133, 11, 'MUTIARA HIKMAH', '', '0000-00-00', 'K0027593972', '9997*'),
(134, 11, 'NANDA HERLYN EPENDY', '', '0000-00-00', 'K0003984574', '10004*'),
(135, 11, 'NUR ERSA ROSANTY', '', '0000-00-00', 'K0003447512', '10024*'),
(136, 11, 'NUR HALIMAH', '', '0000-00-00', 'K0019642191', '10025*'),
(137, 11, 'Rani Nur Padillah', '', '0000-00-00', 'K0027976614', '10053*'),
(138, 11, 'RINTO', '', '0000-00-00', 'K0022830802', '10070*'),
(139, 11, 'Saiful', '', '0000-00-00', 'K0015228034', '10091*'),
(140, 11, 'Saparuddin', '', '0000-00-00', 'K9998035502', '10095*'),
(141, 11, 'WAHYUDDIN', '', '0000-00-00', 'K0010464763', '10138*'),
(142, 3, 'ABDUL LATIEF', '', '0000-00-00', 'K9976975153', '9728*'),
(143, 3, 'ANDI MARTAJA SIBARANI', '', '0000-00-00', 'K9999895468', '9759*'),
(144, 3, 'Aqifah Hernita', '', '0000-00-00', 'K0028456871', '9770*'),
(145, 3, 'Hafizh Abdillah', '', '0000-00-00', 'K0028499523', '9849*'),
(146, 3, 'Hamzarudin', '', '0000-00-00', 'K0020063260', '9852*'),
(147, 3, 'LUTHFIATUN HIKMAH', '', '0000-00-00', 'K0022730131', '9892*'),
(148, 3, 'M TAUFIK RIDHA', '', '0000-00-00', 'K0022730116', '9896*'),
(149, 3, 'M. Sariffullah', '', '0000-00-00', 'K0029399574', '9920*'),
(150, 3, 'MELI DAMAYANTI', '', '0000-00-00', 'K0017616214', '9935*'),
(151, 3, 'Muhammad Ikhsan Fachrozi', '', '0000-00-00', 'K0023376908', '9964*'),
(152, 3, 'MUHAMMAD MAULANA', '', '0000-00-00', 'K0015286371', '9974*'),
(153, 3, 'MUHAMMAD YANUAR MOHENDRA', '', '0000-00-00', 'K0028038541', '9992*'),
(154, 3, 'Muhammad. Rolly Fadlani', '', '0000-00-00', 'K0017647686', '9989*'),
(155, 3, 'NAHDA', '', '0000-00-00', 'K0020063262', '10001*'),
(156, 3, 'NOR KHAPIPAH', '', '0000-00-00', 'K0010480159', '10016*'),
(157, 3, 'Novita', '', '0000-00-00', 'K0007007336', '10020*'),
(158, 3, 'RANI WULAN SARI', '', '0000-00-00', 'K0018777926', '10054*'),
(159, 3, 'RISKA NOOR SELAN', '', '0000-00-00', 'K0022219410', '10073`*'),
(160, 3, 'Rismatul Jannah', '', '0000-00-00', 'K0020029615', '10078*'),
(161, 3, 'Rosna', '', '0000-00-00', 'K0017367247', '10086*'),
(162, 3, 'SELAMAT ZAMAN ARSYIDE', '', '0000-00-00', 'K0027732598', '10102*'),
(163, 3, 'SILPIA LESTARI', '', '0000-00-00', 'K0010846195', '10109*'),
(164, 3, 'SISKA MARLINDA', '', '0000-00-00', 'K0016530286', '10112*'),
(165, 3, 'Siti Aida Nurmaya Fitri', '', '0000-00-00', 'K0023076668', '10113*'),
(166, 3, 'Syahid Ainul Hamid', '', '0000-00-00', 'K0025398955', '10100*'),
(167, 4, 'Achmad Rivani', '', '0000-00-00', 'K0022532935', '9732*'),
(168, 4, 'Adam Sandopal', '', '0000-00-00', 'K0023831886', '9733*'),
(169, 4, 'Ahmad Patoni', '', '0000-00-00', 'K0016567288', '9740*'),
(170, 4, 'Akhmad Reza Fah', '', '0000-00-00', 'K0025566837', '9748*'),
(171, 4, 'AMRULLAH GUSTAFIRIN', '', '0000-00-00', 'K0025399098', '9758*'),
(172, 4, 'Annisa Budiman', '', '0000-00-00', 'K0018588838', '9767*'),
(173, 4, 'DEWI NUR QOLBIAH', '', '0000-00-00', 'K11087925', '9801*'),
(174, 4, 'Diana Fitriah', '', '0000-00-00', 'K0001437123', '9803*'),
(175, 4, 'EDI RAHMAN', '', '0000-00-00', 'K0026312630', '9815*'),
(176, 4, 'Erwin', '', '0000-00-00', 'K0010725106', '9822*'),
(177, 4, 'FIRMAN NANDA', '', '0000-00-00', 'K0023376904', '9835*'),
(178, 4, 'Fitriana', '', '0000-00-00', 'K0009694516', '9838*'),
(179, 4, 'Harsela', '', '0000-00-00', 'K0026141350', '9854*'),
(180, 4, 'HENDRA GUSTARI', '', '0000-00-00', 'K0014687005', '9857*'),
(181, 4, 'Lulu Hanifah', '', '0000-00-00', 'K0016735829', '9891*'),
(182, 4, 'M. HANDI RIDUANNOR', '', '0000-00-00', 'K0035442361', '9908*'),
(183, 4, 'M. Khafi Badali', '', '0000-00-00', 'K0005132562', '9911*'),
(184, 4, 'M. Rizky Aqila Sandy', '', '0000-00-00', 'K0023832848', '9902*'),
(185, 4, 'Mahdyna Anggraeni', '', '0000-00-00', 'K0011087901', '9926*'),
(186, 4, 'MAISYARAH', '', '0000-00-00', 'K0017162920', '9928*'),
(187, 4, 'MAYA ANDILLA ESALITA', '', '0000-00-00', 'K0024100899', '10520*'),
(188, 4, 'Muhammad Irfanie', '', '0000-00-00', 'K0016459670', '9967*'),
(189, 4, 'Muhammad Rafly Nahdian', '', '0000-00-00', 'K0021436603', '9983*'),
(190, 4, 'Muhammad Rahim', '', '0000-00-00', 'K0020942946', '9985*'),
(191, 4, 'PEBRINA INTAN HARYANNOR', '', '0000-00-00', 'K0018777896', '10037*'),
(192, 4, 'Pirman', '', '0000-00-00', 'K9981943781', '10039*'),
(193, 4, 'Puteri Noorhidayah', '', '0000-00-00', 'K0011187183', '10045*'),
(194, 4, 'RISDA RIYANTI', '', '0000-00-00', 'K0018898740', '10072*'),
(195, 4, 'Rizky Amelia', '', '0000-00-00', 'K0012700223', '10083*'),
(196, 4, 'SULKA AWANA', '', '0000-00-00', 'K0021731814', '10127*'),
(197, 4, 'USNUL HATIMAH', '', '0000-00-00', 'K0018898748', '10135*'),
(198, 5, ' WINA PURWATI', '', '0000-00-00', 'K0020063261', '10142*'),
(199, 5, 'ADELLA HAIRINA', '', '0000-00-00', 'K0026106540', '9735*'),
(200, 5, 'ANNISA HIJRAHNI AL GIFFARI', '', '0000-00-00', 'K0020042609', '9768*'),
(201, 5, 'AULIA AGUSTINA', '', '0000-00-00', 'K0016974936', '9777*'),
(202, 5, 'Azizah Puspitasari Saputri', '', '0000-00-00', 'K0010266850', '9781*'),
(203, 5, 'DELLA FADILA', '', '0000-00-00', 'K0016459673', '9792*'),
(204, 5, 'Desy Lilianti', '', '0000-00-00', 'K0016377982', '9798*'),
(205, 5, 'Dini Lestari', '', '0000-00-00', 'K0020286436', '9807*'),
(206, 5, 'Dwi Lutfia Agustin', '', '0000-00-00', 'K0003386733', '9812*'),
(207, 5, 'FAUZAN FADILLAH', '', '0000-00-00', 'K0016377963', '9829*'),
(208, 5, 'FITRIANI', '', '0000-00-00', 'K0027058669', '9840*'),
(209, 5, 'GILANG SUFI RAMADHAN', '', '0000-00-00', 'K0017398139', '9844*'),
(210, 5, 'Gita Ayu Purwanti', '', '0000-00-00', 'K0017896019', '9846*'),
(211, 5, 'ISTAMUN FARIDA', '', '0000-00-00', 'K0015630498', '9871*'),
(212, 5, 'JENNI EKA ERLIANA', '', '0000-00-00', 'K0015274188', '9875*'),
(213, 5, 'KHALIMATUS CHADIYAH', '', '0000-00-00', 'K0010021230', '9883*'),
(214, 5, 'Lia Mawaddah', '', '0000-00-00', 'K0019428993', '9886*'),
(215, 5, 'MUHAMMAD ABDUL RAJAT AWALI', '', '0000-00-00', 'K0023336442', '9945*'),
(216, 5, 'MUHAMMAD FAHMI', '', '0000-00-00', 'K0017430455', '9957*'),
(217, 5, 'Naimatul Aufa', '', '0000-00-00', 'K0026918185', '10003*'),
(218, 5, 'NOOR AINAH', '', '0000-00-00', 'K0010266805', '10011*'),
(219, 5, 'NOOR KAMILAH', '', '0000-00-00', 'K0010169204', '10012*'),
(220, 5, 'NURHAYATI', '', '0000-00-00', 'K0011461130', '10032*'),
(221, 5, 'Puput Sapitri', '', '0000-00-00', 'K0027704431', '10042*'),
(222, 5, 'RAHMAT HIDAYAT', '', '0000-00-00', 'K0024845049', '10050*'),
(223, 5, 'Rima Maulida', '', '0000-00-00', 'K0026728433', '10067*'),
(224, 5, 'RISKYA DESTY RAMADHINI', '', '0000-00-00', 'K0016459681', '10075*'),
(225, 5, 'RUSNA AMELDA', '', '0000-00-00', 'K9993767982', '10089*'),
(226, 5, 'SAMSIR', '', '0000-00-00', 'K0023311051', '10093*'),
(227, 5, 'SARIYANA', '', '0000-00-00', 'K0011802330', '10097*'),
(228, 5, 'SEPTHIE KURNIA', '', '0000-00-00', 'K0010525059', '10103*'),
(229, 5, 'SITI KHADIJAH', '', '0000-00-00', 'K0019411072', '10119*'),
(230, 5, 'SRI HERLYANI', '', '0000-00-00', 'K0027173071', '10122*'),
(231, 5, 'TIKA WULANDARI', '', '0000-00-00', 'K0010540946', '10133*'),
(232, 5, 'VITA AMALIA', '', '0000-00-00', 'K0024282318', '10136*'),
(233, 5, 'Winda Aprilla Fernanda', '', '0000-00-00', 'K0026910330', '10143*'),
(234, 6, 'ALDIAN NOR', '', '0000-00-00', 'K0018777927', '9749*'),
(235, 6, 'Aldo Dwi Prayoga', '', '0000-00-00', 'K0024415911', '9751*'),
(236, 6, 'Arfaesal', '', '0000-00-00', 'K0010807057', '9771*'),
(237, 6, 'Dande Mulianto', '', '0000-00-00', 'K0025618023', '9789*'),
(238, 6, 'FEMI RAHMAWATI', '', '0000-00-00', 'K0016294713', '9832*'),
(239, 6, 'HADAD WIQOLDI PUTRA', '', '0000-00-00', 'K0017877182', '9847*'),
(240, 6, 'Hamzah Haz Pratama ', '', '0000-00-00', 'K0010266823', '9851*'),
(241, 6, 'HENDRI FEBRIAN', '', '0000-00-00', 'K0017398132', '9859*'),
(242, 6, 'Herliyana Putri', '', '0000-00-00', 'K0018898750', '9862*'),
(243, 6, 'HIN DARAWATI', '', '0000-00-00', 'K0016602789', '9864*'),
(244, 6, 'IHKSAN ADHA', '', '0000-00-00', 'K0020386158', '9866*'),
(245, 6, 'J.B. Luvy Sari Asih', '', '0000-00-00', 'K0010737658', '9874*'),
(246, 6, 'Jariah', '', '0000-00-00', 'K0010286454', '9873*'),
(247, 6, 'MAHDA AULIA RAHMA', '', '0000-00-00', 'K0016459660', '9925*'),
(248, 6, 'MERISKA MULYANA', '', '0000-00-00', 'K0010581848', '9936*'),
(249, 6, 'MISNAWATY', '', '0000-00-00', 'K0001728609', '9940*'),
(250, 6, 'Muhammad Iqbal', '', '0000-00-00', 'K0021115270', '9966*'),
(251, 6, 'NELLY RUSSALINA', '', '0000-00-00', 'K0012147923', '10007*'),
(252, 6, 'NOR AZIZAH', '', '0000-00-00', 'K0011703613', '10014*'),
(253, 6, 'NUR AMINULLAH', '', '0000-00-00', 'K0018831832', '10023*'),
(254, 6, 'NURHALIMAH', '', '0000-00-00', 'K0015464539', '10031*'),
(255, 6, 'PUTRI RISA YULINDA', '', '0000-00-00', 'K0039133595', '100447*'),
(256, 6, 'REDHA SITA DEWI', '', '0000-00-00', 'K0017398136', '10057*'),
(257, 6, 'Ridah Hartati', '', '0000-00-00', 'K9995242007', '10065*'),
(258, 6, 'Risky Amelia', '', '0000-00-00', 'K0029137434', '10074*'),
(259, 6, 'RIYANA ARLINDA', '', '0000-00-00', 'K0023819251', '10080*'),
(260, 6, 'SEFTYA', '', '0000-00-00', 'K0010084880', '10101*'),
(261, 6, 'Serin Salsabila', '', '0000-00-00', 'K0018831850', '10104*'),
(262, 6, 'SHANNIA DANIDHA CITRA', '', '0000-00-00', 'K0028456856', '10105*'),
(263, 6, 'Sheny Rizky Wulandari', '', '0000-00-00', 'K0022689578', '10106*'),
(264, 6, 'Siti Fatimah', '', '0000-00-00', 'K0028456870', '10117*'),
(265, 6, 'SUPIAN', '', '0000-00-00', 'K0005953587', '10128*'),
(266, 7, 'ALFRINA ANGGRAINI', '', '0000-00-00', 'K0024618409', '9754*'),
(267, 7, 'Alivio Ryandana', '', '0000-00-00', 'K0022949023', '9756*'),
(268, 7, 'ANDRI ADI PUTRA', '', '0000-00-00', 'K0005674664', '9761*'),
(269, 7, 'ANNISA', '', '0000-00-00', 'K0029495045', '9766*'),
(270, 7, 'DESI ANDRIYANI', '', '0000-00-00', 'K0010807050', '9795*'),
(271, 7, 'Duval Sanjaya', '', '0000-00-00', 'K0010725112', '9811*'),
(272, 7, 'Emelda Chandra Dewi', '', '0000-00-00', 'K0024046950', '9820*'),
(273, 7, 'ESIS SAFITRI', '', '0000-00-00', 'K0010169208', '9824*'),
(274, 7, 'FEBRIANA MIFTAHUL JANNAH', '', '0000-00-00', 'K0017397568', '9830*'),
(275, 7, 'Herlinawati', '', '0000-00-00', 'K0023722685', '9861*'),
(276, 7, 'Irvan Maulana Saputra', '', '0000-00-00', 'K0003188560', '9870*'),
(277, 7, 'JOHAN', '', '0000-00-00', 'K0019672651', '9876*'),
(278, 7, 'JUMIATI', '', '0000-00-00', 'K0020063273', '9878*'),
(279, 7, 'JUNIANSYAH', '', '0000-00-00', 'K0001906947', '9881*'),
(280, 7, 'KHUSNUL KHOTIMAH', '', '0000-00-00', 'K0003806641', '9884*'),
(281, 7, 'Mahamudin', '', '0000-00-00', 'K0018827627', '9924*'),
(282, 7, 'MIFTA RIDHAYANA', '', '0000-00-00', 'K0027058688', '9937*'),
(283, 7, 'MOCH. FIRDAUS RAMADHANI', '', '0000-00-00', 'K0015630504', '9941*'),
(284, 7, 'MUHAMAD RICKY WAHYU SETIAWAN', '', '0000-00-00', 'K0021731817', '9944*'),
(285, 7, 'MUHAMMAD AMINUR RAHMAN', '', '0000-00-00', 'K0017430428', '9952*'),
(286, 7, 'MUHAMMAD BAHIRUDDIN. T', '', '0000-00-00', 'K9996899071', '9726*'),
(287, 7, 'Muhammad Fitri', '', '0000-00-00', 'K9992722400', '9960*'),
(288, 7, 'MUHAMMAD JAMALUDDIN', '', '0000-00-00', 'K0002386896', '9969*'),
(289, 7, 'NOR OKTAVIANI', '', '0000-00-00', 'K0016377972', '10017*'),
(290, 7, 'Norlianti', '', '0000-00-00', 'K0010467564', '10019*'),
(291, 7, 'NURUL HIKMAH', '', '0000-00-00', 'K0020063275', '10033*'),
(292, 7, 'RAHMA DANIYANTI', '', '0000-00-00', 'K0011461139', '10049*'),
(293, 7, 'RAISYA AQMAL ALBANA\'MAH', '', '0000-00-00', 'K0023831903', '10052*'),
(294, 7, 'RIMA WIJAYANTI', '', '0000-00-00', 'K0017433868', '10068*'),
(295, 7, 'SARMILA', '', '0000-00-00', 'K0018831838', '10098*'),
(296, 7, 'SAUDAH', '', '0000-00-00', 'K0016530282', '10099*'),
(297, 7, 'SUCI SUSILAWATI', '', '0000-00-00', 'K0010547671', '10124*'),
(298, 7, 'SYAIFA YUNIA', '', '0000-00-00', 'K0026419513', '10129*'),
(299, 7, 'Tasya Sayyidah Khairunnisa', '', '0000-00-00', 'K0010664188', '10132*'),
(300, 7, 'Tria Putri Maulidya', '', '0000-00-00', 'K0010266797', '10134*'),
(301, 7, 'ZAINAL ILMI', '', '0000-00-00', 'K0022794013', '10148*'),
(302, 7, 'ZAUHAR LATHIFAH', '', '0000-00-00', 'K0010807054', '10151*'),
(303, 1, 'ADAM YORDAN', '', '0000-00-00', 'K0011087917', '9734*'),
(304, 1, 'Agus Salim', '', '0000-00-00', 'K0014166302', '9736*'),
(305, 1, 'AHMAD SAWALUDIN', '', '0000-00-00', 'K0015047673', '9742*'),
(306, 1, 'AKHMAD MISWANDI', '', '0000-00-00', 'K0021731813', '9747*'),
(307, 1, 'ANDRE PERDANA', '', '0000-00-00', 'K0007205573', '9760*'),
(308, 1, 'Aulia Hayu Widyaningrum', '', '0000-00-00', 'K0024304954', '9778*'),
(309, 1, 'DIAN SETIAWAN', '', '0000-00-00', 'K0012425097', '9802*'),
(310, 1, 'DWI PRASETYO JATMIKO', '', '0000-00-00', 'K0010846176', '9813*'),
(311, 1, 'Elisya Nurmaya Santy', '', '0000-00-00', 'K0021731821', '9818*'),
(312, 1, 'FIRNANDA HANIF TAUQIT HAROZI', '', '0000-00-00', 'K0010581850', '9836*'),
(313, 1, 'HENI APRIANI', '', '0000-00-00', 'K0025399080', '9860*'),
(314, 1, 'M. FAHRIAL RIFQI', '', '0000-00-00', 'K0027396256', '9906*'),
(315, 1, 'M. Rasyid Ridho', '', '0000-00-00', 'K0026769898', '9916*'),
(316, 1, 'M. SAID', '', '0000-00-00', 'K0023819253', '9903*'),
(317, 1, 'M. SYARIF HIDAYATULLAH', '', '0000-00-00', 'K0027396286', '9904*'),
(318, 1, 'M.ARIF', '', '0000-00-00', 'K0029857218', '9905*'),
(319, 1, 'M.RAMADHAN DESWANDANA', '', '0000-00-00', 'K0010581887', '9913*'),
(320, 1, 'M.SYAHIDAN AKBAR', '', '0000-00-00', 'K0017432951', '9921*'),
(321, 1, 'MUH. SARWANI AFDAN', '', '0000-00-00', 'K9995202194', '9513*'),
(322, 1, 'MUHAMMAD ADAM ALFAN', '', '0000-00-00', 'K0013811576', '9946*'),
(323, 1, 'MUHAMMAD ARSANI', '', '0000-00-00', 'K0022741629', '9953*'),
(324, 1, 'MUHAMMAD BINTANG FADILLAH HAKIM', '', '0000-00-00', 'K0019318883', '9954*'),
(325, 1, 'MUHAMMAD DIMYATI', '', '0000-00-00', 'K0017575056', '9956*'),
(326, 1, 'MUHAMMAD JEPRI', '', '0000-00-00', 'K0023819246', '9970*'),
(327, 1, 'Muhammad Maulana', '', '0000-00-00', 'K0023010807', '9975*'),
(328, 1, 'MUNAWARAH', '', '0000-00-00', 'K0016459684', '9995*'),
(329, 1, 'Muslih Zainul Mustofa', '', '0000-00-00', 'K0026236287', '9996*'),
(330, 1, 'Nasrullah', '', '0000-00-00', 'K0004887553', '10005*'),
(331, 1, 'RYANDI AKBAR', '', '0000-00-00', 'K0023537553', '10090*'),
(332, 1, 'Siriadi Ningsih', '', '0000-00-00', 'K0016069046', '10111*'),
(333, 1, 'YUYUN HAMIDATUN RAHAYU', '', '0000-00-00', 'K0025280955', '10146*'),
(334, 2, 'Ahmad Firmansyah', '', '0000-00-00', 'K0023819249', '9739*'),
(335, 2, 'AKHMAD FIRDAUS', '', '0000-00-00', 'K0023010805', '9745*'),
(336, 2, 'ALFIAN NUR ILMI', '', '0000-00-00', 'K0017433857', '9752*'),
(337, 2, 'Alimudin', '', '0000-00-00', 'K0010725166', '9755*'),
(338, 2, 'ANTUNG NUR SADDAM', '', '0000-00-00', 'K0003607196', '9769*'),
(339, 2, 'Aulia Suryanullah', '', '0000-00-00', 'K0016377966', '9779*'),
(340, 2, 'Bayu Susanto', '', '0000-00-00', 'K0020115222', '9785*'),
(341, 2, 'DIAS VIRGIAWAN', '', '0000-00-00', 'K0023010808', '9804*'),
(342, 2, 'DIKI HIMAWAN', '', '0000-00-00', 'K0022230192', '9805*'),
(343, 2, 'FERIAN', '', '0000-00-00', 'K0004789583', '9833*'),
(344, 2, 'Hairani Rahman', '', '0000-00-00', 'K0026910333', '9850*'),
(345, 2, 'HENDRA HIDAYAT', '', '0000-00-00', 'K0014830942', '9858*'),
(346, 2, 'HUZEYLIMA\'RUF HIDAYATULLAH', '', '0000-00-00', 'K0017433874', '9865*'),
(347, 2, 'IPIN', '', '0000-00-00', 'K0001875542', '1090*'),
(348, 2, 'Jumiati', '', '0000-00-00', 'K0012906413', '9879*'),
(349, 2, 'M. ALDI FAHRIAN', '', '0000-00-00', 'K0015261619', '9897*'),
(350, 2, 'M. Randi Al Rizky', '', '0000-00-00', 'K0026398794', '9894*'),
(351, 2, 'M. REZKY DARMAWAN', '', '0000-00-00', 'K0010846198', '9917*'),
(352, 2, 'M. Sarifullah Maulandi', '', '0000-00-00', 'K0018899057', '9895*'),
(353, 2, 'M.RAMADHAN MIFTAHUL IMAN', '', '0000-00-00', 'K0011187193', '9914*'),
(354, 2, 'MUHAMMAD HARIADI', '', '0000-00-00', 'K0017877200', '9962*'),
(355, 2, 'MUHAMMAD IKHSAN MAWARDI', '', '0000-00-00', 'K0010525069', '9965*'),
(356, 2, 'MUHAMMAD KHARISMA ABDI', '', '0000-00-00', 'K0010266854', '9972*'),
(357, 2, 'MUHAMMAD PUTERA NUR AULIA RAHMAN', '', '0000-00-00', 'K0014410999', '9980*'),
(358, 2, 'Muhammad Rody Anggara', '', '0000-00-00', 'K0010525067', '9988*'),
(359, 2, 'Putri Angreani', '', '0000-00-00', 'K0017430457', '10046*'),
(360, 2, 'RAUDATUL JAN\'NAH', '', '0000-00-00', 'K0010525029', '10055*'),
(361, 2, 'RIFKY FAUZAN RUSADI', '', '0000-00-00', 'K0015630500', '10066*'),
(362, 2, 'RIO GISMAN', '', '0000-00-00', 'K0002920055', '9243*'),
(363, 2, 'Risma Zurliana', '', '0000-00-00', 'K0025453331', '10077*'),
(364, 2, 'Romy Ependi Gunawan', '', '0000-00-00', 'K0010725122', '10085*'),
(365, 2, 'WAHYUDDIN', '', '0000-00-00', 'K0022641847', '10139*'),
(366, 1, 'HENDRI ARIFIN', '2212', '1991-08-02', 'hendri', 'hendri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `soal_id` int(11) NOT NULL,
  `soal_pelajaran` int(11) NOT NULL,
  `soal_deskripsi` text NOT NULL,
  `soal_jwb1` text NOT NULL,
  `soal_jwb2` text NOT NULL,
  `soal_jwb3` text NOT NULL,
  `soal_jwb4` text NOT NULL,
  `soal_jwb5` text NOT NULL,
  `soal_jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(1, 4, 'Yang bukan merupakan media instalasi system operasi computer adalah …<br>', 'Flashdisk<br>', 'Video Compact Disc<br>', 'Digital Versatile Disc<br>', 'Network ( LAN )<br>', 'Online instalation<br>', 'Online instalation<br>'),
(2, 4, 'Untuk masuk pada system BIOS pada laptop, ketika booting dilakukan dengan menekan tombol …<br>', 'F1<br>', 'F2<br>', 'F3<br>', 'F4<br>', 'F5<br>', 'F2<br>'),
(3, 4, 'Informasi yang tidak bisa kita dapatkan pada system BIOS adalah …<br>', 'Kapasitas battery<br>', 'Jenis processore<br>', 'Size RAM<br>', 'Size hard disk<br>', 'System booting<br>', 'Kapasitas battery<br>'),
(4, 4, 'Yang bukan termasuk system operasi komputer adalah …<br>', 'Deepin<br>', 'Windows 7<br>', 'Windows 8<br>', 'Ubuntu<br>', 'Android<br>', 'Android<br>'),
(5, 4, 'Untuk menyimpan hasil setting di system BIOS dengan cara menekan tombol …<br>', 'F6<br>', 'F7<br>', 'F8<br>', 'F9<br>', 'F10<br>', 'F10<br>'),
(6, 4, 'Kumpulan tipe data yang tidak benar adalah …<br>', 'Char, int, float<br>', 'Varchar, double, longint<br>', 'Text, string, date<br>', 'Char, long, int<br>', 'Num, int, float<br>', 'Char, long, int<br>'),
(7, 4, 'Nilai yang tidak dapat diubah selama proses program berlangsung adalah pengertian dari ...<br>', 'Tipe data<br>', 'Konstanta<br>', 'Operator<br>', 'Algoritma<br>', 'Variable<br>', 'Konstanta<br>'),
(8, 4, 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program adalah pengertian dari …<br>', 'Tipe data<br>', 'Konstanta<br>', 'Operator<br>', 'Algoritma<br>', 'Variable<br>', 'Variable<br>'),
(9, 4, 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai adalah pengertian dari …<br>', 'Tipe data<br>', 'Konstanta<br>', 'Operator<br>', 'Algoritma<br>', 'Variable<br>', 'Operator<br>'),
(10, 4, 'Suatu kumpulan perintah untuk menyelesaikan masalah adalah pengertian dari …<br>', 'Tipe data<br>', 'Konstanta<br>', 'Operator<br>', 'Algoritma<br>', 'Variable<br>', 'Algoritma<br>'),
(11, 4, 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer adalah pengertian dari …<br>', 'Tipe data<br>', 'Konstanta<br>', 'Operator<br>', 'Algoritma<br>', 'Variable<br>', 'Tipe data<br>'),
(12, 4, 'Pengertian dari tipe data adalah …<br>', 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer<br>', 'Nilai yang tidak dapat diubah selama proses program berlangsung<br>', 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai<br>', 'Suatu kumpulan perintah untuk menyelesaikan masalah<br>', 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program<br>', 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer<br>'),
(13, 4, 'Pengertian konstanta adalah …<br>', 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer<br>', 'Nilai yang tidak dapat diubah selama proses program berlangsung<br>', 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai<br>', 'Suatu kumpulan perintah untuk menyelesaikan masalah<br>', 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program<br>', 'Nilai yang tidak dapat diubah selama proses program berlangsung<br>'),
(14, 4, 'Pengertian operator adalah …<br>', 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer<br>', 'Nilai yang tidak dapat diubah selama proses program berlangsung<br>', 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai<br>', 'Suatu kumpulan perintah untuk menyelesaikan masalah<br>', 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program<br>', 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai<br>'),
(15, 4, 'Pengertian algoritma adalah …<br>', 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer<br>', 'Nilai yang tidak dapat diubah selama proses program berlangsung<br>', 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai<br>', 'Suatu kumpulan perintah untuk menyelesaikan masalah<br>', 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program<br>', 'Suatu kumpulan perintah untuk menyelesaikan masalah<br>'),
(16, 4, 'Pengertian variable adalah …<br>', 'Bagian program yang paling penting karena mempengaruhi setiap instruksi yang akan dilaksanakan oleh computer<br>', 'Nilai yang tidak dapat diubah selama proses program berlangsung<br>', 'Symbol yang digunakan dalam program untuk melakukan suatu operasi nilai<br>', 'Suatu kumpulan perintah untuk menyelesaikan masalah<br>', 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program<br>', 'Suatu pengenal ( identifier ) yang digunakan untuk mewakili suatu nilai tertentu di dalam proses program<br>'),
(17, 4, '			Bentuk symbol flowchart dari decision adalah …<br>		', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/6ac045101f74d0622f8c4f00b688a448.jpg\" width=\"60\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/75ae99075040d07aa91e034a49942655.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/ba1ef9d4148f903ffb5075085ea6a415.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c8bc0b1d3177d7b0b808dfc20a09a083.jpg\" width=\"94\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/a26a525fc10fd96e49b2edd8fd8a8ff1.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/6ac045101f74d0622f8c4f00b688a448.jpg\" width=\"60\"><br>'),
(18, 4, '			Bentuk symbol flowchart untuk alternate processore adalah …<br>		', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/45575a19bf6ebd0bed4ca50dc701bf65.jpg\" width=\"60\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/f3e67993341c7d4a405020a5ef01a72a.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/4b096d57bdbf058487fdd477ac05026c.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/a82e1d9a05ec58dfb214e4753cfcffbc.jpg\" width=\"94\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/3914c3ca95695e0f6cc79f87d2c1d798.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/f3e67993341c7d4a405020a5ef01a72a.jpg\" width=\"92\"><br>'),
(19, 4, '			Bentuk symbol flowchat untuk processore adalah …<br>		', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c8affff539fa06fad595890d0453b8ac.jpg\" width=\"60\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/953bc9cd13ccb99f2acbe563fc06e7e3.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/24a9b707de3dcecd71d746c22a9a3a67.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c5ca9f570c47a64aabb111dd6998be0e.jpg\" width=\"94\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/884ead3b2729cae770a490eb30bfeae2.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/24a9b707de3dcecd71d746c22a9a3a67.jpg\" width=\"92\"><br>'),
(20, 4, '			Bentuk symbol flowchart untuk input / output data adalah …<br>		', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/005dbfc5f939143e765722382695aab1.jpg\" width=\"60\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/a428ecd92ff6bc4840c76b0b4ebc9010.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/2403b0e0dac0e9ef8c57a5b78f204a9c.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/6a2b2101e4af71a7632685aeb4522d31.jpg\" width=\"94\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/0a6f13bec4723be9d17d891bb5e1a6da.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/6a2b2101e4af71a7632685aeb4522d31.jpg\" width=\"94\"><br>'),
(21, 4, '			Bentuk symbol flowchart untuk start / end terminator adalah …<br>		', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/2f9880d39d40f80132a6b50d0c9689a1.jpg\" width=\"60\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c797df5f8db43d92e1cc421d74b9fc4c.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/0e08a14c84086cc4945dc335e7764026.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/ff8af3d9eb421982e10730ce2876cc7d.jpg\" width=\"94\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c200502caf57dbb70e81671287325c57.jpg\" width=\"92\"><br>', '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c200502caf57dbb70e81671287325c57.jpg\" width=\"92\"><br>'),
(22, 4, '						Nama dari symbol flowchart ini&nbsp;<img src=\"http://localhost/AppUBK/admin/./assets/unggah/7eb8ce02aa65ef9f9cb2f74eecaaf5de.jpg\" width=\"60\">&nbsp;adalah …<br>				', 'Decision<br>', 'Alternate processore<br>', 'Processore<br>', 'Input / output data<br>', 'Start / end terminator<br>', 'Decision<br>'),
(23, 4, '			Nama dari symbol flowchart ini&nbsp;<img src=\"http://localhost/AppUBK/admin/./assets/unggah/e7fc27df44122aed921395ad978a587d.jpg\" width=\"92\">&nbsp;adalah …<br>		', 'Decision<br>', 'Alternate processore<br>', 'Processore<br>', 'Input / output data<br>', 'Start / end terminator<br>', 'Alternate processore<br>'),
(24, 4, '			Nama dari symbol flowchart ini&nbsp;<img src=\"http://localhost/AppUBK/admin/./assets/unggah/8269f5fe8c26323509c99605f42ebffb.jpg\" width=\"92\">&nbsp;adalah …<br>		', 'Decision<br>', 'Alternate processore<br>', 'Processore<br>', 'Input / output data<br>', 'Start / end terminator<br>', 'Processore<br>'),
(25, 4, '			Nama dari symbol flowchart ini&nbsp;<img src=\"http://localhost/AppUBK/admin/./assets/unggah/7f90e877310ea55f0a00358cdbe8d326.jpg\" width=\"94\">&nbsp;adalah …<br>		', 'Decision<br>', 'Alternate processore<br>', 'Processore<br>', 'Input / output data<br>', 'Start / end terminator<br>', 'Input / output data<br>'),
(26, 4, '			Nama dari symbol flowchart ini&nbsp;<img src=\"http://localhost/AppUBK/admin/./assets/unggah/1193a5f82f5eca8a6827c52fea05b1aa.jpg\" width=\"92\">&nbsp;adalah …<br>		', 'Decision<br>', 'Alternate processore<br>', 'Processore<br>', 'Input / output data<br>', 'Start / end termintor<br>', 'Start / end termintor<br>'),
(27, 4, 'Yang tidak termasuk operator aritmatika adalah …<br>', '*', '\\', '%', '+', '-', '\\'),
(28, 4, 'Yang bukan termasuk operator dalam bahasa pemrograman adalah …<br>', 'Operator aritmatika<br>', 'Operator perbandingan<br>', 'Operator fungsi<br>', 'Operator logika<br>', 'Operator penentu format<br>', 'Operator fungsi<br>'),
(29, 4, 'Baris kode untuk membuat database baru adalah …<br>', 'new database;<br>', 'create database;<br>', 'create database barang;<br>', 'add database barang;<br>', 'add new database;<br>', 'create database barang;<br>'),
(30, 4, 'Baris code untuk menghapus database yang pernah di buat adalah …<br>', 'del database;<br>', 'delete database;<br>', 'delete database barang;<br>', 'drop database barang;<br>', 'drop database;<br>', 'drop database barang;<br>'),
(31, 4, 'Kode HTML untuk menampilkan gambar adalah …<br>', '&lt;img src:”header.jpg”&gt;<br>', '&lt;img src=”header.jpg”&gt;<br>', '&lt;img scr=”header.jpg”&gt;<br>', '&lt;img scr:”header.jpg”&gt;<br>', '&lt;image src=’header.jpg’&gt;<br>', '&lt;img src=”header.jpg”&gt;<br>'),
(32, 4, 'Fungsi <b>a href</b> pada kode html adalah …<br>', 'Mengirim data ke halaman lain<br>', 'Membuat tombol delete<br>', 'Menyimpan data ke database<br>', 'Menghubungkan suatu halaman dengan halaman lain<br>', 'Menampilkan gambar<br>', 'Menghubungkan suatu halaman dengan halaman lain<br>'),
(33, 4, 'Dari baris kode berikut yang salah adalah …<br>', '&lt;link rel=\"stylesheet\" href=\"style.css\"&gt;<br>', '&lt;script type=\"text/javascript\" src=\"script.js\"&gt;&lt;/script&gt;<br>', '&lt;div class=\"style\"&gt;<br>', '&lt;div id=\"data\"&gt;<br>', '&lt;img class=\"style\" alt=\"First slide\"&gt;<br>', '&lt;img class=\"style\" alt=\"First slide\"&gt;<br>'),
(34, 4, '			Yang bukan merupakan aplikasi database adalah …<br>		', 'Interbase<br>', 'Firebird<br>', 'Mysql<br>', 'Excel<br>', 'Access', 'Excel<br>'),
(35, 4, 'Browser adalah …<br>', 'Aplikasi yang berguna untuk mengerjakan perhitungan<br>', 'Aplikasi yang berguna untuk membuka informasi berhubungan dengan web<br>', 'Aplikasi yang di gunakan oleh ahli akuntansi<br>', 'Computer yang di gunakan untuk main game<br>', 'Mobile aplikasi di system operasi windows<br>', 'Aplikasi yang berguna untuk membuka informasi berhubungan dengan web<br>'),
(36, 4, 'Yang termasuk web server adalah …<br>', 'Linux<br>', 'Xampp<br>', 'Wam<br>', 'Mysql<br>', 'Sql server<br>', 'Xampp<br>'),
(37, 4, 'Untuk akses web server local di computer kita dengan mengetik alamat default di url …<br>', '127.0.0.1<br>', 'Aplikasi/inventori<br>', '200.200.200.0.1<br>', 'PhpMyAdmin<br>', 'Windows/server<br>', '127.0.0.1<br>'),
(38, 4, 'Yang bukan termasuk system oop adalah …<br>', 'Inheritance<br>', 'Polymorfisme<br>', 'Function<br>', 'Encapsulation<br>', 'Procedural<br>', 'Procedural<br>'),
(39, 4, 'Php merupakan bahasa pemrograman untuk bagian …<br>', 'Desain<br>', 'Back end<br>', 'Front end<br>', 'Database<br>', 'system<br>', 'Back end<br>'),
(40, 4, 'Untuk membuat aplikasi web yang di perlukan kecuali …<br>', 'Bahasa pemrograman html<br>', 'Bahasa pemrograman php<br>', 'Bahasa syntak command prompt<br>', 'Bahasa pemrograman javascript<br>', 'Bahasa pemrograman sql<br>', 'Bahasa syntak command prompt<br>'),
(41, 13, 'Diketahui PT ABCD memiliki Harga Pokok Sediaan awal&nbsp; Rp. 60.000.000,00 dan Harga Pokok pembelian Rp. 200.000.000,00. Penjualan menurut harga jual berjumlah Rp, 280.000.000,00. laba kotor atas harga jual adalah 30 % . Nilai Sediaan akhir yang di laporan Neracaadalah ....<br>', 'Rp. 61.000.000,00<br>', 'Rp. 62.000.000,00<br>', 'Rp. 63.000.000,00<br>', 'Rp. 64.000.000,00<br>', 'Rp. 65.000.000,00<br>', 'Rp. 63.000.000,00<br>'),
(42, 13, 'Berikut ini adalah daftar biaya – biaya yang dikeluarkan untuk menghasilkan 1000 unit produk pada perusahaan yang berproduksi secara pesanan sebagai berikut :<br><div><div>-. Pemakaian bahan baku<span style=\"white-space:pre\">	</span>Rp.<span style=\"white-space:pre\">	</span>12.300.000,00</div><div>-. Upah Langsung<span style=\"white-space:pre\">	</span>Rp.<span style=\"white-space:pre\">	</span>2.400.000,00</div><div>-. Upah tak langsung<span style=\"white-space:pre\">	</span>Rp.<span style=\"white-space:pre\">	</span>1.200.000,00</div><div>-. BOP yang dibebankan<span style=\"white-space:pre\">	</span>Rp.<span style=\"white-space:pre\">	</span>3.100.000,00</div><div>-. BOP Sesungguhnya<span style=\"white-space:pre\">	</span>Rp.<span style=\"white-space:pre\">	</span>3.000.000,00</div><div>Jumlah&nbsp; biaya produksi per unit produkpesananadalah sebesar ....</div></div>', 'Rp. 15.900,00<br>', 'Rp. 18.900,00<br>', 'Rp. 19.000,00<br>', 'Rp. 20.800,00<br>', 'Rp. 22.900,00<br>', 'Rp. 19.000,00<br>'),
(43, 13, '<div>Data laba komersial PT. GRAMA PERSADA&nbsp; per 31 Desember 2017 sebesar Rp. 491.550.000,00. Data koreksi fiscal PT. GRAMA PERSADA sebagai berikut :</div><div>_. Pendapatan jasa giro ( PPh Final ) senilai Rp. 255.000,00</div><div>_. Penyusutan aktiva tetap lebih besar dari aturan pajak sebesar Rp. 3.400.000,00</div><div>Maka besarnya laba PT. GRAMA PERSADA setelah rekonsiliasi fiscal adalah ....</div>', 'Rp. 494.695.000,00<br>', 'Rp. 488.405.000,00<br>', 'Rp. 488.150.000,00<br>', 'Rp. 487.895.000,00<br>', 'Rp. 465.205.000,00<br>', 'Rp. 494.695.000,00<br>'),
(44, 13, '<div>Pada tanggal 9 Desember 2017 saldo buku besar CV. GETAR KENCANA pada akun Piutang Dagang sebesar&nbsp; Rp. 343.200.000,00 dan Cadangan Kerugian Piutang sebesar Rp. 13.728.000,00.&nbsp;</div><div>Perusahaan menggunakan metode tidak langsung terhadap Piutang Dagang yang tidak tertagih . Pada tanggal 31 Desember 2017 terdapat saldo akun Piutang Dagang sebesar Rp. 279.400.000,00 dan perusahaan menetap cadangan kerugian piutang dagang&nbsp; sebesar 4 % dari saldo piutang. Jumlah pengaruh saldo akun Cadangan Kerugian Piutang adalah ……..</div>', 'Saldo cadangan kerugian piutang bertambah sebelah debet sebrsar Rp. 2.252.000,00<br>', 'Saldo cadangan kerugian piutang berkurang sebelah debet sebesar Rp. 2.552.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit&nbsp; sebesar Rp. 2.252.000,00<br>', 'Saldo cadangan kerugian piutang berkurang sebelah kredit&nbsp; sebesar Rp. 2.252.000,00<br>', 'Saldo cadangan kerugian piutang tidak berubah karena perhitungan cadangan kerugian dibawah nilai cadangan yang sudah ada<br>', 'Saldo cadangan kerugian piutang berkurang sebelah debet sebesar Rp. 2.552.000,00<br>'),
(45, 13, '						Pada tanggal 20 Agustus 2018 diterima pembayaran dari toko Devita sebesar Rp. 2.000.000,00 atas penjualan barang dagangan tanggal 7 Agustus 2018 dengan syarat pembeyaran 3 /15, n / 60.<br><div>Pencatatan dari transaksi tersebut pada tanggal 20 Agustus tersebut adalah ….<br></div>				', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4f274d91a9dc441f78dc3d7a6b89bb2e.JPG\" width=\"594\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/c85f3e3278a9bbf7737cbf8e1a55820e.JPG\" width=\"595\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/346a2cf7a41b3b4abf62389c20c66e5e.JPG\" width=\"593\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/c853633e4448dfb3c0244dc644235a88.JPG\" width=\"591\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/bb28aa95fd589a621b838a9f9496ca46.JPG\" width=\"592\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4f274d91a9dc441f78dc3d7a6b89bb2e.JPG\" width=\"594\"><br>'),
(46, 13, 'D’Nissa Butik pada tanggal 1 Agustus 2017membeli sebuah mesin jahit dengan harga pokok Rp. 130.000.000,00, usia penggunaan mesin tersebut ditaksir selama 8 tahun dengan nilai residu Rp. 10. 000.000,00. Dengan menggunakan metode garis lurus maka nilai buku mesin jahit pada 31 Desember 2017 sebesar ....<br>', 'Rp. 115.000.000,00<br>', 'Rp. 120.000.000,00<br>', 'Rp. 122.250.000,00<br>', 'Rp. 123.250.000,00<br>', 'Rp. 123.750.000,00<br>', 'Rp. 123.750.000,00<br>'),
(47, 13, 'Dalam keadaan inflasi metode perhitungan persediaan apakah yang akan menghasilkan nilai laba kotor terendah ....<br>', 'LIFO<br>', 'FIFO<br>', 'Rata – rata sederhana<br>', 'Rata – rata&nbsp; Tertimbang<br>', 'Rata – rata bergerak<br>', 'LIFO<br>'),
(48, 13, 'Kegiatan kliring yang digunakan untuk melakukan transfer dari bank lain sebagai penarik kepada bank penerima, merupakan pengertian dari ....<br>', 'Kliring Debit Keluar<br>', 'Kliring Debit Masuk<br>', 'Kliring Kredit Masuk<br>', 'Kliring KreditKeluar<br>', 'Kliring Saldo<br>', 'Kliring Debit Keluar<br>'),
(49, 13, 'Lalu lintas pembayaran dengan giro adalah suatu proses pembayaran yang dilakukan dengan cara ....<br>', 'Penarikan uang<br>', 'Pengiriman Uang<br>', 'Penyetoran uang<br>', 'Pentransferan uang<br>', 'Pemindahbukuan &amp; pentransferan<br>', 'Pemindahbukuan &amp; pentransferan<br>'),
(50, 13, 'Pada tanggal 1 Desember 2017 saldo buku besar PT Kencana pada akun Piutang Dagang sebesar Rp. 136.400.000,00 dan cadangan kerugian piutang sebesar Rp. 2.728.000,00.Perusahaan menggunakan metode tidak langsung terhadap piutang dagang yang tidak tertagih. Pada tanggal 31 Desember 2017 terdapat saldo akun piutang dagang sebesar Rp. 179.300.000,00 dan perusahaan menetapkan cadangan kerugian piutang dagang sebesar 2 % dari saldo piutang. Jumlah pengaruh saldo akun cadangan kerugian piutang adalah ....<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit sebesar Rp 858.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah debet&nbsp; sebesar Rp. 858.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah debet sebesar Rp. 585.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit sebesar Rp. 585.000,00<br>', 'Saldo cadangan kerugian piutang berkurang sebelah kredit sebesar Rp. 858.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit sebesar Rp 858.000,00<br>'),
(51, 13, 'Syifa Apotik pada tanggal 1 Agustus 2017 membeli sebuah peralatan toko dengan harga perolehan Rp. 90.000.000,00. Usia penggunaan peralatan toko tersebut ditaksir selama 8 tahun, dengan nilai residu sebesar Rp. 10.000.000,00. Dengan menggunakan metode garis lurus beban penyusutan peralatan toko tersebut pada tahun 2018 ....<br>', 'Rp. 10.000.000,00<br>', 'Rp. 10.250.000,00<br>', 'Rp. 10.750.000,00<br>', 'Rp. 11.000.000,00<br>', 'Rp. 11.250.000,00<br>', 'Rp. 10.000.000,00<br>'),
(52, 13, 'Pada tanggal 30 November 2017 saldo Kas UD “ INDRAGIRI “ menurut catatan perusahaan Rp. 22.135.645,menurut Bank Rp. 34.222.970. Perbedaan tersebut disebutkan oleh : piutang hasil inkaso dari bank Rp. 5.500.000,00, cek yang sedang beredar Rp. 2.310.000,00 dan Rp. 3.960.000,00, Pendapatan jasa giro bank Rp. 512.325,00 dan bank membebankan biaya administrasi sebesar Rp. 195.000,00. Berdasarkan keterangan tersebut, maka saldo kas setelah rekonsiliasi adalah sebesar ....<br>', 'Rp. 15.928.320,00<br>', 'Rp. 16.952.970,00<br>', 'Rp. 26.928.320,00<br>', 'Rp. 27.952.970,00<br>', 'Rp. 35.872.970,00<br>', 'Rp. 27.952.970,00<br>'),
(53, 13, 'Pada tanggal 31 Oktober 2017 saldo kas PT. INDRAJAYA&nbsp; menurut catatan perusahaan Rp. 186.000.000,00, menurut laporan bank Rp. 224.850.000,00, perbedaan tersebut disebabkan oleh : piutang hasil inkaso dari bank Rp. 22.000.000,00, cek yang sedang beredar Rp. 16.500.000,00, pendapatan jasa giro Rp. 550.000,00 dan bank membebankan biaya administrasi sebesar Rp. 200.000,00. Berdasarkan keterangan tersebut, maka saldo kas setelah rekonsiliasi adalah sebesar ....<br>', 'Rp. 202.850.000,00<br>', 'Rp. 208.000.000,00<br>', 'Rp. 208.350.000,00<br>', 'Rp. 208.550.000,00<br>', 'Rp. 241.350.000,00<br>', 'Rp. 208.350.000,00<br>'),
(54, 13, 'Dalam keadaan inflasi metode perhitungan persediaan apakah yang akan menghasilkan nilai harga pokok penjualan terendah ....<br>', 'LIFO<br>', 'FIFO<br>', 'Rata – rata sederhana<br>', 'Rata – rata&nbsp; Tertimbang<br>', 'Rata – rata bergerak<br>', 'FIFO<br>'),
(55, 13, '<div>Berikut data persediaan barang dagangan PT. Putra Pratama pada bulan Januari 2017 sebagai berikut :</div><div>Januari <span style=\"white-space:pre\">	</span> 02<span style=\"white-space:pre\">	</span>Persediaan<span style=\"white-space:pre\">	</span>600 unit @ Rp. 2.000,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>05<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>800 unit @ Rp. 2.200,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>10<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>700 unit @ Rp. 2.100,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>18<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>500 unit @ Rp. 2.100,00</div><div>Setelah dilakukan perhitungan fisik, jumlah persediaan akhir sebanyak 1.100 unit, maka Harga Pokok Penjualan pada bulan Januari 2017 berdasarkan sistem fisik metode LIFO adalah ....</div>', 'Rp. 2.300.000,00<br>', 'Rp. 2.310.000,00<br>', 'Rp. 3.170.000,00<br>', 'Rp. 3.180.000,00<br>', 'Rp. 5.480.000,00<br>', 'Rp. 3.180.000,00<br>'),
(56, 13, 'Yang dimaksud Made By Order dalam lalu lintas pembayaran dengan giro yaitu ....<br>', 'Penjual, pembeli, bank perantara<br>', 'Penjual, Bank perantara, pengskepor<br>', 'Pembeli, bank perantara, pengimpor<br>', 'Bank perantara, agen, pengimpor<br>', 'Penjual, pembeli, bank perantara<br>', 'Penjual, pembeli, bank perantara<br>'),
(57, 13, '<div>Berikut data persediaan barang dagangan PT. Putra Pratama pada bulan Januari 2017 sebagai berikut :</div><div>Januari <span style=\"white-space:pre\">	</span>02<span style=\"white-space:pre\">	</span>Persediaan<span style=\"white-space:pre\">	</span>600 unit @ Rp. 2.000,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>05<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>800 unit @ Rp. 2.200,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>10<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>700 unit @ Rp. 2.100,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>18<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>500 unit @ Rp. 2.100,00</div><div>Setelah dilakukan perhitungan fisik, jumlah persediaan akhir sebanyak 1.100 unit, maka Harga Pokok Penjualan pada bulan Januari 2017 berdasarkan sistem fisik metode FIFO adalah ....</div>', 'Rp. 2.300.000,00<br>', 'Rp. 2.310.000,00<br>', 'Rp. 3.170.000,00<br>', 'Rp. 3.180.000,00<br>', 'Rp. 5.480.000,00<br>', 'Rp. 3.170.000,00<br>'),
(58, 13, 'PT AKMALINDO menerima piutang dagang dari transaksi penjualan kredit seorang debitor sebesar Rp. 1.000.000,00, salah dicatat oleh bagian akuntansi ke dalam jurnal penerimaan kas sebesar Rp. 10.000.000,00. Jurnal umum mempengaruhi akun ....<br>', '<div>Menambah akun penjualan Rp. 10.000.000,00</div>', 'Menambah akun piutang sebesar Rp. 9.000.000,00<br>', 'Mengurangi akun piutang dagang Rp. 9.000.000,00<br>', 'Menambah akun kas sebesar Rp. 1.000.000,00<br>', 'Mengurangi akun kas sebesar Rp. 1.000.000,00<br>', 'Menambah akun piutang sebesar Rp. 9.000.000,00<br>'),
(59, 13, 'Pada program Accounting ada cara untuk membuat kartu pelanggan dan mengentri saldo awal piutang. Langkah untuk membuat kartu pelanggan adalah ....<br>', 'Set Up – Balance – Account Opening Balance<br>', 'Set Up _ Balance – Customer Balance<br>', 'Set Up – Balance – Supplier Balance<br>', 'Card File – Card List – Supplier – New<br>', 'Card File – Card List – Customer – New<br>', 'Set Up _ Balance – Customer Balance<br>'),
(60, 13, 'Penggunaan rumus pada aplikasi pengolah angka yang mengunci kolom dan baris secara sekaligus adalah ....<br>', 'Rumus Logika<br>', 'Rumus HLOOKUP<br>', 'Rumus VLOOKUP<br>', 'Rumus semi absolut<br>', 'Rumus absolut mutlak<br>', 'Rumus absolut mutlak<br>'),
(61, 13, '<div>Berikut data persediaan barang dagangan PT. Putra Pratama pada bulan Januari 2017 sebagai berikut :</div><div>Januari <span style=\"white-space:pre\">	</span> 02<span style=\"white-space:pre\">	</span>Persediaan<span style=\"white-space:pre\">	</span>600 unit @ Rp. 2.000,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>05<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>800 unit @ Rp. 2.200,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>10<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>700 unit @ Rp. 2.100,00</div><div>Januari&nbsp; <span style=\"white-space:pre\">	</span>18<span style=\"white-space:pre\">	</span>Pembelian<span style=\"white-space:pre\">	</span>500 unit @ Rp. 2.100,00</div><div>Setelah dilakukan perhitungan fisik, jumlah persediaan akhir sebanyak 1.100 unit, maka Harga Pokok Penjualan pada bulan Januari 2017 berdasarkan sistem fisik metode rata – rata tertimbang&nbsp; adalah ........</div>', 'Rp. 2.310.000,00<br>', 'Rp. 3.161.538,00<br>', 'Rp. 3.170.000,00<br>', 'Rp. 3.180.000,00<br>', '<div>Rp. 5.480.000,00</div><div><br></div>', 'Rp. 3.161.538,00<br>'),
(62, 13, '<div>Data laba komersial PT. Grama Persada per 31 Desember 2017 sebesar Rp. 491.550.000,00, Data koreksi fiskal PT. Grama Persada sebagai berikut :</div><div>* Biaya Family Gathering karyawan senilai&nbsp; Rp. 25.500.000,00</div><div>* Penyusutan aktiva tetap lebih kecil dari aturan pajak sebesar Rp. 340.000,00</div><div>Maka besarnya laba PT. Grama Persada setelah rekonsiliasi fiskal adalah ....</div>', 'Rp. 466.210.000,00<br>', 'Rp. 466.390.000,00<br>', 'Rp. 516.200.000,00<br>', 'Rp.516.550.000,00<br>', 'Rp. 516.890.000,00<br>', 'Rp. 466.390.000,00<br>'),
(63, 13, 'Fungsi rumus yang digunakan untuk membaca data pada tabel mendatar adalah ....<br>', 'Rumus absolut mutlak<br>', 'Rumus semi absolut<br>', '<div>Rumus VLOOKUP</div>', 'Rumus HLOOKUP<br>', 'Rumus logika<br>', 'Rumus HLOOKUP<br>'),
(64, 13, 'Diketahui PT “ ABCD “&nbsp; memiliki Harga Pokok Sediaan awal&nbsp; Rp. 60.000.000,00 dan HP pembelian Rp. 200.000.000,00. Penjualan menurut harga jual berjumlah Rp, 280.000.000,00. laba kotor atas harga jual adalah 30 % . Nilai Harga Pokok Penjualanyang di Laporan Rugi Labaadalah ....<br>', 'Rp. 193.000.000,00<br>', 'Rp. 196.000.000,00<br>', 'Rp. 202.000.000,00<br>', 'Rp. 205.000.000,00<br>', 'Rp. 208.000.000,00<br>', 'Rp. 196.000.000,00<br>'),
(65, 13, '<div>Data laba komersial PT. “GRAMA PERSADA “per 31 Desember 2017 sebesar Rp. 491.550.000,00. Data koreksi fiskal PT. GRAMA PERSADA sebagai berikut :</div><div>_. Pendapatan jasa giro ( PPh Final ) senilai Rp. 255.000,00</div><div>_. Beban kerugian merupakan penghapusan cadangan piutang tak tertagih senilai Rp. 34.000.000,00</div><div>Maka besarnya laba PT. GRAMA PERSADA setelah rekonsiliasi fiscal adalah ……</div>', 'Rp. 525.805.000,00<br>', 'Rp. 525.295.000,00<br>', 'Rp. 457.805.000,00<br>', 'Rp. 457.550.000,00<br>', 'Rp. 457.295.000,00<br>', 'Rp. 525.295.000,00<br>'),
(66, 13, 'Pihak – pihak yang terkait dalam lalu lintas pembayaran dengan cek adalah ....<br>', 'Penerbit , pelaksana<br>', 'Penerima, pengelola<br>', 'Penerbit, pembawa<br>', 'Pelaksana, pencatatan<br>', 'Pengeluaran, penerimaan<br>', 'Penerbit, pembawa<br>'),
(67, 13, '<div>Perhatikan jenis – jenis transaksi berikut ini&nbsp; :</div><div>1. Pembelian barang dagangan secara kredit</div><div>2. Pembelian barang dagangan secara tunai</div><div>3. Retur pembelian atas pembelian kredit</div><div>4. Pelunasan hutang dagang</div><div>Dari data di atas yang menggunakan jurnal pengeluaran kas adalah ……</div>', '1 dan 2<br>', '1 dan 3<br>', '2 dan 3', '2 dan 4<br>', '3 dan 4<br>', '2 dan 4<br>'),
(68, 13, 'Antara bank yang berbeda maupun sama melakukan penagihan warkat paling efisienmenggunakan jasa bank ....<br>', 'Safe Deposit Box<br>', 'Transfer Cheek<br>', 'Transfer<br>', 'Kliring<br>', 'Inkaso<br>', 'Inkaso<br>'),
(69, 13, 'Tuan Ridwan&nbsp; setiap berangkat ke tempat kerjanya, Ia menggunakan kendaraan pribadi dan selalu melewati jalan tol. Tarif tol yang dibayarkan oleh tuan Ridwan saat menggunakan fasilitas jalan tol tersebut termasuk pungutan jenis ....<br>', 'Pajak<br>', 'Retribusi<br>', 'Cukai<br>', 'Bea masuk<br>', 'Sumbangan<br>', 'Retribusi<br>'),
(70, 13, 'Sapri bekerja pada perusahaan swasta sebagai pegawai tetap, jenis penghasilan yang diterima Sapri berupa penggajian atau imbalan berkenaan dengan pekerjaan atau jasa yang diterima atau yang diperoleh dari pemberi kerja adalah berupa …..<br>', 'Gaji dan tunjangan<br>', 'Hadiah dan undian<br>', 'Laba usaha dan keuntungan kurs<br>', 'Deviden dan bunga<br>', 'Royalti dan sewa<br>', 'Gaji dan tunjangan<br>'),
(71, 13, '			Pada tanggal 20 Agustus 2018 diterima pembayaran dari toko Devita sebesar Rp. 2.000.000,00 atas penjualan barang dagangan, tanggal 15 Agustus 2018 dengan syarat pembeyaran 5/10, n/60.Pencatatan dari transaksi tersebut pada tanggal 20 Agustus tersebut adalah ….<br>		', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/f35b2bf12841ff269a63d0e3544601b7.JPG\" width=\"593\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/07d7fb7a8c33cbd2e42fe31ba14c709f.JPG\" width=\"590\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/13d625139a29578a5f7056031c874684.JPG\" width=\"588\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d4dcb225693beecee54991e80edf7d71.JPG\" width=\"595\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/29b6d985822ac4fe22010a5ce0838dff.JPG\" width=\"590\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/13d625139a29578a5f7056031c874684.JPG\" width=\"588\"><br>'),
(72, 13, 'Pada tanggal 1 Maret 2017 dibayar sewa untuk ruangan toko sebesar Rp. 18.000.000,00 untuk jangka waktu 1 tahun, jurnal penyesuaian per 31 Desember 2017 apabila pencatatan menggunakan pendekatan laba / rugi adalah ....<br>', '(D) Beban Sewa Rp. 18.000.000,00, (K) Kas Rp. 18.000.000,00<br>', '(D) Beban Sewa Rp. 15.000.000,00, (K) Sewa Dibayar Dimuka Rp. 15.000.000,00<br>', '(D) Sewa Dibayar Dimuka Rp. 15.000.000,00, (K) Beban Sewa Rp. 15.000.000,00<br>', '(D) Beban Sewa Rp. 3.000.000,00, (K) Sewa Dibayar Dimuka Rp. 3.000.000,00<br>', '(D) Sewa Dibayar Dimuka Rp. 3.000.000,00, Beban Sewa Rp. 3.000.000,00<br>', '(D) Sewa Dibayar Dimuka Rp. 3.000.000,00, Beban Sewa Rp. 3.000.000,00<br>'),
(73, 13, '<div>Berikut adalah data yang dimiliki oleh PT. AAA yang bergerak pada usaha dagang retail ;</div><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d7e56eb0ad02c9ae7dda1ea5def85bd2.PNG\" width=\"476\"><br></div><div>Maka nilai persediaan akhir&nbsp; yang dilaporkan pada neraca berdasarkan metode Harga Pokok Eceran adalah sebesar ……..</div>', 'Rp. 58.000.000,00<br>', 'Rp. 59.000.000,00<br>', 'Rp. 60.000.000,00<br>', 'Rp. 61.000.000,00<br>', 'Rp. 62.000.000,00<br>', 'Rp. 60.000.000,00<br>'),
(74, 13, 'Nyonya isti menjadi anggota koperasi Tut Wuri Handayani, setiap tahunnya ia memperoleh penghasilan dari koperasi tersebut atas penyertaannya. Penghasilan tersebut berupa ....<br>', 'Sewa Hasil Usaha<br>', 'Sisa Hasil Usaha<br>', 'Deviden Hasil Usaha<br>', 'Bunga Hasil Usaha<br>', 'Jasa Hasil Usaha<br>', 'Sisa Hasil Usaha<br>'),
(75, 13, 'Tuan Richard sebagai wajib pajak Luar negeri dan tuan Ringgo sebagai wajib pajak dalam negeri, sama – sama memiliki rumah di salah satu perumahan elit di Jakarta. Keduanya wajib membayar Pajak Bumi Bangunan atas rumah yang mereka miliki meski berbeda status pajaknya. Penggolongan pajak tersebut berdasarkan ....<br>', 'Pajak langsung<br>', 'Pajak tidak langsung<br>', 'Pakaj subyektif<br>', 'Pajak obyektif<br>', 'Pajak daerah<br>', 'Pajak obyektif<br>'),
(76, 13, 'Pungutan yang dikenakan terhadap pemakaian barang – barang tertentu yang baiasanya ditandai dengan pita bertarif seperti minuman keras dan rokok merupakan jenis pungutan ....<br>', 'Pajak<br>', 'Retribusi<br>', 'Cukai<br>', 'Bea masuk<br>', 'Sumbangan<br>', 'Cukai<br>'),
(77, 13, 'PT. Manggis memproduksi minuman sehat buah melalui 2 departemen produksi. Data produksi untuk bulan Oktober 2018 sebagai berikut :<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/901ea60efeed8dccb77f90428ddc732f.PNG\" width=\"475\"><br></div><div>Maka unit ekuivalen Biaya Bahan Baku departemen 1 dengan metode rata – rata terimbang adalah ....<br></div>', '155.000 unit<br>', '150.000 unit<br>', '135.000 unit<br>', '130.000 unit<br>', '25.000 unit<br>', '155.000 unit<br>'),
(78, 13, 'Setiap orang yang memiliki kendaraan bermotor, setiap tahunnya harus membayar pungutan yang sifatnya dipaksakan karena sudah diatur oleh undang – undang dan jika tidak dibayakan akan dikenakan denda, pungutan tersebut adalah jenis pungutan …..<br>', 'Pajak<br>', 'Retribusi<br>', 'Cukai<br>', 'Bea masuk<br>', 'Sumbangan<br>', 'Pajak<br>'),
(79, 13, 'Setiap tahun tuan Prasetyo membayar Pajak Bumi Bangunan ( PBB ) setelah ia menerima surat tagihan PBB dari&nbsp; Pak RT tempat ia tinggal, penggolongan pajak tersebut berdasarkan ....<br>', 'Pajak langsung<br>', 'Pajak tidak langsung<br>', 'Pakaj subyektif<br>', 'Pajak obyektif<br>', 'Pajak daerah<br>', 'Pajak daerah<br>'),
(80, 13, 'Indira berprofesi sebagai dokter, ia memiliki harta berupa kendaraan, tanah dan juga bangunan lebih dari satu. Indira dapat memanfaatkan hartanya tersebut untuk memperoleh penghasilan berupa ....<br>', 'Sewa<br>', 'Deviden<br>', 'Gaji<br>', 'Bunga<br>', 'Royalty<br>', 'Sewa<br>'),
(81, 13, '<div>Perhatikan tabel berikut ini :</div><div>Data Pegawai PT. KALIJAYA MANDIRITAHUN 2018 ( dalam ribuan )</div><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/89b80c9ef2f37487c2c88a0d172d7b34.PNG\" width=\"507\"><br></div><div>Penghasilan Tidak Kena Pajak&nbsp; ( PTKP ) pegawai Baharuddin adalah ……<br></div>', 'Rp. 54.000.000,00<br>', 'Rp. 58.500.000,00<br>', 'Rp. 63.000.000,00<br>', 'Rp. 67.500.000,00<br>', 'Rp. 72.000.000,00<br>', 'Rp. 72.000.000,00<br>'),
(82, 13, 'Nyonya Ika adalah karyawan dari PT. Sinar Unggul dengan status menikah dan mempunyai 3 anak. Suami nyonya Ika adalah tuan Parto merupakan PNS di Dinas Kesehatan di kabupaten Tangerang. Ika menerima gaji Rp. 13.000.000,00 per bulan. Disamping itu perusahaan membayarkan iuran Jaminan Hari Tua (JHT) karyawannya setiap bulan sebesar 3,70 % dari gaji. Sedangkan Ika membayar iuran JHT setiap bulan 2 % dari gaji. Premi Jaminan Kecelakaan Kerja ( JKK)dan Jaminan Kematian ( JK ) dibayar oleh pemberi kerja dengan jumlah masing – masing sebesar 1,00 % dan 0,30 % dari gaji. Penghasilan Ny. Ika tidak digabung dengan penghasilan suaminya, maka penghasilan bruto ny. Ika sebulannya adalah ....<br>', 'Rp. 12.409.000,00<br>', 'Rp. 13.650.000,00<br>', 'Rp. 54.000.000,00<br>', 'Rp.&nbsp; &nbsp;94.908.000,00<br>', 'Rp.&nbsp; 148.908.000,00<br>', 'Rp. 13.650.000,00<br>'),
(83, 13, '<div>Perhatikan pernyataan berikut ini :</div><div>1. Nilai sediaan Akhir dicatat terlalu tinggi</div><div>2. Penyusutan mesin dicatat terlalu kecil</div><div>3. Penyusutan gedung permanen 2 % dari harga perolehan</div><div>4. Prive untuk pemilik perusahaan</div><div>Yang termasuk dalam koreksi fiskal positif adalah ....</div>', '1 dan 2<br>', '1 dan 3<br>', '1 dan 4<br>', '2 dan 3<br>', '2 dan 4<br>', '1 dan 4<br>'),
(84, 13, '			Jurnal untuk mencatat pemakaian bahan baku senilai Rp. 1.200.000,00 pada perusahaan manufaktur adalah ....<br>		', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4dba6fc8483ecad4f3443e033ce4b21b.JPG\" width=\"426\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4d1a7c73bbfbbe5959dfc053fd03909b.JPG\" width=\"434\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/6765b1a875bb430793ca44c1304b91a5.JPG\" width=\"431\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/fe5c113d82e73ef6000150c46e82a9c6.JPG\" width=\"426\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/91047710f69c8cf6cfe17cf9fa46c7f9.JPG\" width=\"428\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/6765b1a875bb430793ca44c1304b91a5.JPG\" width=\"431\"><br>'),
(85, 13, '			<div>Perhatikan Laporan Biaya Produksi berikut ini :</div><div style=\"text-align: center;\">PT GLOBAL</div><div style=\"text-align: center;\">LAPORAN BIAYA PRODUKSI</div><div style=\"text-align: center;\">BULAN NOVEMBER 2018</div><div style=\"text-align: center;\"><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/9dde7707162123daebc162f36e31349f.PNG\" width=\"475\"></div><div>Pembebanan biaya per unit untuk Biaya Tenaga Kerja adalah ……<br></div>		', 'Rp. 4.500,00<br>', 'Rp. 4.891,00<br>', 'Rp. 5.625,00<br>', 'Rp. 7.500,00<br>', 'Rp. 8.375,00<br>', 'Rp. 4.891,00<br>'),
(86, 13, 'Pada 2 Januari 2017 PT. KEMON mempunyai kendaraan dengan harga perolehan Rp. 200.000.000,00 dan kendaraan tersebut telah disusutka Rp. 64.000.000,00. Kendaraan lama tersebut akan ditukar dengan kendaraan baru yang harga perolehannya Rp. 300.000.000,00. Atas pertukaran tersebut PT. KEMON harus mengeluarkan uang tunai sebesar Rp. 170.000.000,00.Maka jurnal yang harus dibuat oleh PT. KEMON adalah ……..<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/43edbafad96aef3c01aa7d2e7af628e7.PNG\" width=\"470\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a9d30417c49decc01df120f2cd1fa6af.PNG\" width=\"469\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/8497d93a233e0e4639b8da31c7dcd314.PNG\" width=\"469\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/04277f0043dd75391f67b6ebd923eb2a.PNG\" width=\"468\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d9011fba50aa32fcb3637939eded96b9.PNG\" width=\"469\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/43edbafad96aef3c01aa7d2e7af628e7.PNG\" width=\"470\"><br>'),
(87, 13, 'Karakteristik yang membedakan perusahaan manufaktur mobil dengan dealer mobil adalah....<br>', 'Perusahaan manufaktur mobil terdapat biaya promosi, sedangkan dealer mobil tidak ada<br>', 'Perusahaan manufaktur mobil terdapat biaya bahan baku, sedangkan dealer mobil tidak ada<br>', 'Perusahaan manufaktur mobil terdapat biaya listrik toko, sedangkan dealer mobil tidak ada<br>', '<font face=\"Cambria\"><span style=\"font-size: 14.6667px;\">Dealer mobil terdapat biaya tenaga kerja, sedangkan perusahaan manufaktur mobil tidak ada</span></font>', 'Dealer mobil terdapat biaya penyusutan mesin pabrik, sedangkan perusahaan manufaktur mobil tidak ada<br>', 'Perusahaan manufaktur mobil terdapat biaya bahan baku, sedangkan dealer mobil tidak ada<br>'),
(88, 13, 'UD LEMBAYUNG INDAH&nbsp; adalah perusahaan dagang yang menjual alat – alat elektronik secara tunai maupun kredit, setiap transaksi penerimaan dan pengeluaran kas melalui rekening giro di bank. Pada tanggal 31 Maret 2017&nbsp; UD “ LEMBAYUNG INDAH “ menerima rekening koran dari bank atas transaksi selama bulan&nbsp; Maret 2017. Ada perbedaan saldo kas menurut catatan bank dan menurut catatan perusahaan diantara ada inkaso dari bank, ada pendapatan jasa giro dan administrasi dari bank yang belum dicatat oleh perusahaan. Berdasarkan data tersebut perbandingan pengaruh transaksi terhadap saldo perusahaan dan saldo bank adalah ....<br>', 'Inkaso menambah saldo di bank, pendapatan jasa giro menambah saldo di perusahaan dan biaya administrasi mengurangi saldo di perusahaan.<br>', 'Inkaso mengurangi saldo di bank, pendapatan jasa giro menambah saldo di perusahaan dan biaya administrasi mengurangi saldo di perusahaan<br>', 'Inkaso menambah saldo di perusahaan, pendapatan jasa giro menambah saldo di perusahaan dan biaya administrasi mengurangi saldo di perusahaan<br>', 'Inkaso mengurangi saldo di perusahaan, pendapatan jasa giro menambah saldo di perusahaan dan biaya administrasi mengurangi saldo di perusahaan<br>', 'Inkaso menambah saldo di perusahaan, pendapatan jasa giro menambah saldo di perusahaan dan biaya administrasi menambah saldo di perusahaan<br>', 'Inkaso menambah saldo di perusahaan, pendapatan jasa giro menambah saldo di perusahaan dan biaya administrasi mengurangi saldo di perusahaan<br>'),
(89, 13, 'Sistem penyelenggaraan kliring local yang dalam pelaksanaan perhitungannya, membuat bilyet saldo kliring serta pemilahan warkat dilakukan secara manual oleh setiap peserta kliring, merupakan pengertian dari sistem ....', 'Sistem otomatis<br>', 'Sistem Elektronik<br>', 'Sistem semi otomatis<br>', 'Sistem kliring nasional dari Bank Indonesia<br>', 'Sistem Manual<br>', 'Sistem semi otomatis<br>'),
(90, 13, 'Pada tanggal 1 Desember 2017 saldo buku besar PT GEMILANG pada akun Piutang Dagang sebesar Rp. 234.300.000,00, akun cadangan piutang sebesar Rp. 4.686.000,00, perusahaan menggunakan metode tidak langsung terhadap piutang tak tertagih. Pada tanggal 31 Desember 2017 terdapat saldo akun piutang dagang sebesar Rp. 254.100.000,00. Perusahaan menetapkan cadangan kerugian piutang sebesar 2 % dari saldo piutang dagang. Jumlah pengaruh saldo akun cadangan kerugian piutang adalah ....<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit sebesar Rp. 369.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit sebesar Rp. 396.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah debit sebesar Rp. 396.000,00<br>', 'Saldo cadangan kerugian piutang berkurang sebelah debit sebesar Rp. 369.000,00<br>', 'Saldo cadangan kerugian piutang berkurang sebelah kredit sebesar Rp. 369.000,00<br>', 'Saldo cadangan kerugian piutang bertambah sebelah kredit sebesar Rp. 396.000,00<br>'),
(91, 15, 'Jika dalam suatu kegiatan kantor&nbsp; diperlukan adanya sebuah dokumen dengan segera, sementara dokumen tersebut berada ditempat yang berbeda dengan jarak yang cukup jauh, maka&nbsp; media yang tepat untuk melancarkan kegiatan tersebut adalah :<br>', 'Telepon<br>', 'Faximile<br>', 'Aiphone<br>', 'komputer<br>', 'Mesin Elektrik<br>', 'Aiphone<br>'),
(92, 15, 'Sarana dan prasarana suatu hal yang sangat diperlukan dalam setiap kegiatan,&nbsp; adapun ruang lingkup dari sarana dan prasarana adalah meliputi :<br>', 'Barang – barang kantor<br>', 'Peralatan Produksi<br>', 'Barang tdk bergerak,&nbsp; tidak habis pakai dan habis pakai.<br>', 'Peralatan habis pakai dan tidak habis pakai.<br>', 'Barang-barang penunjang pekerjaan kantor<br>', 'Barang tdk bergerak,&nbsp; tidak habis pakai dan habis pakai.<br>'),
(93, 15, 'Dengan melakukan perencanaan yang baik akan dapat memaksimalkan pencapaian tujuan, salah satu kegiatan perencanaan yang baik diantaranya :<br>', 'Mengadakan&nbsp; kerjasama<br>', 'Meninjau lokasi<br>', 'Menyusun daftar kebutuhan yang diperlukan<br>', 'Memahami&nbsp; tugas dengan baik<br>', 'Membentuk tim<br>', 'Menyusun daftar kebutuhan yang diperlukan<br>'),
(94, 15, 'Salah satu dari 3 hal yang harus diperhatikan dalam proses distribusi adalah :<br>', 'Jumlah dan jenis barang harus tepat<br>', 'Diperkirakan barang tidak rusak<br>', 'Harga barang sesuai<br>', 'Selalu memperhatikan prinsip kebutuhan<br>', 'Menjaga kekompakan kerja<br>', 'Jumlah dan jenis barang harus tepat<br>'),
(95, 15, 'Tujaun dari diadakan kegiatan inventarisasi barang adalah :<br>', 'Agar barang tidak mudah hilang<br>', 'Memberikan&nbsp; informasi<br>', 'Mengetahui manfaat barang<br>', 'Memudahkan hibah<br>', 'Membantu kelancaran kegiatan<br>', 'Agar barang tidak mudah hilang<br>'),
(96, 15, 'Agar barang dapat digunakan dalam waktu yang lama&nbsp; perlu diadakan kegiatan pemeliharaan, untuk barang sering digunakan hendaknya dilakukan pembersihan secara :<br>', 'Berkala<br>', 'Setiap habiis digunakan<br>', 'Setiap hari<br>', 'Sesuai Instruksi<br>', 'Jika diperlukan<br>', 'Setiap hari<br>'),
(97, 15, 'Kegiatan penghapusan barang yang benar penting diketahui agar tidak merugikan, salah satu kegiatan yang harus dilakukan dalam penghapusan barang adalah :<br>', 'Membuat barang siap dimusnahkan<br>', 'Membuat daftar usulan barang yang akan dihapuskan<br>', 'Membuat keputusan yang tepat&nbsp;<br>', 'Menjaga agar tidak ada barang yang gagal dimusnahkan<br>', 'Menghilangkan tanda-tanda barang<br>', 'Membuat daftar usulan barang yang akan dihapuskan<br>'),
(98, 15, 'Suatu upaya pengelolaan yang mencakup semua aktivitas yang berhubungan dengan keuangan guna mencapai tujuan suatu perusahaan atau organisasi, merupakan pengertian dari ….<br>', 'Administrasi perkantoran<br>', 'Administrasi keuangan<br>', 'Administrasi kepegawaian<br>', 'Administrasi pajak<br>', 'Administrasi humas<br>', 'Administrasi keuangan<br>'),
(99, 15, 'Ada dua dokumen yang digunakan dalam pengajuan uang tunai, yaitu . . . .<br>', 'Bukti kas keluar dan bukti kas masuk<br>', 'Kwitansi dan nota<br>', 'Faktur<br>', 'Nota debet dan nota kredit<br>', 'Bukti kas keluar dan cek<br>', 'Bukti kas keluar dan cek<br>'),
(100, 15, 'Agar laporan keuangan dapat dipahami dengan mudah terutama oleh pihak luar, maka laporan keuangan harus disusun dengan memperhatikan karakteristik kualitatif laporan keuangan yang disusun oleh Ikatan Akuntan Indonesia dalam . . . .<br>', 'Standar Akuntansi Perbankan Indonesia<br>', 'Standar Akuntansi Biaya<br>', 'Standar Akuntansi Keuangan<br>', 'Standar Kompetensi Akuntansi Keuangan<br>', 'Standar Biaya dan Keuangan&nbsp;<br>', 'Standar Akuntansi Keuangan<br>'),
(101, 15, 'Penghargaan dari Negara kepada PNS yang telah bekerja dengan penuh kesetiaan, pengabdian, kecakapan, kejujuran dan disiplin dalam bentuk tanda kehormatan yakni….<br>', 'Tanda kehormatan kesetiaan<br>', 'Tanda jasa karya satya<br>', 'Satya lencana karya satya<br>', 'Satya lencana prestasi kerja<br>', 'Satya kencana<br>', 'Satya lencana karya satya<br>'),
(102, 15, 'Kemampuan dan karakteristik yang dimiliki oleh seorang Pegawai Negeri Sipil berupa pengetahuan, ketrampilan dan sikap perilaku yang diperlukan dalam pelaksanaan tugas jabatannya, sehingga Pegawai Negeri Sipil tersebut dapat melaksanakan tugasnya secara profesional, efektif dan efisien. Merupakan pengertian dari…<br>', 'pengangkatan<br>', 'kenaikan pangkat<br>', 'jabatan fuingsional<br>', 'kompetensi<br>', 'syarat obyektif<br>', 'kompetensi<br>'),
(103, 15, 'Spanduk, poster merupakan bentuk komunikasi …<br>', 'Pribadi<br>', 'Kelompok<br>', 'Media<br>', 'Massa<br>', 'Media massa<br>', 'Media<br>'),
(104, 15, 'Ruang lingkup administrasi meliputi kegiatan kantor, sarana dan fasilitas kerja perkantoran. Berikut ini&nbsp; yang termasuk salah satu kegiatan kantor adalah ….<br>', 'Perencanaan perkantoran<br>', 'Perencanaan fasilitas kantor<br>', 'Pengadaan peralatan kantor<br>', 'Pengadaan perabot&nbsp; kantor<br>', 'Penentuan letak perkantoran<br>', 'Perencanaan perkantoran<br>'),
(105, 15, 'Pada sebuah perusahaan besar yang memiliki cabang di beberapa provinsi serta bidang kerjanya sangat luas, lebih cocok menerapkan azas ....&nbsp;<br>', 'Dekonsentralisasi&nbsp;<br>', 'Desentralisasi&nbsp;<br>', 'Sentralisasi&nbsp;<br>', 'Gabungan&nbsp;<br>', 'Efektivitas<br>', 'Sentralisasi&nbsp;<br>'),
(106, 15, 'Proses penerimaan pesan dari komunikator kepada komunikan disebut ..<br>', 'Encode<br>', 'Message<br>', 'Feedback<br>', 'Symbol<br>', 'Decode<br>', 'Decode<br>'),
(107, 15, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4d87b03487fe37e1e480faf1520ef22d.PNG\" width=\"207\"><br><div>Gambar di atas adalah bentuk tata ruang kantor …<br></div>', 'Terbuka<br>', 'Semi tertutup<br>', 'Tertutup<br>', 'Panorama<br>', 'Gabungan<br>', 'Semi tertutup<br>');
INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(108, 15, 'Hal yang sebaiknya tidak dilakukan ketika mendapat telepon mencurigakan adalah...<br>', 'Terbawa arus komunikasi&nbsp;<br>', 'Tetap tenang,tidak takut atau terpancing emosi<br>', 'Terus berusaha menanyakan identitas penelpon dengan ramah<br>', 'Jangan memaksa si penelpon jika ia tidak memberikan identitasnya<br>', 'Menolak dengan sopan bila si penelpon meminta kita untuk mengambil keputusan<br>', 'Terbawa arus komunikasi&nbsp;<br>'),
(109, 15, 'Pada saat bekerja Siska kesulitan untuk menyimpan hasil kerjanya yang berupa laporan keuangan karena banyak virus di komputernya, maka tindakan Siska agar data tidak terkena virus yaitu ….<br>', 'Disimpan di flash disk agar aman dan tidak terkena virus<br>', 'Tetap menyimpannya walaupun masih banyak virus<br>', 'Disimpan di computer lain agar tidak terkena virus<br>', 'Menggunakan anti virus dan memback up data<br>', 'Datanya dicetak agar kalau data hilang ada print outnya<br>', 'Menggunakan anti virus dan memback up data<br>'),
(110, 15, 'Di bawah ini yang merupakan ruang lingkup humas, kecuali.....', 'Employee Relations<br>', 'stockholder Relations<br>', 'Labour Relations<br>', 'Human Relations<br>', 'Press Relations<br>', 'Press Relations<br>'),
(111, 15, 'Kode etik bagi pengelola/ anggota kehumasan pemerintah dimaksudkan...<br>', 'untuk lebih meningkatkan dan membina citra pemerintah atau organisasi/instasi.<br>', 'mempertinggi daya dan hasil guna yang maksimal dalam rangka operasional kehumasan yang terpadu<br>', 'mempunyai fungsi di instansi pemerintah, departemen, lembaga-lembaga negara<br>', 'perwujudan dan jati diri dari profesi kehumasan pemerintah yang terbuka dan komunikatif<br>', 'dalam rangka menunjang pelaksanaan kebijakan pemerintah<br>', 'perwujudan dan jati diri dari profesi kehumasan pemerintah yang terbuka dan komunikatif<br>'),
(112, 15, 'Yang harus di perhatikan seorang sekertaris ketika pimpinan akan melakukan perjalanan dinas adalah...<br>', 'Tujuan Perjalanan<br>', 'Biaya Akomodasi<br>', 'Berapa karyawan yang akan berangkat<br>', 'kesehatan pimpinan<br>', 'Jam tidur pimpinan<br>', 'Tujuan Perjalanan<br>'),
(113, 15, 'Adapun tujuan dari pertemuan/rapat...<br>', 'memahami situasi dan tujuan setiap anggota rapat<br>', 'untuk memecahkan atau mencari jalan keluar suatu masalah<br>', 'menyampaikan gagasan atau ide yang harus di jalankan<br>', 'untuk saling berbagi keluhan<br>', 'memberikan penjelasan tentang kondisi perusahaan<br>', 'untuk memecahkan atau mencari jalan keluar suatu masalah<br>'),
(114, 15, 'Dalam membuat notula rapat, harus memenuhi beberapa isian diantaranya, kecuali..<br>', 'tujuan di adakan nya rapat<br>', 'hal-hal yang akan di bicarakan saat rapat berlangsung<br>', 'rekomendasi dan keputusan hasil rapat<br>', 'topik yang menjadi pembahasan<br>', 'pihak-pihak yang berkaitan dalam acara<br>', 'topik yang menjadi pembahasan<br>'),
(115, 15, 'Salah satu tindakan yang harus di lakukan eksternal public relations seperti<br>', 'ikut membantu pimpinan dalam hal menyusun atau memperbaiki formasi staf ke arah yang efektif<br>', 'memegang kendali agar perusahaan tetap kokoh<br>', 'membantu pimpinan dalam mengendalikan perusahaan<br>', 'pemegang saham<br>', 'mempengaruhi pendistrbusian produk<br>', 'ikut membantu pimpinan dalam hal menyusun atau memperbaiki formasi staf ke arah yang efektif<br>'),
(116, 15, 'Saat menerima tamu hal yang harus di lakukan pertama kali adalah<br>', 'bijaksana<br>', 'berkepribadian menarik<br>', 'langsung menyapa dan memperkenalan kan nama<br>', 'mempersilahkan tamu duduk di tempat yang terhormat<br>', 'di beri suguhan makan dan minum<br>', 'mempersilahkan tamu duduk di tempat yang terhormat<br>'),
(117, 15, 'Melakukan komunikasi dengan menggunakan telepon melalui sambungan langsung jarak jauh (SLJJ), caranya yaitu : tekan kode area + tekan nomor telepon tujuan. Nomor kode area Daerah Istimewa Yogyakarta adalah…<br>', '0274<br>', '0362<br>', '0462<br>', '0474<br>', '0742<br>', '0274<br>'),
(118, 15, 'Pada ‘Geografic Filing System’ bila guide-nya disusun berdasarkan ‘chronological filing system’, maka jumlah guide yang diperlukan adalah…<br>', '12 buah<br>', '26 buah<br>', '30 buah<br>', '365 buah<br>', 'Sebanyak abjad<br>', '12 buah<br>'),
(119, 15, 'Surat bentuk ‘indented style’ dan ‘hanging style’ jarang digunakan karena…<br>', 'Pada suratnya memerlukan pengetikan khusus<br>', 'Bentuknya tidak praktis<br>', 'Bentuknya tidak enak dipandang<br>', 'Pemakaiannya tidak memasyarakat<br>', 'Memerlukan waktu pengetikan yang cukup lama<br>', 'Bentuknya tidak praktis<br>'),
(120, 15, 'Rapat penjelasan disebut juga…<br>', 'Problem solving conference<br>', 'Negotiation conference<br>', 'Personal conference<br>', 'Maching conference<br>', 'Solving conference<br>', 'Maching conference<br>'),
(121, 15, 'Suatu warkat diberi kode kesejahteraan koperasi, bila disimpan menurut subject filing system dapat ditemukan pada…<br>', 'Laci keuangan<br>', 'Folder perekonomian<br>', 'Di dalam guide kesejahteraan di dalam folder koperasi<br>', 'Folder kesejahteraan, guide keuangan<br>', 'Di dalam folder kepegawaian<br>', 'Di dalam guide kesejahteraan di dalam folder koperasi<br>'),
(122, 15, 'Lambang yang digunakan untuk komunikasi verbal adalah…<br>', 'Lambang gerak<br>', 'Lambang warna<br>', 'Lambang suara<br>', 'Lambang isyarat<br>', 'Lambang huruf&nbsp;<br>', 'Lambang huruf&nbsp;<br>'),
(123, 15, 'Hal-hal apa yang harus dilakukan dan hal-hal yang dilarang di dalam suatu masyarakat atau budaya tertentu, disebut…<br>', 'Norma agama<br>', 'Norma pendidikan<br>', 'Norma sosial<br>', 'Norma hukum<br>', 'Norma politik<br>', 'Norma sosial<br>'),
(124, 15, 'Pengeluaran uang dapat diketahui secara rinci sesuai dengan pos-pos pengeluaran setiap bulannya, adalah keuntungan dari sistem…<br>', 'Saldo harian<br>', 'Dana tidak tetap<br>', 'Dana berubah<br>', 'Dana tetap<br>', 'Voucher<br>', 'Dana tetap<br>'),
(125, 15, 'Langkah-langkah yang dilakukan dalam kegiatan pengelolaan dana kas kecil adalah…<br>', 'Membuat laporan dana kas kecil setiap periode kas kecil<br>', 'Membuat bukti kas masuk dan bukti kas keluar<br>', 'Meminta persetujuan pimpinan untuk pembentukan dana kas kecil<br>', 'Pembentukan dana kas kecil, penggunaan dana kas kecil, dan pengisisan kembali dana kas kecil.<br>', 'Mengajukan permintaan pengeluaran dana kas kecil kepada bagian bendahara kas besar perusahaan<br>', 'Pembentukan dana kas kecil, penggunaan dana kas kecil, dan pengisisan kembali dana kas kecil.<br>'),
(126, 15, 'Lamanya cuti bagi PNS wanita yang mengalami keguguran kandungan adalah…<br>', '2 bulan<br>', '1 bulan<br>', '1,5 bulan<br>', '2 minggu<br>', '30 hari<br>', '1,5 bulan<br>'),
(127, 15, 'Pendidikan dan pelatihan prajabatan adalah diklat untuk membentuk wawasan kebangsaan, kepribadian dan….<br>', 'Etika pegawai negeri sipil<br>', 'Pengangkatan calon pegawai negeri sipil<br>', 'Perilaku dalam kepemimpinan aparatur<br>', 'Keterampilan yang diperlukan dalam jabatan fungsional<br>', 'Keterampilan fungsional yang berhubungan dengan pelaksanaan tugas jabatan fungsional keahlian yang bersangkutan&nbsp;<br>', 'Etika pegawai negeri sipil<br>'),
(128, 15, 'Yang merupakan salah satu hukuman disiplin ringan adalah…<br>', 'Pembebasan dari jabatan<br>', 'Penundaan kenaikan gaji berkala untuk paling lambat 1 (satu) tahun<br>', 'Penundaan kenaikan pangkat untuk paling lambat 1 (satu) tahun<br>', 'Penurunan pangkat pada pangkat yang setingkat lebih rendah untuk paling lama 1 (satu) tahun<br>', 'Teguran tertulis<br>', 'Teguran tertulis<br>'),
(129, 15, 'Dibawah ini yang tidak termasuk Pemberhentian dengan hormat adalah…<br>', 'Meninggal dunia<br>', 'Permintaan sendiri<br>', 'Penyederhanakan organisasi perubahan<br>', 'Pemberhentian karena tidak cakap jasmani dan rohani<br>', 'Melanggar sumpah/janji jabatan<br>', 'Melanggar sumpah/janji jabatan<br>'),
(130, 15, 'Di bawah ini yang berhak&nbsp; atas pensiun, kecuali…<br>', 'pensiun janda/duda<br>', 'pensiun anak<br>', 'pensiun orang tua<br>', 'pensiun atas permintaan sendiri<br>', 'pensiun kakak dan adik<br>', 'pensiun kakak dan adik<br>'),
(131, 2, 'Cermati paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/635ed8dd50df874fe64ebe21ba1763aa.PNG\" width=\"485\"><br></div><div>Ide pokok paragraf tersebut adalah ....<br></div>', 'penggunaan bahasa pengantar<br>', 'pemahaman bahasa pengantar<br>', 'pelajaran bahasa pengantar<br>', 'penguasaan bahasa pengantar<br>', 'belajar bahasa pengantar<span style=\"white-space:pre\">	</span><br>', 'penguasaan bahasa pengantar<br>'),
(132, 2, 'Cermati paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/96a08aceb108b6a89d7513e1c134511d.PNG\" width=\"484\"><br></div><div>Simpulan paragraf tersebut adalah …<br></div>', 'Dunia akan mengalami krisis energi.<br>', 'Persediaan minyak bumi dunia semakin berkurang.&nbsp;<br>', 'Perlunya sumber energi alternatif dalam kehidupan.<br>', 'Pemakaian sumber minyak bumi sangat besar.<br>', 'Minyak bumi bukan satu-satunya sumber energi utama.<br>', 'Dunia akan mengalami krisis energi.<br>'),
(133, 2, 'Cermati kalimat berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/7efc6bcb9568e88c1324a67d10a25df0.PNG\" width=\"453\"><br></div><div>Perbaikan kalimat tersebut agar efektif adalah …<br></div>', 'Dalam karya tulis ini penulis membahas alternatif sumber energi yang efektif dan efisien.<br>', 'Di dalam karya tulis ini akan membahas alternatif sumber energi yang lebih efektif dan efisien.<br>', 'Adapun karya tulis ini akan membahas alternatif sumber energi yang lebih efektif dan efisien.<br>', 'Adapun karya tulis ini penulis akan dibahas sumber energi alternatif yang lebih efektif dan efisien.<br>', 'Dalam karya tulis ini akan dibahasnya sumber energi alternatif yang tergolong efektif dan efisien.<br>', 'Dalam karya tulis ini penulis membahas alternatif sumber energi yang efektif dan efisien.<br>'),
(134, 2, 'Cermati kutipan teks drama berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/12fd9d2bc89f9af32de881622b5f1472.PNG\" width=\"457\"><br></div><div>Makna lepas tangan pada kutipan teks drama tersebut adalah ….<br></div>', 'tidak bersemangat<br>', 'malas bekerja<br>', 'sulit dinasehati<br>', 'menyerah<br>', 'tak bertanggung jawab<span style=\"white-space:pre\">															</span><br>', 'tak bertanggung jawab<span style=\"white-space:pre\">															</span><br>'),
(135, 2, '			Cermati kutipan novel berikut!<div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4237b89217743c222d98891387a32638.PNG\" width=\"453\"><br>		</div><div>Perbaikan penggunaan tanda baca pada kalimat tersebut yang benar&nbsp; adalah ...&nbsp;<br></div>', 'Sebenarnya&nbsp; tim sepak bola Indonesia lebih banyak memiliki peluang emas&nbsp; tetapi,&nbsp; karena&nbsp; penyelesaiannya kurang baik, akhirnya kalah melawan Jepang.<br>', 'Sebenarnya, tim sepak bola Indonesia, lebih banyak memiliki peluang emas tetapi,&nbsp; karena&nbsp; penyelesaiannya kurang baik, akhirnya kalah melawan Jepang.<br>', 'Sebenarnya, tim sepak bola Indonesia lebih banyak memiliki peluang emas, tetapi karena penyelesaiannya kurang baik, akhirnya kalah melawan Jepang.&nbsp;<br>', 'Sebenarnya&nbsp; tim sepak bola Indonesia lebih banyak memiliki peluang emas, tetapi karena&nbsp; penyelesaiannya kurang baik, akhirnya kalah melawan Jepang.<br>', 'Sebenarnya, tim sepak bola Indonesia lebih banyak memiliki peluang emas,&nbsp; tetapi&nbsp; karena&nbsp; penyelesaiannya kurang baik, akhirnya, kalah melawan Jepang.&nbsp;&nbsp;<br>', 'Sebenarnya, tim sepak bola Indonesia lebih banyak memiliki peluang emas, tetapi karena penyelesaiannya kurang baik, akhirnya kalah melawan Jepang.&nbsp;<br>'),
(136, 2, 'Cermati kutipan novel berikut!<span style=\"white-space:pre\">	</span><br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/30bb9038a86f45b7227844c0cafc8bb3.PNG\" width=\"454\"><br></div><div>Amanat yang sesuai dengan isi kutipan tersebut adalah ...<br></div>', 'Jadilah wanita yang terpelajar, tetapi tidak angkuh dan sombong.&nbsp;<br>', 'Jangan angkuh dan sombong kalau menjadi ibu rumah tangga.<br>', 'Bersikaplah keras kalau mau menjadi pemimpin yang disegani.<br>', 'Bersikaplah rendah hati kalau mau menjadi pejabat tinggi.<br>', 'Janganlah mengingkari kodrat sebagai seorang wanita.', 'Jadilah wanita yang terpelajar, tetapi tidak angkuh dan sombong.&nbsp;<br>'),
(137, 2, 'Cermati paragraf berikut!<span style=\"white-space:pre\">		</span><br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a1d4fbc816d671febf1a94d681018a83.PNG\" width=\"452\"><br></div><div>Kata berimbuhan yang tepat untuk melengkapi paragraf tersebut adalah ....<br></div>', 'dicoba, mensajikan, tampilkan<br>', 'menyoba, menyaji, penampilan<span style=\"white-space:pre\">	</span><br>', 'mencoba, menyajikan, ditampilkan<br>', 'dicobakan, sajikan, menampilkan<br>', 'mencobakan, disajikan, tampilan<br>', 'mencoba, menyajikan, ditampilkan<br>'),
(138, 2, 'Cermati kalimat-kalimat berikut!<span style=\"white-space:pre\">		</span><br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/097aab0c80ba8caae4288f70c9154bfd.PNG\" width=\"453\"><br></div><div>Urutan kalimat-kalimat tersebut agar menjadi paragraf yang padu adalah ….<br></div>', '(4)-(1)-(2)-(5)-(3)<br>', '(5)-(4)-(3)-(1)-(2)<br>', '(1)-(2)-(5)-(4)-(3)<br>', '(4)-(5)-(3)-(1)-(2)<br>', '(5)-(3)-(4)-(2)-(1)<br>', '(4)-(1)-(2)-(5)-(3)<br>'),
(139, 2, 'Cermati kutipan paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/6a90fbd271078bb46f05182a5c56fe6b.PNG\" width=\"453\"><br></div><div>Kalimat yang sesuai untuk melengkapi paragraf tersebut adalah …<br></div>', 'Wilayah-wilayah yang terdapat kerusakan hutan, masih dilakukan penanaman pohon kembali.&nbsp;&nbsp;<br>', 'Pemanfaatan hutan tanpa kendali akan menimbulkan bencana besar yang dapat merugikan kita semua.&nbsp;<br>', 'Hasil&nbsp; hutan harus berdaya guna bagi masyarakat yang tinggal di sekitar hutan tersebut.<br>', 'Hutan bermanfaat sebagai penyerap air hujan sehingga air tidak langsung mengalir ke daerah pemukiman penduduk.&nbsp;<br>', 'Curah hujan yang cukup tinggi menyebabkan sungai-sungai tidak mampu menampungnya.<br>', 'Pemanfaatan hutan tanpa kendali akan menimbulkan bencana besar yang dapat merugikan kita semua.&nbsp;<br>'),
(140, 2, 'Cermati paragraf berikut!<span style=\"white-space:pre\">	</span><br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/fad3b5da14f6f74bd435cd0675b1259a.PNG\" width=\"452\"><br></div><div>Variasi kalimat nomor (2) paragraf tersebut yang tepat adalah …<br></div>', 'Bila dalam waktu yang tidak lama lagi dunia mengalami krisis energi, tidak akan ditemukan sumber energi lain sebagai sumber energi alternatif.<br>', 'Dalam waktu yang tidak lama lagi dunia akan mengalami krisis energi&nbsp; sehingga tidak ditemukan sumber energi lain sebagai sumber energi alternatif.<br>', 'Bila dunia mengalami krisis energi, tidak ditemukan sumber energi lain&nbsp; sebagai sumber energi alternatif dalam waktu yang tidak lama lagi.&nbsp;<br>', 'Dalam&nbsp; waktu yang tidak lama lagi dunia akan mengalami krisis energi bila&nbsp; &nbsp; &nbsp; tidak ditemukan sumber energi lain sebagai sumber energi alternatif.&nbsp;<br>', 'Sumber energi lain sebagai sumber energi alternatif tidak ditemukan bila dalam waktu yang tidak lama lagi dunia mengalami krisis energi.&nbsp;<br>', 'Dalam&nbsp; waktu yang tidak lama lagi dunia akan mengalami krisis energi bila&nbsp; &nbsp; &nbsp; tidak ditemukan sumber energi lain sebagai sumber energi alternatif.&nbsp;<br>'),
(141, 2, 'Cermati kalimat berikut!&nbsp;<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/469f266d6c1883bd832f649ad23b6f68.PNG\" width=\"465\"><br></div><div>Perbaikan kalimat tersebut agar efektif adalah …<br></div>', 'Kami berkeinginan mengajak Saudara guna ikut berpartisipasi dalam mengejar ketinggalan dan keterbelakangan yang ada pada perusahaan ini.<br>', 'Kami ingin mengajak kepada Saudara untuk berpartisipasi agar mengejar ketinggalan dan keterbelakangan yang ada pada perusahaan ini.<br>', 'Kami ingin ajak Saudara untuk partisipasi dalam mengejar ketertinggalan dan keterbelakangan yang ada pada perusahaan ini.<br>', 'Kami ingin mengajak&nbsp; Saudara untuk berpartisipasi dalam mengatasi ketinggalan dan keterbelakangan yang ada pada perusahaan ini.<br>', 'Kami menginginkan mengajak Saudara untuk partisipasi di dalam mengejar ketinggalan dan keterbelakangan yang ada pada perusahaan ini.<br>', 'Kami ingin mengajak&nbsp; Saudara untuk berpartisipasi dalam mengatasi ketinggalan dan keterbelakangan yang ada pada perusahaan ini.<br>'),
(142, 2, 'Cermati kutipan teks drama berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/35d56f806f8c8aa8afda7952f252eb02.PNG\" width=\"466\"><br></div><div>Makna anak emas pada kutipan teks drama tersebut adalah ….<br></div>', 'anak kesayangan<br>', 'anak satu-satunya<br>', 'anak kandung<br>', 'orang yang sabar<br>', 'orang kepercayaan<br>', 'anak kesayangan<br>'),
(143, 2, 'Cermati kutipan novel berikut!&nbsp;<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/688bc9cb43966aa19647d40ae0fcde3a.PNG\" width=\"482\"><br></div><div>Amanat&nbsp; kutipan novel tersebut adalah ...<br></div>', 'Hargailah semua teman sekelas, karena mereka bisa diajak bekerja sama.<br>', 'Hormatilah guru yang telah memberi&nbsp; bekal ilmu kepada para siswa.<br>', 'Pujilah semua orang yang telah berprestasi dengan baik.<br>', 'Berbahagialah orang-orang yang telah diberi kelebihan daripada yang lain.<br>', 'Hargailah setiap orang karena kepandaiaannya, bukan karena keadaan fisiknya.<br>', 'Hargailah setiap orang karena kepandaiaannya, bukan karena keadaan fisiknya.<br>'),
(144, 2, 'Cermati paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/87978002ed2625c275d5eca3c0673ef8.PNG\" width=\"467\"><br></div><div>Perbaikan penggunaan tanda baca pada paragraf tersebut yang benar&nbsp; adalah ...&nbsp;<br></div>', 'Di daerah kami&nbsp; misalnya&nbsp; masih banyak orang laki-laki yang makan sirih. Meskipun demikian&nbsp; para remaja perempuan tidak terpengaruh dengan kebiasaan mereka.<br>', 'Di daerah kami&nbsp; misalnya, masih banyak orang laki-laki yang makan sirih. Meskipun demikian, para remaja perempuan, tidak terpengaruh dengan kebiasaan mereka.<br>', 'Di daerah kami, misalnya, masih banyak orang laki-laki yang makan sirih. Meskipun demikian, para remaja perempuan tidak terpengaruh dengan kebiasaan mereka.<br>', 'Di daerah kami, misalnya, masih banyak orang laki-laki yang makan Sirih. Meskipun demikian, para remaja perempuan, tidak terpengaruh dengan kebiasaan mereka.<br>', 'Di daerah kami, misalnya&nbsp; masih banyak orang laki-laki yang makan sirih. Meskipun demikian para remaja perempuan, tidak terpengaruh dengan kebiasaan mereka.', 'Di daerah kami, misalnya, masih banyak orang laki-laki yang makan sirih. Meskipun demikian, para remaja perempuan tidak terpengaruh dengan kebiasaan mereka.<br>'),
(145, 2, 'Cermati paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/3ce2448b8517b9a1ed32830b41963ac2.PNG\" width=\"458\"><br></div><div>Kata berimbuhan yang tepat untuk melengkapi paragraf tersebut adalah ….<br></div>', 'pemberantas, dipersulit<br>', 'memberantas, menyulitkan<br>', 'diberantas, mempersulit<br>', 'pemberantasan, kesulitan&nbsp;<br>', 'berantaskan, penyulitan<br>', 'pemberantasan, kesulitan&nbsp;<br>'),
(146, 2, 'Cermati kalimat-kalimat berikut!&nbsp;&nbsp;<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/29c116fd67bbae101ab0b8559965e9e4.PNG\" width=\"489\"><br></div><div>Urutan kalimat-kalimat tersebut agar menjadi paragraf yang padu adalah .…<br></div>', '(4)-(2)-(3)-(1)-(5)<br>', '(3)-(5)-(1)-(2)-(4)&nbsp; &nbsp;<br>', '(2)-(3)-(1)-(4)-(5)<br>', '(2)-(3)-(5)-(4)-(1)<br>', '(2)-(5)-(4)-(1)-(3)<br>', '(2)-(3)-(5)-(4)-(1)<br>'),
(147, 2, 'Cermati paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/81675bf01da78634009aefbfacf30d76.PNG\" width=\"480\"><br></div><div>Kalimat yang tepat untuk melengkapi paragraf&nbsp; tersebut adalah …<br></div>', 'Guncangan keras yang susul menyusul hingga enam kali itu terjadi selama dua jam.<br>', 'Selain korban jiwa, masih ditambah kerusakan materi yang belum bisa diprediksi seberapa besar kerugiannya.<br>', 'Gempa yang terjadi di wilayah Indonesia berbeda dengan gempa yang terjadi di negara lain.<br>', 'Tugas Tim Basarnas dalam setiap bencana alam&nbsp; antara lain mengevakuasi para korban.<br>', 'Selain pemerintah daerah, masyarakat umum juga memberi bantuan untuk para korban.<br>', 'Guncangan keras yang susul menyusul hingga enam kali itu terjadi selama dua jam.<br>'),
(148, 2, 'Cermati paragraf berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/c95a5f6063f07b45ac603bd16def7427.PNG\" width=\"465\"><br></div><div>Variasi kalimat nomor (2) paragraf tersebut yang tepat adalah …<br></div>', 'Pesawat itu meninggalkan Tual sekitar pukul 13.10 untuk melanjutkan perjalanan menuju Kaimana sebelum mendarat di Tual untuk mengisi bahan bakar.&nbsp;', 'Pesawat itu meninggalkan Tual sekitar pukul 13.10 untuk melanjutkan perjalanan menuju Kaimana setelah mendarat di Tual untuk mengisi bahan bakar.&nbsp;<br>', 'Setelah pesawat itu mendarat di Tual sekitar pukul 13.10 untuk mengisi bahan bakar, pesawat itu kemudian meninggalkan Tual untuk melanjutkan perjalanan menuju Kaimana.<br>', 'Setelah pesawat itu mendarat di Tual untuk melanjutkan perjalanan menuju Kaimana, pesawat itu kemudian meninggalkan Tual sekitar pukul 13.10 untuk mengisi bahan bakar.<br>', 'Setelah meninggalkan Tual sekitar pukul 13.10 untuk melanjutkan perjalanan menuju Kaimana, pesawat itu mendarat di Tual untuk mengisi bahan bakar.&nbsp;<br>', 'Setelah pesawat itu mendarat di Tual sekitar pukul 13.10 untuk mengisi bahan bakar, pesawat itu kemudian meninggalkan Tual untuk melanjutkan perjalanan menuju Kaimana.<br>'),
(149, 2, 'Bacalah tajuk berikut secara cermat!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/47a195292cab54ceb0cf8b0585e997f4.PNG\" width=\"497\"><br></div><div>Opini penulis dalam teks di atas yang tepat adalah ...<br></div>', '<div>Subsidi BBM sudah dinikmati oleh kalangan menengah dan atas.<br></div>', 'Subsidi BBM sudah tepat sasaran yaitu kalangan menengah dan atas.<br>', 'Subsidi BBM belum disediakan untuk kalangan menengah dan atas.<br>', 'Subsidi BBM seharusnya diberikan kepada rakyat dalam bentuk uang dan barang.<br>', 'Subsidi BBM seharusnya diberikan kepada rakyat dalam bentuk program terpadu.<br>', 'Subsidi BBM seharusnya diberikan kepada rakyat dalam bentuk program terpadu.<br>'),
(150, 2, '<div>Cermatilah gagasan utama dan gagasan penjelas teks eksposisi berikut!</div><div>Gagasan utama : Sampah elektronik</div><div>Gagasan penjelas:</div><div>(1)Pengertian dan jenis sampah elektronik</div><div>(2)Harga sampah elektronik</div><div>(3)Bahaya sampah elektronik</div><div>(4)Penanganan sampah elektronik</div><div>(5)Manfaat sampah elektronik</div><div><br></div><div>Gagasan penjelas yang sesuai dengan gagasan utama pada teks eksposisi tersebut ditandai dengan nomor …</div>', '(1), (2), (5)<br>', '(1), (3), (4)<br>', '(1), (3), (5)<br>', '(2), (3), (4)<br>', '(2), (3), (5)<br>', '(1), (3), (4)<br>'),
(151, 2, 'Perhatikan gambar berikut!<div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/585c92fc6612d1b7b05f53c4d9e19e05.PNG\" width=\"252\"><br></div><div>Makna tersirat pada gambar anekdot di atas adalah...<br></div>', 'Menyindir kepada anggota PMR yang tidak mau sekolah.<br>', 'Menyindir kepada anggota DPR yang sering bolos dalam bekerja.<br>', 'Menyindir seorang bapak yang selalu menasehati.&nbsp;&nbsp;<br>', 'Mengkritik anggota DPR yang sering bolos sekolah.<br>', 'Mengkritik anggota DPR yang tidak memerhatikan pelajar.<br>', 'Menyindir kepada anggota DPR yang sering bolos dalam bekerja.<br>'),
(152, 2, '<div>Baca dengan cermat langkah-langkah pembibitan tanaman berikut ini!</div><div>(1)memilih tempat persemaian</div><div>(2)membuat bedeng persemaian</div><div>(3)memberi atap tempat persemaian</div><div>(4)menyemai benih</div><div>(5)pemeliharaan bibit</div><div>Bagian inti dari langkah pembibitan tanaman adalah....</div>', '(1), (5), (2)<br>', '(1), (4), (5)<br>', '(2), (4), (5)<br>', '(2), (3), (4)<br>', '(2),(3),(5)<br>', '(1), (4), (5)<br>'),
(153, 2, 'Perhatikan teks berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/cce7ef86d7af0ebf2003ffce3639b375.PNG\" width=\"505\"><br></div><div>Kutipan di atas adalah bagian isi yang menjelaskan tentang...<br></div>', 'Pemilihan bahan pembuatan cincau<br>', 'Bahan- bahan pembuatan cintau<br>', 'Salah satu langkah pembuatan cincau<br>', 'Perlengkapan untuk pembuatan cincau<br>', 'Manfaat ekonomis pembuatan cincau<br>', 'Salah satu langkah pembuatan cincau<br>'),
(154, 2, 'Bacalah teks di bawah ini!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4a08d2082e931e024644967a92e7e982.PNG\" width=\"500\"><br></div><div>Kalimat yang merupakan pendapat dinyatakan pada nomor …<br></div>', '(1) dan (2)<br>', '(2) dan (3)<br>', '(3) dan (4)<br>', '(4) dan (5)<br>', '(1) dan (5)<br>', '(1) dan (5)<br>'),
(155, 2, 'Cermati Ilustrasi berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b43f7f6c3a29d9dd224e16a355e28564.PNG\" width=\"495\"><br></div><div>Kalimat penolakan lamaran yang sesuai dengan ilustrasi tersebut adalah …<br></div>', 'Dengan ini, kami beri tahukan bahwa lamaran Sudara tidak dapat diterima<br>', 'Sesuai dengan surat Saudara, dengan ini diberitakan bahwa lamaran Saudara kami tolak<br>', 'Lowongan pekerjaan yang Saudara kehendaki belum kami butuhkan&nbsp;<br>', 'Sehubungan dengan surat Saudara, maka lamaran pekerjaan Saudara kami tolak<br>', 'Dengan surat ini, kami memberitahukan bahwa lowongan jabatan yang Saudara inginkan sudah terisi<br>', 'Dengan surat ini, kami memberitahukan bahwa lowongan jabatan yang Saudara inginkan sudah terisi<br>'),
(156, 2, '<div>Perhatikan puisi berikut!</div><div>Bising gergaji mengoyak sepi dari hutan</div><div>pohon-pohon tumbang</div><div>Mobil-mobil besar menggendongnya</div><div>Tergesa-tergesa ke kota</div><div>Gunung dan lembah luka parah</div><div>Kulitnya terkelupas</div><div>...</div><div>Tema puisi di atas adalah...</div>', 'bencana alam<br>', 'lingkungan hidup<br>', 'korupsi<br>', 'Kerusakan hutan<br>', 'Dampak teknologi<br>', 'lingkungan hidup<br>'),
(157, 2, '<div>Perhatikan puisi berikut!</div><div>Bising gergaji mengoyak sepi dari hutan</div><div>pohon-pohon tumbang</div><div>Mobil-mobil besar menggendongnya</div><div>Tergesa-tergesa ke kota</div><div>Gunung dan lembah luka parah</div><div>Kulitnya terkelupas</div><div>...</div><div>Makna kulitnya terkelupas adalah...</div>', 'kulit pohon yang terkelupas<br>', 'pohon-pohon yang gersang<br>', 'tanah pegunungan yang gundul akibat penebangan hutan<br>', 'Pohon-pohon yang ditebang<br>', 'Pohon terluka akibat digergaji<br>', 'tanah pegunungan yang gundul akibat penebangan hutan<br>'),
(158, 2, '<div>Bacalah dengan cermat penggalan puisi berikut!&nbsp;</div><div>SAJAK SEHABIS PERANG SAUDARA</div><div>Karya : Abrar 2 3Yusra Matahari!</div><div><br></div><div>Matahari yang dulu dihindarkan&nbsp;</div><div>Wajah-wajah muram dalam kamar yang dikunci&nbsp;</div><div>Liatlah sekarang kegemerlapannya menyayat-nyayat udara&nbsp;</div><div>Doa nyanyian gemuruh turun naik memabukkan?&nbsp;</div><div><br></div><div>Majas yang terdapat dalam baris ketiga dan keempat puisi tersebut adalah….</div><div><br></div>', 'Personifikasi&nbsp;<br>', 'Metafora&nbsp;<br>', 'Hiperbola&nbsp;<br>', 'Paradoks&nbsp;<br>', 'Metonimia&nbsp;', 'Personifikasi&nbsp;<br>'),
(160, 2, '<div>Bacalah penggalan puisi berikut ini!&nbsp;</div><div>Tiga Catatan Terakhir&nbsp;</div><div>Karya : Aan Mansyur&nbsp;</div><div><br></div><div>Kunang-kunang itu berkerumunan di ujung-ujung jari tanganku&nbsp;</div><div>menyebutkan Ciuman terakhir sebelum terbang berkilau-kilau di udara.&nbsp;</div><div>kunang-kunang itu melanglang mencari sepasang matamu yang berbeda.&nbsp;</div><div>Dalam sebuah pejam yang lain pejam yang telah lama direncanakan alam dan malam.&nbsp;</div><div><br></div><div>Tema penggalan puisi di atas adalah....&nbsp;</div><div><br></div>', 'Keindahan alam&nbsp;<br>', 'Keindahan malam&nbsp;<br>', 'Kilauan kunang-kunang&nbsp;<br>', 'Keindahan kunang-kunang&nbsp;<br>', 'Keberadaan kunang-kunang&nbsp;<br>', 'Keindahan kunang-kunang&nbsp;<br>'),
(161, 2, 'Cermati kutipan biografi berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/2534bf65f0041dbe134339558189cffa.PNG\" width=\"502\"><br></div><div>Hal yang dapat diteladani dari tokoh Usmar Ismail adalah…<br></div>', 'Usmar Ismail memulai karirnya sejak masih muda.<br>', 'Usmar Ismail merupakan pendiri sebuah kelompok teater.<br>', 'Usmar Ismail banyak menulis cerpen dan skenario film.<br>', 'Usmar Ismail telah mendirikan kelompok teater sandiwara.', 'Usmar Ismail merupakan pelopor industri perfilman Indonesia.<br>', 'Usmar Ismail memulai karirnya sejak masih muda.<br>'),
(162, 2, 'Bacalah penggalan resensi berikuti ini!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/6b7f8af376907e95afe531b5bb67b36c.PNG\" width=\"504\"><br></div><div>Kalimat keunggulan dalam resensi tersebut terdapat pada nomor....<br></div>', '(1), (2), (4)<br>', '(1), (3), (6)<br>', '(1), (4), (7)', '(1), (5), (7)<br>', '(3), (5), (7)<br>', '(1), (4), (7)'),
(163, 2, 'Cermati teks berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/ca1ae3f3693c64600fd71f435f0a3ce7.PNG\" width=\"503\"><br></div><div>Kalimat yang menyatakan fakta pada teks tersebut adalah kalimat nomor ….<br></div>', '(1) dan (2)<br>', '(1) dan (3)<br>', '(2) dan (3)<br>', '(3) dan (5)<br>', '(4) dan (5)<br>', '(1) dan (2)<br>'),
(164, 2, 'Penulisan identitas yang tepat dalam surat lamaran pekerjaan adalah …', '<div>Nama<span style=\"white-space:pre\">			</span>: Muhammad Syarif, S.Pd.</div><div>Tempat/tanggal lahir<span style=\"white-space:pre\">	</span>: Yogyakarta, 5 November 1985</div><div>Alamat<span style=\"white-space:pre\">			</span>: Jalan Magelang, Yogyakarta</div>', '<div>Nama<span style=\"white-space:pre\">			</span>: Muhammad Syarif, S.Pd.</div><div>Tempat/tanggal lahir<span style=\"white-space:pre\">	</span>: Yogyakarta, 5 November 1985</div><div>Alamat<span style=\"white-space:pre\">			</span>: Jln. Magelang No.46, Yogyakarta</div>', '<div>Nama<span style=\"white-space:pre\">			</span>: Muhammad Syarif, S.Pd.</div><div>Tempat/tanggal lahir<span style=\"white-space:pre\">	</span>: Yogyakarta, 5 November 1985</div><div>Alamat<span style=\"white-space:pre\">			</span>: Jln. Magelang No.46, Yogyakarta</div>', '<div>Nama<span style=\"white-space:pre\">			</span>: Muhammad Syarif, S.Pd.</div><div>Tempat/tanggal lahir<span style=\"white-space:pre\">	</span>: Yogyakarta, 5 November 1985</div><div>Alamat<span style=\"white-space:pre\">			</span>: Jl. Magelang, Yogyakarta</div>', '<div>Nama<span style=\"white-space:pre\">			</span>: Muhammad Syarif, S.Pd.</div><div>Tempat/tanggal lahir<span style=\"white-space:pre\">	</span>: Yogyakarta, 5 November 1985</div><div>Alamat<span style=\"white-space:pre\">			</span>: Jalan Magelang No.46, Yogyakarta</div>', '<div>Nama<span style=\"white-space:pre\">			</span>: Muhammad Syarif, S.Pd.</div><div>Tempat/tanggal lahir<span style=\"white-space:pre\">	</span>: Yogyakarta, 5 November 1985</div><div>Alamat<span style=\"white-space:pre\">			</span>: Jalan Magelang No.46, Yogyakarta</div>'),
(165, 2, 'Pada data riwayat hidup, identitas seperti nama, tempat, tanggal lahir, dan alamat dapat dikelompokkan ke dalam bagian …<br>', 'referensi pribadi<br>', 'data pribadi<br>', 'pendidikan<br>', 'pengalaman kerja<br>', 'keterangan lain<br>', 'data pribadi<br>'),
(166, 2, 'Cermati kutipan teks cerita sejarah berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/2f383340c89a24190a2f2f742408f358.PNG\" width=\"488\"><br></div><div>Jenis teks berdasarkan kutipan tersebut adalah …<br></div>', 'narasi fakta<br>', 'narasi fiksi<br>', 'novel<br>', 'hikayat<br>', 'cerpen<br>', 'narasi fakta<br>'),
(167, 2, '<div>Cermati kalimat-kalimat berikut!</div><div>Kalimat utama: Ukiran tradisional Minangkabau yang unik dan rumit memiliki sejarah tersendiri.</div><div>Kalimat penjelas:</div><div>(1)Motif hias ukiran tradisional Minangkabau tersebut mempunyai hubungan yang</div><div>erat dengan motif hias yang muncul di situs-situs megalitik di Kabupaten 50 Kota Sumatra Barat.</div><div>(2)Dapat ditafsirkan bahwa cikal bakal pola hias Minangkabau berakar sejak zaman</div><div>megalitik, yaitu sekitar 1500 tahun yang lalu.</div><div>(3)Pola hias tersebut telah melalui perjalanan panjang seiring dengan perkembangan</div><div>sejarah Minangkabau pada masa berikutnya, yaitu masa Hindu-Buddha dan masa</div><div>Islam.</div><div>(4)Seni ukir tradisional sudah mulai punah seiring dengan masuknya budaya</div><div>asing ke ranah Minang.</div><div>(5)Sementara itu, hasil kerajian seni ukir Minangkabau sangat digemari oleh</div><div>wisatawan.</div><div>Kalimat penjelas yang mendukung kalimat utama terdapat pada nomor….</div>', '(1), (2), dan (3)<br>', '(1), (2), dan (4)<br>', '(2), (3), dan (4)<br>', '(2), (3), dan (4)<br>', '(3), (4), dan (5)<br>', '(1), (2), dan (4)<br>'),
(168, 2, '<div>&nbsp;Bacalah teks drama berikut!</div><div>Romeo : Petunjuk cinta yang gaib telah mempersatukan aku ke hadapanmu. Dan untuk cinta&nbsp; yang kudapatkan akan kutaruhkan segalanya. Tapi......aku seorang Montague.....</div><div>Juliet : Dan aku seorang Capulet. Mengapa kita punya nama? Biarlah aku menjadi bukan Capulet dan kau bukan Montague, Romeo!</div><div>Tema yang tersirat dari penggalan drama di atas adalah....</div>', 'Kepercayaan<br>', 'Persahabatan<br>', 'Permusuhan<br>', 'Percintaan<br>', 'pertentangan keluarga<br>', 'Kepercayaan<br>'),
(169, 2, 'Cermati cuplikan berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/65da32405e4e3cff3672e4f3b024f744.PNG\" width=\"501\"><br></div><div>Kata arkais yang bercetak tebal pada penggalan hikayat di atas memiliki makna...<br></div>', 'diusir<br>', 'diperintah<br>', 'diminta<br>', 'diizinkan<br>', 'dipanggil<br>', 'diperintah<br>'),
(170, 2, 'Cermati kutipan ceramah berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/32d73fa898ddd4548cd7dcbc92291d58.PNG\" width=\"504\"><br></div><div>Kalimat persuasi yang tepat untuk melengkapi paragraf tersebut adalah ...<br></div>', 'Saudara-saudara, betapa bangganya kita kelak memiliki anak-anak bangsa yang cerdas dan dapat mengatur negara sebaik-baiknya dan dapat sejajar dengan negara dan bangsa lainnya.&nbsp;<br>', 'Jadi, kalau generasi kita sudah maju, dalam arti kata dimajukan oleh anak-anak bangsa yang cerdas dan bijaksana, kita akan berbangga dan menjadi bangsa yang besar di dunia ini.&nbsp;<br>', 'Betapa pentingnya anak-anak bangsa bagi bangsa sebagai penerus pembangunan negara dan memajukan bangsa dari keterpurukan di berbagai bidang yang membuat kita tertinggal.<br>', 'Oleh sebab itu, marilah kita sukseskan gerakan wajib belajar sepanjang hayat pada seluruh bangsa kita agar kelak memperoleh generasi pembangun bangsa yang cerdas dan bijaksana.<br>', 'Didiklah anak kita dengan pendidikan yang mengarah kepada pengembangan bakat mereka agar mereka dapat merasa nyaman dan senang dalam mengikuti pelajaran yang diberikan.<br>', 'Oleh sebab itu, marilah kita sukseskan gerakan wajib belajar sepanjang hayat pada seluruh bangsa kita agar kelak memperoleh generasi pembangun bangsa yang cerdas dan bijaksana.<br>'),
(171, 2, '<div>Perhatikan teks berikut ini.</div><div>1.Membuat surat undangan rapat</div><div>2.Membentuk kepanitian lomba puisi</div><div>3.Menyusun program kerja</div><div>4.Pelaksanaan lomba</div><div>5.Evaluasi kerja</div><div>Teks tersebut termasuk dalam bagian proposal, yaitu …..</div>', 'Kepanitiaan<br>', 'Susunan Acara<br>', 'Anggaran<br>', 'Penutup<br>', 'Tujuan<br>', 'Kepanitiaan<br>'),
(172, 2, 'Cermati teks berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/0fcb4880ff70698320c8a720e6709457.PNG\" width=\"509\"><br></div><div>Makna isitilah yang bercetak miring pada teks di atas adalah ….<br></div>', 'keakuratan<br>', 'kepastian<br>', 'istilah<br>', 'kebahasaan<br>', 'tetap<br>', 'kepastian<br>'),
(173, 2, '<div>Judul<span style=\"white-space:pre\">		</span>: Riwayat Nabi Daud (Raja Adil Bijaksana, Nabi yang Mulia)</div><div>Pengarang <span style=\"white-space:pre\">	</span>: Ismail Pamungkas</div><div>Penerbit <span style=\"white-space:pre\">	</span>: PT Remaja Rosdakarya, Bandung</div><div>Tahun<span style=\"white-space:pre\">		</span>: 1995</div><div>Setelah dibaca, ternyata buku tersebut menggunakan bahasa yang mudah dipahami.</div><div><br></div><div>Kalimat resensi yang tepat untuk menggambarkannya adalah . .&nbsp;</div>', 'Isi buku ini bercerita tentang keadilan dan kebijaksanaan Nabi Daud. Daud menjadi raja sudah kehendak dari Tuhan.<br>', 'Bahasa yang digunakan dalam buku ini mudah dipahami dan komunikatif. Dengan demikian, pembaca dapat menikmati cerita tanpa harus berpikir keras.<br>', 'Selain menarik, kelebihan buku ini juga dilengkapi dengan gambar yang mendukung isi cerita sehingga mudah dimengerti.<br>', '&nbsp;Kekurangan cerita ini hanya terletak pada kisahnya yang terlalu singkat sehingga ceritanya kurang lengkap<br>', 'Cerita dalam buku ini sangat menarik, dapat membuat kita seolah-olah hadir pada masa nabi terdahulu<br>', 'Bahasa yang digunakan dalam buku ini mudah dipahami dan komunikatif. Dengan demikian, pembaca dapat menikmati cerita tanpa harus berpikir keras.<br>'),
(174, 2, 'Cermati teks berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/76cce08ca27dc69e7ed888231db27594.PNG\" width=\"528\"><br></div><div>Ide pokok paragraf tersebut adalah ... .<br></div>', 'penguasaan sastra oleh guru<br>', 'permasalahan klasik dan up to date<br>', 'permasalahan pembelajaran sastra<br>', 'strategi pembelajaran sastra<br>', 'pembelajaran sastra tidak menarik<br>', 'permasalahan pembelajaran sastra<br>'),
(175, 2, 'Perhatikan teks iklan berikut!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d762924309736a77bd28bd0695eccc14.PNG\" width=\"256\"><br></div><div>Arti kata ideal dalam teks iklan tersebut adalah …&nbsp; &nbsp;&nbsp;<br></div>', 'Sangat mengecewakan<br>', 'Sangat sesuai kehendak<br>', 'Sangat mengkhawatirkan<br>', 'Sangat membenci<br>', 'Sangat menyenangkan<br>', 'Sangat mengkhawatirkan<br>'),
(176, 2, 'Bacalah penggalan cerpen berikut ini!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/70058531dea603e2e4c45a154f043b4e.PNG\" width=\"507\"><br></div><div>Kalimat yang menunjukkan latar pada kutipan cerpen tersebut terdapat pada nomor....<br></div>', '(1) dan (2)<br>', '(1) dan (3)<br>', '(1) dan (4)<br>', '(1) dan (5)<br>', '(1) dan (6)<br>', '(1) dan (3)<br>'),
(178, 11, 'Tombol keyboard berfungsi untuk menghapus satu karakter sebelah kiri kursor disebut….<br>', 'Enter<br>', 'Backspace<br>', 'Delete<br>', 'Space bar<br>', 'Tab<br>', 'Backspace<br>'),
(179, 11, 'Berikut ini yang merupakan fungsi mouse adalah….<br>', 'Memasukkan data dan program<br>', 'Mengetik dan memasukkan data<br>', 'Mempermudah dalam memilih pilihan<br>', 'Melaksanakan instruksi secara berurutan<br>', 'Untuk menyimpan data dan program<br>', 'Mempermudah dalam memilih pilihan<br>'),
(180, 11, 'Berikut yang termasuk bagian dari external storage adalah….<br>', 'Harddisk<br>', 'Read Only Memory<br>', 'Random Access Memory<br>', 'Main Memory<br>', 'Internal Storage<br>', 'Harddisk<br>'),
(181, 11, 'Alat input berfungsi untuk mengkopi gambar/teks, lalu disimpan di memori komputer disebut…..<br>', 'Printer<br>', 'Web Cam<br>', 'Kamera Digital<br>', 'Scanner&nbsp;<br>', 'Harddisk<br>', 'Scanner&nbsp;<br>'),
(182, 11, 'Fungsi dari tombol caps lock pada keyboard adalah….<br>', 'Memindahkan kursor<br>', 'Menghapus data<br>', 'Mengakhiri pengetikan<br>', 'Mengetik huruf besar<br>', 'Membuat spasi<br>', 'Mengetik huruf besar<br>'),
(183, 11, 'Seperangkat komputer agar dapat digunakan secara wajar, minimal harus tersedia…..<br>', 'Monitor, Speaker, CPU, dan Mouse<br>', 'Monitor, keyboard, mouse, dan CPU<br>', 'Monitor, mouse, CPU, dan scanner<br>', 'Monitor, CPU, keyboard, dan printer<br>', 'Monitor, Keyboard, Speaker, dan Printer<br>', 'Monitor, keyboard, mouse, dan CPU<br>'),
(184, 11, 'Perangkat keras komputer yang termasuk sebagai alat keluaran antara lain…..<br>', 'Keyboard dan Mouse<br>', 'CPU dan Keyboard<br>', 'Monitor dan Printer<br>', 'CPU dan Printer<br>', 'Keyboard dan Monitor<br>', 'Monitor dan Printer<br>'),
(185, 11, 'CPU merupakan salah satu contoh bagian dalam sistem komputer…..<br>', 'Software<br>', 'Hardware<br>', 'Brainware<br>', 'Netware<br>', 'Hardware<br>', 'Hardware<br>'),
(186, 11, 'Perangkat output yang menghasilkan informasi disebut…..<br>', 'Mouse<br>', 'Monitor<br>', 'Printer<br>', 'Cental Processing Unit<br>', 'Scanner<br>', 'Cental Processing Unit<br>'),
(187, 11, 'Jenis memory yang digunakan di PC adalah<br>', 'DDR<br>', 'CDRAM<br>', 'SDR<br>', 'DSRAM<br>', 'SRDRAM<br>', 'DDR<br>'),
(188, 11, 'Kata lain dari otak computer adalah…<br>', 'CPU<br>', 'Power Supply<br>', 'Processor<br>', 'Mouse<br>', 'Monitor<br>', 'Processor<br>'),
(189, 11, 'Sistem komputer terbangun dari elemen-elemen :<br>', 'Hardware – Software – Input Device<br>', 'Software – Software – Output Device<br>', 'Perangkat keras – Pengguna – Perangkat Lunak<br>', 'Proses – Hardware – Software<br>', 'Software -&nbsp; Proses – Hardware<br>', 'Software -&nbsp; Proses – Hardware<br>'),
(190, 11, 'Pada pemasangan RAM, yang harus diperhatikan adalah :<br>', 'Letak pengait jangan sampai terbalik<br>', 'Letak lengkungan RAM harus sama dengan tempat lengkungan di slot RAM<br>', 'Pengait RAM tidak boleh renggang<br>', 'Jumlah pin RAM harus sesuai jumlah pin di slot RAM<br>', 'Chip RAM harus menghadap ke CPU<br>', 'Letak lengkungan RAM harus sama dengan tempat lengkungan di slot RAM<br>'),
(191, 11, 'Printer merupakan salah satu Output Device yang merupakan bagian :<br>', 'Soft Copy Device<br>', 'Hard Copy Device<br>', 'Perangkat keras tambahan<br>', 'Perangkat yang menggunakan koneksi Blue Tooth<br>', 'Perangkat penyimpan data<br>', 'Hard Copy Device<br>'),
(192, 11, 'Cara untuk mempercepat kerja komputer dapat dilakukan dengan ....<br>', '&nbsp;menghentikan layanan windows yang tidak digunakan<br>', 'menambah software game<br>', 'mengurangi penggunaan komputer<br>', '&nbsp;memasang kipas tambahan<br>', 'menggunakan ups<br>', '&nbsp;menghentikan layanan windows yang tidak digunakan<br>'),
(193, 11, 'Pilihlah yang bukan merupakan perangkat pemroses (proccessing device) dari kumpulan nama perangkat keras berikut ini:<br>', 'Proccessor<br>', 'Ram<br>', 'Sound card<br>', 'VGA card<br>', 'DVD Drive<br>', 'DVD Drive<br>'),
(194, 11, 'Pilihlah yang bukan merupakan perangkat lunak sistem operasi dari kumpulan nama perangkat lunak di bawah ini:<br>', 'Linux<br>', 'Microsoft Office<br>', 'Microsoft WIndows<br>', 'Macintos<br>', 'UNIX<br>', 'Microsoft Office<br>'),
(195, 11, 'Microsoft Windows merupakan sistem operasi komputer yang berbasis ….<br>', 'Graphical Universal Interface<br>', 'Picture User Interface<br>', 'Text User Interface<br>', 'Graphical and Picture Interface<br>', 'Graphic User Interface<br>', 'Graphic User Interface<br>'),
(196, 11, 'Berikut di bawah ini adalah nama-nama software program aplikasi yang digunakan untuk browsing internet kecuali&nbsp; ....<br>', 'Netscape<br>', 'Netbrowser<br>', 'Internet Explorer<br>', 'Opera<br>', 'Mozilla<br>', 'Netbrowser<br>'),
(197, 11, 'Pimpinan unit yang bertanggung jawab atas keseluruhan proses berlangsungnyA pekerjaan komputer, yang merupakan pejabat eselon tertinggi di bidang IT<br>', 'Data Processing Manager<br>', 'System Analyst<br>', 'Programmers<br>', 'Machine Operator<br>', 'Data Entry Operator<br>', 'Data Processing Manager<br>'),
(198, 11, 'Bilangan biner adalah bilangan yang berbasis ….<br>', 'Bilangan yang berbasis 2 yaitu 1 dan 2<br>', 'Bilangan yang berbasis 2 yaitu 0 dan 1<br>', 'Bilangan yang berbasis 10 yaitu 0 – 9<br>', 'Bilangan yang berbasis 8 yaitu 0 – 7<br>', 'Bilangan yang berbasis 16 yaitu 0 – 15<br>', 'Bilangan yang berbasis 2 yaitu 0 dan 1<br>'),
(199, 11, 'Bilangan heksadesimal adalah bilangan yang berbasis ....<br>', 'Bilangan yang berbasis 2&nbsp; yaitu 0 dan 1<br>', 'Bilangan yang berbasis 16 yaitu 0 dan 17<br>', 'Bilangan yang berbasis 10 yaitu 0 – 9<br>', 'Bilangan yang berbasis 8 yaitu 0 – 7<br>', 'Bilangan yang berbasis 16 yaitu 0 – 9<br>', 'Bilangan yang berbasis 16 yaitu 0 – 9<br>'),
(200, 11, '227(10) dikonversikan ke sistem biner mempunyai nilai&nbsp; ....<br>', '11001111<br>', '11100011<br>', '11110101<br>', '1110011<br>', '1110111<br>', '11100011<br>'),
(201, 11, 'Bilangan biner merupakan sistem bilangan yang mempunyai radik paling kecil ....<br>', '0<br>', '1<br>', '2<br>', '6<br>', '8<br>', '2<br>'),
(202, 11, 'Dalam Kode BCD menggunakan kode biner sebanyak ... Bit<br>', '2<br>', '3<br>', '4<br>', '6<br>', '8<br>', '4<br>'),
(203, 11, 'Manusia dengan tenaga dan ilmu pengetahuan yang digunakan untuk mengoperasikan serta mengatur system komputer adalah ....<br>', 'Brainware<br>', 'Mailware<br>', 'Hardware&nbsp;<br>', 'Software<br>', 'Spyware<br>', 'Brainware<br>'),
(204, 11, 'Tujuan pokok system computer adalah ….<br>', 'Mengolah data menjadi imformasi<br>', 'Mengolah input menjadi proses<br>', 'Mengolah output menjadi input<br>', 'Mengolah output jadi proses<br>', 'Mengolah imformasi jadi output<br>', 'Mengolah data menjadi imformasi<br>'),
(205, 11, 'Berikut ini merupakan application software, kecuali ….<br>', 'Ubuntu&nbsp; &nbsp;<br>', 'Ms. Office<br>', 'Photoshop&nbsp;<br>', 'RAM<br>', 'Coreldraw<br>', 'RAM<br>'),
(206, 11, 'Hardware yang berfungsi sebagai alat penunjuk untuk mengatur posisi kursor di layar adalah ….<br>', 'Monitor&nbsp;<br>', 'Printer<br>', 'Mouse&nbsp; &nbsp;<br>', 'Speaker<br>', 'Scanner<br>', 'Mouse&nbsp; &nbsp;<br>'),
(207, 11, 'Berikut ini merupakan storage device adalah ….<br>', 'monitor&nbsp; &nbsp; &nbsp;<br>', 'pentium<br>', 'Core i7<br>', 'Keyboard&nbsp;<br>', 'Flashdisk<br>', 'Flashdisk<br>'),
(208, 11, 'CorelDRAW adalah…..<br>', 'Aplikasi Editor grafik vector<br>', 'Aplikasi Browser Internet<br>', 'Aplikasi Membuat animasi Flash<br>', 'Aplikasi Berhitung<br>', 'Aplikasi Membuat Program<br>', 'Aplikasi Editor grafik vector<br>'),
(209, 11, 'Tombol pada keyboard untuk membuat grafik baru pada corelDRAW adalah...<br>', 'Ctrl+O<br>', 'Ctrl+N<br>', 'Ctrl+X<br>', 'Ctrl+Z<br>', 'Ctrl+R<br>', 'Ctrl+N<br>'),
(210, 11, 'Bagaimana cara mengexport gambar corelDRAW ?<br>', 'File ? Import<br>', 'File ? Save<br>', 'File ? Export<br>', '&nbsp;File ? Print<br>', 'File ? Exit<br>', 'File ? Export<br>'),
(211, 11, 'Sementara Elipse Tool berfungsi untuk...<br>', 'Membuat persegi atau persegi panjang<br>', 'Membuat segitiga atau segibanyak<br>', 'Membuat gambar spiral<br>', 'Membuat lingkaran atau elips<br>', 'Membuat gambar 3D<br>', 'Membuat lingkaran atau elips<br>'),
(212, 11, '<br>', 'Ctrl+E<br>', 'Ctrl+Z<br>', 'Ctrl+R<br>', 'Ctrl+N<br>', 'F5<br>', 'Ctrl+E<br>'),
(213, 11, 'Alat yang digunakan untuk menarik, memindahkan objek adalah...<br>', 'Pick Tool<br>', 'Shape Tool<br>', 'Envelope Tool<br>', 'Berzier Tool<br>', 'Eraser Tool<br>', 'Pick Tool<br>'),
(214, 11, 'Sementara Ctrl+D adalah shortcut pada keyboard untuk...<br>', 'Mengcopy gambar<br>', 'Menduplikat gambar<br>', 'Memotong gambar<br>', 'Menyatukan gambar<br>', 'Memisahkan gambar<br>', 'Menduplikat gambar<br>'),
(215, 11, 'Table tool digunakan untuk…..<br>', 'Membuat Segitiga<br>', 'Membuat Lingkaran<br>', 'Mewarnai Grafis<br>', 'Membuat Tabel<br>', 'Membuat garis lurus<br>', 'Membuat Tabel<br>'),
(216, 11, 'Untuk membuat background bisa dipilih dari menu...<br>', 'File<br>', 'Layout<br>', 'Page Setup<br>', 'View<br>', 'Arrange<br>', 'Layout<br>'),
(217, 11, 'Contour digunakan untuk…..<br>', 'Membentuk sudut dari suatu objek gambar/teks<br>', 'Membuat efek bayangan dari objek gambar/teks<br>', '<div>Menimbulkan efek 3D dari suatu objek gambar/teks dengan cara mengubah warna sisinya</div>', 'Menghilangkan efek 3D dari objek gambar<br>', 'Membentuk garis 3D<br>', '<div>Menimbulkan efek 3D dari suatu objek gambar/teks dengan cara mengubah warna sisinya</div>'),
(218, 11, '<div>Kategori desain grafis berikut ini yang memuat desain buku, majalah, leaflet dan publisitas sejenis adalah ….</div>', 'Printing<br>', 'Web desain<br>', 'Film<br>', 'Identifikasi<br>', 'Desain produk<br>', 'Printing<br>'),
(219, 11, 'Berikut ini yang bukan prinsip-prinsip dari sebuah desain grafis adalah ….<br>', 'Keseimbangan<br>', 'Ritme<br>', 'Tekanan<br>', 'Irama<br>', 'Kesatuan<br>', 'Tekanan<br>'),
(220, 11, 'Penyusun foto yang memiliki kerapatan dan warnna tertentu disebut ….<br>', 'Image<br>', 'Pixel<br>', 'Vektor<br>', 'Raster<br>', 'Bitmap<br>', 'Pixel<br>'),
(221, 11, 'Image vector banyak digunakan untuk gambar-gambar ….<br>', 'Manusia<br>', 'Objek benda<br>', 'Pemandangan<br>', 'Kartun<br>', 'Tanaman<br>', 'Kartun<br>'),
(222, 11, 'Secara garis besar, desain grafis terbagi menjadi dua, yaitu ….<br>', 'Tiff dan JPEG<br>', 'Bitmap dan Vektor<br>', 'Doc dan exl<br>', 'Pixcel dan titik<br>', 'Wma dan docx<br>', 'Bitmap dan Vektor<br>'),
(223, 11, 'Titik-titik penyusun image bitmap dikenal dengan istilah ….<br>', 'Vector<br>', 'Tiff<br>', 'JPEG<br>', 'Pixel<br>', 'Gif<br>', 'Pixel<br>'),
(224, 11, 'Secara teknis bitmap disebut juga dengan ….<br>', 'Solid<br>', 'Raster<br>', 'Simentris<br>', 'Gradient<br>', 'Grafir<br>', 'Raster<br>');
INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(225, 11, '<div>Jenis image yang disusun tidak dari pixel-pixel, namun dari objek garis dan kurva dengan .......</div>', 'Bitmap<br>', 'Vektor<br>', 'Tiff<br>', 'Jpeg<br>', 'Pixel<br>', 'Vektor<br>'),
(226, 11, 'Jenis image yang disusun pixel-pixel, dan ketika diperbesar, kualitas gambar akan rusak,&nbsp; bersifat resolution dependent, merupakan grafis denagn basis ….<br>', 'Bitmap<br>', 'Vector<br>', 'Tiff<br>', 'Jpeg<br>', 'Pixel<br>', 'Bitmap<br>'),
(227, 11, 'Aplikasi di bawah ini banyak digunakan untuk pengolah foto adalah ….<br>', 'Corel Draw<br>', 'Macromedia Freehand<br>', 'Adobe Illustrator<br>', 'Adobe Photo Shop<br>', 'Corel Venture<br>', 'Adobe Photo Shop<br>'),
(228, 14, 'Suatu kondisi dimana pada suatu pasar bersifat homogeny, merupakan&nbsp; ciri –ciri ……<br>', 'Pasar persaingan sempurna<br>', 'Pasar oligopoly<br>', 'Pasar persaingan murni<br>', 'Pasar abstrak<br>', 'Pasar monopsony<br>', 'Pasar persaingan sempurna<br>'),
(229, 14, 'Penyelenggaraan untuk mempelajari berbagai&nbsp; masalah pasar yang menyangkut&nbsp; lokasi pasar, luasnya pasar, sifatnya pasar dan karaktristik pasar di sebut …….<br>', 'Penelitian pasar<br>', 'Observasi pasar<br>', 'Analisis pasar<br>', 'Telaah pasar<br>', 'Perbandingan pasar<br>', 'Analisis pasar<br>'),
(230, 14, 'Pada segmentasi ini pasar dibagi menjadi kelompok – kelompok dengan&nbsp; dasar pembagian usia , jenis kelamin, tingkat ekonomi, dan tingkat pendidikan&nbsp; yaitu segmentasi ……..<br>', 'Segmen&nbsp; pasar<br>', 'Demografi<br>', 'Geografis<br>', 'Psikograf<br>', 'Sociocultural<br>', 'Demografi<br>'),
(231, 14, 'Kombinasi dari variabel&nbsp; atau kegiatan yang merupakan&nbsp; inti dari pemasaran yang terdiri dari strategi produk ( product ), harga ( price ), promosi ( promotion ), dan tempat ( place ) yaitu….<br>', 'Target pasar<br>', 'Pemasaran<br>', 'Sasaran pasar<br>', 'Peluang pasar<br>', 'Bauran pasar<br>', 'Bauran pasar<br>'),
(232, 14, 'Tindakan untuk menempatkan posisi bersaing produk dan bauran pemasaran yang tepat pada setiap pasar sasaran,……..<br>', 'Penentuan pasar sasaran<br>', 'Diffused preference<br>', 'Clustered preference<br>', 'Alteration product<br>', 'Segmentating<br>', 'Penentuan pasar sasaran<br>'),
(233, 14, 'Sewaktu akan melakukan product positioning perlu mempertimbangkan&nbsp; 4 hal kunci utama, disebut sebagai ……<br>', 'The golden rules of product<br>', 'Alteration of exiting product<br>', 'Differentiated marketing<br>', 'Dynamic atribut segmentation<br>', 'Homogeneus preference<br>', 'The golden rules of product<br>'),
(234, 14, 'Suatu usaha penggunaan barang sehingga mempunyai tingkat penggunaan yang lebih tinggi dari tingkat sebelumnya<br>', 'Pemunculan ide ( idea generation )<br>', 'Improvement development<br>', 'Penyaringan&nbsp; ( screening )<br>', 'Initial development<br>', 'New use application<br>', 'Improvement development<br>'),
(235, 14, 'Gambar dibawah ini menggambarkan riwayat produk sejak dikenalkan ka pasar sampai dengan ditarik dari pasar disebut<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/28d54c6be04d59960e73cf53567d22ca.PNG\" width=\"215\"><br></div>', 'Strategi penetrasi cepat ( rapid penetration strategy )<br>', 'Strategi peluncuran lambat&nbsp; ( low skimming strategy )<br>', 'Peluncuran cepat ( rapid skimming strategy )<br>', 'Siklus hidup produk ( product life cycle )<br>', 'Perputaran produk<br>', 'Siklus hidup produk ( product life cycle )<br>'),
(236, 14, 'Tahap awal perusahaan dalam memperkenalkan&nbsp; produknya kepada konsumen disebut …<br>', 'Tahap rapid glowth<br>', 'Tahap pertumbuhan&nbsp; / growth<br>', 'Tahap perkenalan&nbsp; ( introduction )<br>', 'Pertumbuhan lambat ( slow growth )<br>', 'Kedewasaan pertumbuhan ( growth maturity )<br>', 'Tahap perkenalan&nbsp; ( introduction )<br>'),
(237, 14, 'Asosiasi Pemasaran Amerika ( the American Marketing Association ) mendefinisikan merk atau brand yaitu …..<br>', 'Atribut produk<br>', 'Kemasan dan label<br>', 'Identitas dan ciri produk<br>', 'Nama, istilah, tanda, symbol, desain<br>', 'Judul, brand, warna, kemasan da nisi<br>', 'Nama, istilah, tanda, symbol, desain<br>'),
(238, 14, 'Tersenyum dan berjabat tangan dengan orang lain untuk mewujudkan rasa senang, simpati dan penghormatan adalah termasuk komunikasi…..<br>', 'Komunikasi bisnis<br>', 'Komunikasi masa<br>', 'Komunikasi verbal<br>', 'Komunikasi public<br>', 'Komunikasi non verbal<br>', 'Komunikasi non verbal<br>'),
(239, 14, 'Surat yang bertujuan untuk lebih mengeratkan sebuah hubungan bisnis dengan mengingatkan bahwa kita sangat senang bekerja sama dengannya disebut……..<br>', 'Apology letter<br>', 'Confirmation latter<br>', 'Inguiry latter<br>', 'Thank you latter<br>', 'Sales latter<br>', 'Thank you latter<br>'),
(240, 14, 'Seorang manager yang sedang mempresentasikan status dari sebuah proyek atau rangkaian pekerjaan yang ditugaskan disebut…..<br>', 'Model presentasi yang persuasif<br>', 'Model presentasi pelatihan/training<br>', 'Presentasi berdasarkan sifat interaksi<br>', 'Mengorganisasikan suatu presentasi<br>', 'Model presentasi penyampaian informasi<br>', 'Model presentasi penyampaian informasi<br>'),
(241, 14, 'Pelayanan ini bertujuan&nbsp; untuk memperlancar proses jual beli. Biasanyanya berkaitan dengan personil ( pramuniaga ) yang luwes dan terdidik<br>', 'Buying service<br>', 'Personal services<br>', 'Financial services<br>', 'Banking services<br>', 'Insurance service<br>', 'Buying service<br>'),
(242, 14, 'Negosiasi yang terjadi antara dua orang&nbsp; atau kelompok yang masing-masing berusaha mencapai tujuan kooperatif ( win win solution ) disebut……..<br>', 'Moving against ( pushing )<br>', 'Integrative negotiations<br>', 'Not moving ( etting be )<br>', 'Distributive negotiations<br>', 'Moving away<br>', 'Integrative negotiations<br>'),
(243, 14, 'Berikut yang bukan faktor yang mempengaruhi kepuasaan pelanggan yaitu………<br>', 'Kualitas produk<br>', 'Kualitas pelayanan<br>', 'Faktor emosional<br>', 'Faktor kemudahan<br>', 'Faktor status sosial<br>', 'Faktor status sosial<br>'),
(244, 14, 'Salah satu contoh dari surat niaga……..<br>', 'Surat penawaran dan surat penagihan<br>', 'Surat menentukan harga barang<br>', 'Permitaan barang<br>', 'Surat keluar barang<br>', 'Surat dinas atau resmi<br>', 'Surat penawaran dan surat penagihan<br>'),
(245, 14, 'Biasanya rapat ini membahas masalah yang sifatnya penting dan mendadak yang harus diselesaikan bersama disebut rapat……..<br>', 'Tertutup&nbsp;<br>', 'Incidental<br>', 'Pemecahan masalah<br>', 'Resmi ( formal meeting )<br>', 'Tidak resmi ( informal meeting )<br>', 'Tertutup&nbsp;<br>'),
(246, 14, 'Interview yang ditujukan untuk mendapatkan informasi yang dibutuhkan disebut…….<br>', 'The employment interview<br>', 'Informational interview<br>', 'Administrative interview<br>', 'Counseling interview<br>', 'Interview perorangan&nbsp;<br>', 'Informational interview<br>'),
(247, 14, 'Pewawancara memberikan rangsagan atau umpan kepada pelamar untuk berbicara. Dengan demikian pewawancara memberikan pertanyaan yang berbeda untuk orang yang berbeda disebut….<br>', 'Wawancara berpola<br>', 'Wawancara primer<br>', 'Wawancara terbuka<br>', 'Wawancara tertutup<br>', 'Wawancara tidak langsung<br>', 'Wawancara tidak langsung<br>'),
(248, 14, 'Berdasarkan tigkat pengaruh&nbsp; pada perusahaan maka lingkungan bisnis dapat dibedakan menjadi 2, yaitu…..<br>', 'Lingkungan sosial<br>', 'Lingkungan mikro dan lingkungan makro<br>', 'Lingkungan fisik seperti desain interior dari toko<br>', 'Lingkungan internal dan eksternal<br>', 'Lingkungan internal dan eksternal<br>', 'Lingkungan internal dan eksternal<br>'),
(249, 14, 'Dalam analisis maka kita harus memiliki kekuatan&nbsp; yang akan digunakan untuk mendirikan usaha yang dipilih disebut…….<br>', 'Opportunity ( kesempatan peluang )<br>', 'Pemegang saham ( stakeholders )<br>', 'Weakness ( kelemahan )<br>', 'Threats ( ancaman )<br>', 'Strength&nbsp;<br>', 'Strength&nbsp;<br>'),
(250, 14, 'Bentuk promosi secara personal dengan presentasi lisan dalam suatu percakapan dengan calon pembeli yang ditujukan untuk merangsang pembelian disebut……..<br>', 'Customer promotion<br>', 'Sales force promotion<br>', 'Promotion girl<br>', 'Trade promotion<br>', 'Personal selling<br>', 'Personal selling<br>'),
(251, 14, 'Pemberian tempat izin usaha kepada seseorang atau badan usaha dilokasi tertentu yang tidak menimbulkan gangguan atau kerusakan lingkungan disebut……<br>', 'Surat izin tempat usaha ( SITU )<br>', 'Akta pendirian perusahaan<br>', 'Surat izin usaha perdagangan ( SIUP )<br>', 'Tanda daftar perusahaan ( TDP )<br>', 'Nomor pokok wajib pajak ( NPWP )<br>', 'Surat izin tempat usaha ( SITU )<br>'),
(252, 14, 'Pemberian tempat izin usaha kepada seseorang atau badan usaha dilokasi tertentu yang menimbulkan gangguan atau kerusakan lingkungan disebut……<br>', 'Surat izin tempat usaha ( SITU )<br>', 'Surat izin usaha perdagangan ( SIUP )<br>', 'Nomor pokok wajib pajak ( NPWP )<br>', 'Tanda daftar perusahaan ( TDP )<br>', 'Surat izin gangguan ( HO )<br>', 'Surat izin gangguan ( HO )<br>'),
(253, 14, 'Capital yaitu penilaian bank terhadap permohonan kredit yang berhubungan dengan………<br>', 'Watak atau itikad baik pemohon<br>', 'Kekayaan pemohon kredit<br>', 'Kemampuan pemohon kredit<br>', 'Jaminan yang diberikan pemohon kredit<br>', 'Keadaaan perekonomian secara keseluruhan<br>', 'Jaminan yang diberikan pemohon kredit<br>'),
(254, 14, 'Hasil study kelayakan usaha dapat digunakan untuk…………<br>', 'Mengembangkan usaha yang sudah ada<br>', 'Langkah-langkah kelayakan bisnis<br>', 'Persyaratan pendirian bisnis<br>', 'Menghindari resiko kerugian<br>', 'Mencari laba<br>', 'Menghindari resiko kerugian<br>'),
(255, 14, 'Data dalam proposal harus sesuai&nbsp; dengan keadaan yang sebenarnya tana pengaruh dari pihak luar maupun penulis proposal. Hal tersebut menandaka bahwa proposal harus….<br>', 'Jelas ( Clear )<br>', 'Singkat ( consice )<br>', 'Lengkap ( Complete )<br>', 'Benar ( correct )<br>', 'Tidak kadaluarsa ( up to date )<br>', 'Benar ( correct )<br>'),
(256, 14, 'Presentasi brand atau produk kepada distribusi untuk memperoleh dukungan distribusi produk. Seringkali acara dipadukan dengan gala dinner serta sajian entertainment disebut….<br>', 'Press conference<br>', 'Marketing gatering<br>', 'Professional or scientific exhibition<br>', 'Trade show ( pameran dagang )<br>', 'Indusrial show ( pameran industry )<br>', 'Marketing gatering<br>'),
(257, 14, 'Satu proses penggabungan dua perseroan dimana salah satunya tetap berdiri dan menggunakan nama perseroannya sementara perseroan yang lain lenyap dan semua kekayaannya dimasukkan ke dalam perseroan yang tetap berdiri tersebut disebut……<br>', 'Joint venture<br>', 'Holding company<br>', 'Waralaba<br>', 'Merger<br>', 'Kartel<br>', 'Merger<br>'),
(258, 14, 'Suatu penganalisis atau penyelanggaraan untuk memperlajari berbagai masalah pasar disebut analisis pasar yang memyangkut tentang…..<br>', 'Lokasi pasar ,luasnya pasar, sifat pasar dan karakteristik pasar&nbsp;<br>', 'Lokasi pasar ,data produk yang akan di jual&nbsp;<br>', 'Karateristik pasar pasar sejenisnya&nbsp;<br>', 'Karakteristik penjual dan pembeli&nbsp;<br>', 'Daya beli konsumen&nbsp;<br>', 'Lokasi pasar ,luasnya pasar, sifat pasar dan karakteristik pasar&nbsp;<br>'),
(259, 14, 'Dalam perencanaan ini akan dicakup penetapan pasar yang mana akan dilayani dan produk apa yang harus dilaksanakan dan dipasarkan ,disebut….<br>', 'Strategi penetrasi pasar&nbsp;<br>', 'Strategic market planning&nbsp;<br>', 'Corporate marketing planning&nbsp;<br>', 'Strategic marketing planning&nbsp;<br>', 'Operational marketing planning<br>', 'Strategic market planning&nbsp;<br>'),
(260, 14, 'Menetapkan harga awal yang tinggi ketika produk baru di luncurkan ,dan semakin lama akan terus harganya biasanya untuk penetapan harga handphon ,computer, dsb strategi penetapan harga ini disebut…….<br>', 'Skiming price<br>', 'Prestige pricing<br>', 'Penetration price<br>', 'Multiple unit pricing&nbsp;<br>', 'Odd pricing produc<br>', 'Skiming price<br>'),
(261, 14, 'Salah satu produser dalam mengurus SITU (surat ijin tempat usaha ) yaitu…<br>', 'Menjaga keindahan lingkungan&nbsp;<br>', 'Membuat surat keterangah domisi perusahaan&nbsp;<br>', 'Sebagai pedoman dalam melaksanakn pekerjaan rutin.<br>', 'Memperlancar tugas petugas pegawai atau tim unit kerja<br>', 'Mengarahkan petugas pegawai untuk agar disiplin dalam bekerja&nbsp;<br>', 'Membuat surat keterangah domisi perusahaan&nbsp;<br>'),
(262, 14, 'Perusahaan yang menggunakan strategi ini, tidak menghiraukan adanya kelompok pembeli yang berbeda beda .pasar dianggap sebagai suatu keseluruhan dengan ciri kesamaan dan kebutuhan ,strategi ini disebut………………&nbsp;<br>', 'Differentiated marketing<br>', 'Concentrated marketing<br>', 'Penetapan target pasar<br>', 'Undifferentiated marketing<br>', 'Segmentasi pasar sasaran<br>', 'Undifferentiated marketing<br>'),
(263, 14, 'Macam macam pemasran melalui media sosial yaitu…<br>', 'Video call, handphone,youtube,website<br>', 'Viral marketing ,youtube ,dan website&nbsp;<br>', 'Facebook ,twiter ,linkedin,pinterest<br>', 'Youtube,website,audio visual&nbsp;<br>', 'Viral marketing ,Instagram<br>', 'Facebook ,twiter ,linkedin,pinterest<br>'),
(264, 14, 'Sebuah pesan komersil yang dikirim kepada pelanggang sehingga mereka akan tahu ada sesuatu yang baru produk atau jasa yang anda berikan. pesan singkat ini bisa dikirim secara laangsung pada email pribadi atau berkelompok disebut …<br>', 'Twiter&nbsp;<br>', 'Email marketing&nbsp;<br>', 'Direct marketing&nbsp;<br>', 'Search angine optimization&nbsp;<br>', 'Hyper text mark-up language&nbsp;<br>', 'Email marketing&nbsp;<br>'),
(265, 14, 'Salah satu dari empat fungsi utama pedagang eceran ,yaitu………&nbsp;<br>', 'Membuat laba&nbsp;<br>', 'Menyimpan persedian&nbsp;<br>', 'Harga yang sesuai (at the right price)<br>', 'Penjual barang yang tepat (the right item)<br>', 'Perantara antara distributor dengan konsumen akhir<br>', 'Perantara antara distributor dengan konsumen akhir<br>'),
(266, 14, 'Faktor utama yang harus diperhatikan dalam memulai ataupun mengembangkan usaha ritel yaitu faktor lokasi, panduan dalam memlih lokasi usaha ritel yang baik adalah…..<br>', 'Melayani kelompok kunsumen&nbsp;<br>', 'Lalu lintas yang padat (heavy traffic)<br>', '.Mendekatkan antara produsen dengan konsumen&nbsp;<br>', 'Keunggulan relitif dari setiap area perdagangan yang dipilih&nbsp;<br>', 'Tipe lokasi perdaganagan yang memungkinkan untuk tumbuh&nbsp;<br>', 'Lalu lintas yang padat (heavy traffic)<br>'),
(267, 14, 'Strategi distribusi yang sangat cocok digunakan untuk produk kebutuhan sehari hari yang memiliki permintaan yang tinggi disebut……………<br>', 'Strategi distribusi instensif<br>', 'Strategi distribusi eksklusif&nbsp;<br>', '.Strategi distribusi sekunder&nbsp;<br>', 'Strategi distribusi selektif&nbsp;<br>', 'Strategi marketing<br>', 'Strategi distribusi instensif<br>'),
(268, 14, 'Bentuk franchise yang menunjukkan pada pemberian hak mengelola toko toko grosir maupun yang dilakukan toko serba ada disebut ………..<br>', 'Bussines format atau system franchise<br>', 'Processing or manufacturing franchise&nbsp;<br>', 'Conversion or afflilation franchising<br>', 'Group trading franchise<br>', 'Product franchise<br>', 'Group trading franchise<br>'),
(269, 14, 'Metode penjualan barang /jasa tertentu kepada konsumen dengan cara tatap muka di luar lokasi eceran /ritel, dilakukan jaringan pemasaran yang di kembangkan oleh mitra usaha dan bekerja berdasarkan komisi penjualan ,bonus penjualan dan iuran keanggotaan yang wajar disebut…………….<br>', 'Marketing&nbsp;<br>', 'Direct selling&nbsp;<br>', 'Double level marketing&nbsp;<br>', 'Direct level marketing&nbsp;<br>', 'Direct selling marketing&nbsp;<br>', 'Direct selling&nbsp;<br>'),
(270, 14, 'Bentuk penjualan langsung (hard sell) dapat ditemui dalam bentuk …<br>', 'Advertising&nbsp;<br>', 'Pemasaran interaktif&nbsp;<br>', 'Direct selling marketing<br>', 'Promosi penjualan (sales promotion)<br>', 'Penjualan yang besifat “cash and carry”<br>', 'Promosi penjualan (sales promotion)<br>'),
(271, 14, 'Atribut produk adalah unsur unsur produk yang dipandang penting oleh konsumen dan dijadikan dasar pengambilan keputusan pembelian,atribut produk meliputi …<br>', 'Kualitas ,kemasan<br>', 'Kemasahn ,harga ,garansi&nbsp;<br>', 'Harga kualitas ,jaminan, layanan purna jual&nbsp;<br>', 'Merek,kemasan ,jaminan,(garansi) pelayanan<br>', 'Garansi ,kualitas /merk ,nama daya beli konsumen&nbsp;<br>', 'Merek,kemasan ,jaminan,(garansi) pelayanan<br>'),
(272, 14, 'Produk kelompok ini biasanya dibeli konsumen setelah mereka membandingkan baik harga, kualitas maupun spesifikasi lainnya dari pedagang lainnya. Karakteristiknya antara lain adalah pembeli sangat mempertimbangkan penampilan fisik produk pelayanan purna jual, harga (price), gaya (style), dan tempat penjualan disebut….<br>', 'Heterogoneous shopping good<br>', 'Shopping products<br>', 'Special products<br>', 'Unsought good<br>', 'Impulse goods<br>', 'Shopping products<br>'),
(273, 14, 'Merupakan barang yang pada umumnya memiliki frekuensi pembelian tinggi (sering dibeli), dibutuhkan dalam waktu segera, contohnya antara lain sabun, pasta gigi disebut…<br>', 'Convenience goods<br>', 'New unsought products<br>', 'Homogeneus shopping goods<br>', 'Specially products shopping goods<br>', 'Products shopping consumer needs<br>', 'Convenience goods<br>'),
(274, 14, 'Penataan barang dagangan di toko, dengan memperhatikan unsur pengelompokkan jenis, kegunaan barang, dan keindahan agar tertarik untuk melihat dan memutuskan untuk membeli disebut . . . .<br>', 'Deficient product<br>', 'Solutary product<br>', 'Display product<br>', 'Pleasing product<br>', 'Products shopping consumer<br>', 'Display product<br>'),
(275, 14, 'Menempatkan barang dagangan di bagian Departement Store sebagai daya Tarik bagi konsumen setelah masuk ke dalam toko, misalnya pakaian yang digunakan oleh boneka model (menequin) seperti gambar disamping ini, disebut . . . .<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b83ceb25aca4d8aa2545292a9c81cf9b.PNG\" width=\"118\"><br></div>', 'Solary display<br>', 'Windows display<br>', 'Open product display<br>', 'Close produc display<br>', 'Architectural&nbsp; display<br>', 'Solary display<br>'),
(276, 14, 'Penempatan barang supermarket satu jenis berderet dari kiri ke kanan atau arah melebar dan merek barang harus terlihat dari depan, seperti gambar dibawah ini adalah penataan barang secara . . . .<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d9c5476233d905554748ec7292892b3b.PNG\" width=\"125\"><br></div>', 'Vertical<br>', 'Diagonal<br>', 'Merchandise<br>', 'Horizontal<br>', 'Semi diagonal<br>', 'Horizontal<br>'),
(277, 14, 'Paling awal yang harus diperhatikan dalam SOP display di swalayan untuk barang supermarket adalah penggunaan ruangan. Penggunaan ruangan harus disesuaikan dengan . . . .<br>', 'Harga produk<br>', 'Warna produk<br>', 'Mutu produk<br>', 'Besar-kecilnya produk<br>', 'Kategori produk dan ukuran produk<br>', 'Kategori produk dan ukuran produk<br>'),
(278, 5, 'Penyelenggaraan negara akan berjalan dengan baik jika penyelenggara negara&nbsp; mampu menjalankan fungsinya dengan penuh tanggung jawab, dilaksanakan secara efektif, efisien serta dilandasi oleh nilai-nilai Pancasila. Hal tersebut menunjukkan pentingnya nilai-nilai Pancasila menjadi landasan dalam praktik penyelenggaraan pemerintahan Negara dengan menjadi ....&nbsp;<br>', 'hukum dasar dalam praktik penyelenggaraan kekuasaan pemerintahan&nbsp;<br>', 'landasan filosofis dalam menjalankan kehidupan pemerintahan negara<br>', 'landasan filosofis bagi penguasa dalam&nbsp; mempertahankan kekuasaannya<br>', 'norma hukum yang mendasar dalam penyelenggaraan pemerintahan negara<br>', 'landasan filosofis dalam melakukan amandemen terhadap konstitusi Negara<br>', 'hukum dasar dalam praktik penyelenggaraan kekuasaan pemerintahan&nbsp;<br>'),
(279, 5, 'Sifat dari UUD Negara Kesatuan Republik Indonesia tahun 1945 adalah luwes dan fleksibel terutama batang tubuh yang sudah diamandemen. Dasar hukum amandemen UUD kita adalah…..<br>', 'Pasal 27 UUD 1945<br>', 'Pasal 28 UUD 1945<br>', 'Pasal 33 UUD 1945<br>', 'Pasal 35 UUD 1945<br>', 'Pasal 37 UUD 1945<br>', 'Pasal 37 UUD 1945<br>'),
(280, 5, 'Menurut Pasal 1 ayat 2 UUD Negara Kesatuan Republik Indonesia tahun 1945 sebelum diamandemen “ Kedaulatan berada di tangan rakyat dan sepenuhnya dilakukan…..”.<br>', 'Oleh MPR<br>', 'Menurut UUD<br>', 'Oleh Presiden<br>', 'Oleh DPR<br>', 'Oleh MA<br>', 'Oleh MPR<br>'),
(281, 5, 'Penegakan hak asasi manusia masih jauh dari harapan masyarakat. Hal ini disebabkan oleh ?<br>', 'Maraknya aksi demokrasi<br>', 'Ketegasan para penegak hukum&nbsp;<br>', 'Belum adanya undang-undang yang mengatur secara tegas<br>', 'Tingginya tingkat kesadaran masyarakat&nbsp;<br>', 'Masih adanya prilaku tidak adil dan diskriminatif<br>', 'Masih adanya prilaku tidak adil dan diskriminatif<br>'),
(282, 5, 'Suatu perasaan&nbsp; rakyat masyarakat, serta bangsa terhadap kondisi bangsa Indonesia dalam perjalanan hidupnya menuju cita-cita bangsa, yaitu masyarakat adil dan makmur berdasarkan pancasila dan UUD 1945 merupakan inplementasi dari. . .&nbsp;<br>', 'Paham kebangsaan<br>', 'Aliran kebangsaan<br>', 'Sifat Negara<br>', 'Paham kerakyatan<br>', 'Rasa kebangsaan<br>', 'Rasa kebangsaan<br>'),
(283, 5, 'Pasal-pasal dalam UUD 1945 yang mengatur hak dan sekaligus kewajiban warga negara Indonesia adalah pasal . . . . .<br>', '27 ayat (1) dan 30 ayat (1)<br>', '27 ayat (1) dan 30 ayat (2)<br>', '27 ayat (2) dan 30 ayat (1)<br>', '27 ayat (2) dan 30 ayat (2)<br>', '27 ayat (1) dan (2), 30 ayat (1) dan (2)&nbsp;<br>', '27 ayat (1) dan 30 ayat (1)<br>'),
(284, 5, 'Hukum yang mengatur hubungan&nbsp; hokum antara warga Negara satu Negara dengan warga Negara Negara lain dalam satu hubungan internasional, dinamakan………..<br>', 'Hukum perdata internasional<br>', 'Hukum internasional umum<br>', 'Hukum internasional khusus<br>', 'Hukum public internasional<br>', 'Hukum Internasional regional<br>', 'Hukum perdata internasional<br>'),
(285, 5, 'Hukum nasional merupakan hasil pengklasifikasian hukum berdasar …<br>', 'Bentuknya<br>', 'Funginya<br>', 'Sumbernya<br>', 'Tempat berlakunya<br>', 'Luas berlakunya', 'Tempat berlakunya<br>'),
(286, 5, 'Pengakuan dari Negara lain sangat diperlukan oleh suatu Negara yang merdeka&nbsp; &nbsp;dan berdaulat untuk.&nbsp; . .<br>', 'Mempertahankan jati diri dan adat istiadat masyarakat<br>', 'Keamanan dan pertahanan Negara<br>', 'Membangun citra yang baik terhadap Negara tetangga<br>', 'Mematuhi keinginan perserikatan bangsa-bangsa ( PBB )<br>', 'Syarat sahnya suatu Negara<br>', 'Keamanan dan pertahanan Negara<br>'),
(287, 5, 'Keikut sertaan bangsa Indonesia dalam upaya ikut melaksanakan ketertiban dunia seperti yang tertuang dalam Pembukaan UUD NKRI adalah dengan cara …<br>', 'Menjadi anggota PBB<br>', 'Bekerja sama dengan Negara tetangga<br>', 'Ikut serta dalam pengiriman pasukan perdamaian ke daerah konplik<br>', 'Memberikan dukungan Negara yang ingin merdeka<br>', 'Melakukan lobi politik dengan negara adidaya<br>', 'Ikut serta dalam pengiriman pasukan perdamaian ke daerah konplik<br>'),
(288, 5, 'Setiap warga negara mempunyai hak dan kewajiban yang sama dalam usaha pembelaan negara, hak dan kewajiban untuk membela negara termuat di dalam pasal …<br>', '28 A UUD 1945<br>', '29 UUD 1945<br>', '30 UUD 1945<br>', '31 UUD 1945<br>', '32 UUD 1945<br>', '29 UUD 1945<br>'),
(289, 5, 'Bangsa Indonesia mengakui persamaan harkat dan martabat manusia. Hal ini selaras dengan nilai-nilai Pancasila, khususnya………….<br>', 'Pertama&nbsp;<br>', 'Kedua&nbsp;<br>', 'Ketiga&nbsp;<br>', 'Keempat&nbsp;<br>', 'kelima<br>', 'Keempat&nbsp;<br>'),
(290, 5, 'Dasar hukum yang diharapkan dapat melindungi hak asasi manusia terhadap pelanggan HAM berat adalah ?<br>', 'Undang-undang nomor 25 tahun 2000<br>', 'Undang-undang nomor 26 tahun 2000<br>', 'Undang-undang nomor 23 tahun 2001<span style=\"white-space:pre\">		</span><br>', 'Undang-undang nomor 24 tahun 1999<br>', 'Undang-undang nomor 22 tahun 1999<br>', 'Undang-undang nomor 23 tahun 2001<span style=\"white-space:pre\">		</span><br>'),
(291, 5, 'Manakah di bawah ini yang merupakan faktor penghambat supremasi hukum dalam penegakkan HAM di Indonesia ?<br>', 'Belum adanya undang-undang Nasional yang mengatur tentang HAM.<br>', 'Belum tersedianya Instrumen HAM dalam ketetapan MPR RI.<br>', 'Belum adanya departemen dalam satu kabinet yang mengurusi secara Khusus tentang HAM.<br>', 'Belum terbentuknya hukum yang menghormati HAM, baik oleh para pejabat, paraktisi hukum, maupun masyarakat.<br>', 'Adanya kekosongan jabatan jaksa angung.<br>', 'Belum terbentuknya hukum yang menghormati HAM, baik oleh para pejabat, paraktisi hukum, maupun masyarakat.<br>'),
(292, 5, 'Proses penegakan hukum dilakukan dalam rangka pelaksanaan norma hukum sebagai acuan perilaku bagi seluruh warga negara tanpa kecuali dalam kehidupan bermasyarakat, berbangsa dan bernegara. Dengan demikian pentingnya persamaan di dalam hukum bagi warga negara Indonesia adalah ....<br>', 'terciptanya keadilan, ketertiban&nbsp; dan kepastian hukum dalam masyarakat<br>', 'menjamin terciptanya keadilan hukum bagi para penguasa pemerintahan<br>', 'meminimalisir pertentangan yang terjadi antarindividu dalam masyarakat&nbsp;<br>', 'membantu aparat penegak hukum dalam menciptakan ketertiban nasional<br>', 'melindungi segenap bangsa Indonesia dan seluruh tumpah darah Indonesia<br>', 'terciptanya keadilan, ketertiban&nbsp; dan kepastian hukum dalam masyarakat<br>'),
(293, 5, 'Pengertian semangat kebangsaan atau Nasionalisme merupakan perpaduan dari dua aspek yaitu. . .&nbsp;<br>', 'Rasa kebangsaan dan nilai kemanusiaan<br>', 'Rasa kebangsaan dan paham kebangsaan<br>', 'Paham kebangsaan dan rasa kesetiakawanan sosial<br>', 'Rasa kemanusiaan dan paham kerakyatan<br>', 'Rasa cinta tanah air dan rasa memiliki<br>', 'Rasa cinta tanah air dan rasa memiliki<br>'),
(294, 5, 'Dengan masuknya berbagai pengaruh dari negara lain yang dikhawatirkan dapat membahayakan budaya bangsa, maka sikap yang harus kita lakukan yaitu …..<br>', 'Menutup arus informasi dan komunikasi.<br>', 'Melarang keluarga bepergian ke luar negeri.<br>', 'Menerimanya dengan penuh selektif.<br>', 'Melarang pembelian produk luar negeri.<br>', 'Melarang orang asing masuk ke Indonesia.<br>', 'Menerimanya dengan penuh selektif.<br>'),
(295, 5, 'Prinsip-prinsip dasar kehidupan demokrasi adalah penting untuk mewujudkan kehidupan bernegara yang konstitusional. Berikut ini yang merupakan prinsip-prinsip dasar kehidupan demokrasi yaitu …..<br>', 'Pemerintahan berdasarkan kekuasaan absolut.<br>', 'Peranan media massa yang terbatas.<br>', 'Sistem peradilan yang berpihak pada kekuasaan.<br>', 'Adanya penyelenggaraan pemilu yang demokratis.<br>', 'Kurangnya pendidikan demokrasi di sekolah.<br>', 'Adanya penyelenggaraan pemilu yang demokratis.<br>'),
(296, 5, 'Perkembangan dan kemajuan IPTEK sangat mendukung upaya ketergantungan di berbagai aspek kehidupan global. Namun ada dampak negatif yang harus diwaspadai yaitu …..<br>', 'Saling bekerja sama.<br>', 'Dapat memanfaatkan waktu&nbsp;<br>', 'Hidup teratur.<br>', 'Berdisiplin.<br>', 'Bersikap individualis.<br>', 'Dapat memanfaatkan waktu&nbsp;<br>'),
(297, 5, 'Sistem pemerintahan dimana menteri-menteri tidak bertanggung jawab kepada Dewan Perwakilan Rakyat atau parlemen tetapi kepada presiden disebut .....<br>', 'Parlementer.<br>', 'Presidensiil.<br>', 'Republik.<br>', 'Monarchi.<br>', 'Demokrasi.<br>', 'Presidensiil.<br>'),
(298, 5, 'Kepolisian&nbsp; Republik Indonesia sebagai lembaga penegak hkum berperan dalam memelihara keamanan dan ketertiban masyarakat. Berikut contoh peran Kepolisian dalam menjamin keadilan dan kedamaian dalam masyarakat yaitu ….<br>', 'memberi usulan atas pengangkatan pejabat kepolisian kepada DPR<br>', 'melakukan penindakan terhadap ormas yang mengkritisi pemerintah<br>', 'melakukan pengawasan terhadap pelaksanaan putusan para hakim&nbsp;<br>', 'memutuskan perselisihan mengenai sengketa hasil pemilihan umum<br>', 'melakukan penangkapan, penahanan, penggeledahan, dan penyitaan<br>', 'melakukan penindakan terhadap ormas yang mengkritisi pemerintah<br>'),
(299, 5, 'Hubungan internasional merupakan hubungan antarbangsa-bangsa di dunia yang bersifat dinamis dalam rangka menciptakan proses kerjasama internasional yang saling menguntungkan sehingga berdampak pada pencapaian tujuan nasional. Alasan yang melatar belakangi pemerintah Indonesia menerapkan politik luar negeri yang bebas dan aktif dalam tata hubungan tersebut adalah ....<br>', 'mempertahankan kemerdekaan bangsa dan menjaga keutuhan negara Indonesia<br>', 'bangsa Indonesia ingin melindungi segenap dan seluruh tumpah darah Indonesia<br>', 'memperoleh barang dari luar negeri untuk meningkatkan kesejahteraan rakyatnya<br>', 'netralitas bangsa Indonesia dan keinginan berperan aktif dalam perdamaian dunia<br>', 'bangsa Indonesia ingin menjadi bangsa yang besar dan disegani bangsa lain di dunia<br>', 'bangsa Indonesia ingin menjadi bangsa yang besar dan disegani bangsa lain di dunia<br>'),
(300, 5, 'Perlindungan dan penegakan hukum merupakan upaya yang dilakukan dalam rangka pengamanan, pengawasan dan pemenuhan kesejahteraan hidup sesuai dengan hak-hak asasi manusia. Perlindungan dan penegakan hukum tersebut sangat penting agar ....<br>', 'kepastian dan ketertiban hukum dalam kehidupan di masyarakat<br>', 'menjadikan hukum sebagai alat kekuasaan untuk para penguasa negara<br>', 'meningkatkan peran dan partisipasi masyarakat dalam penegakan hukum<br>', 'terciptanya persamaan dimata hukum antarwarga masyarakat&nbsp; yang homogen<br>', 'terwujudnya kerjasama yang baik antara masyarakat dengan aparat penegak hukum<br>', 'terciptanya persamaan dimata hukum antarwarga masyarakat&nbsp; yang homogen<br>'),
(301, 5, 'Setelah mengalami perubahan yang kedua (amandemen 2), pada masa reformasi pemerintahan yang awalnya terpusat (sentralisasi) pada masa orba berubah menjadi disentralisi. Hal ini sesuai dengan pasal …. UUD 1945<br>', '18 ayat 1<br>', '18 ayat 2<br>', '18 ayat 3<br>', '18 ayat 4<br>', '18 ayat 5<br>', '18 ayat 1<br>'),
(302, 5, 'Gerakan reformasi menuntut terwujudnya pemerintahan yang bersih dan demokratis . pemerintahan yang bersih adalah……..<br>', 'pemerintahan yang tidak sewenang-wenang kepada rakyat<br>', 'pemerintahan yang bebas dari korupsi, kolusi dan nepotisme<br>', 'menjamin hak-hak asasi manusia<br>', 'melaksanakan pancasila secara murni dan konsekwen<br>', 'melaksanakan pembangunan disegala bidang<br>', 'pemerintahan yang tidak sewenang-wenang kepada rakyat<br>'),
(303, 5, 'Pancasila sebagai dasar negara secara yuridis formal konstitusional tercantum dalam pembukaan UUD 1945. Hal ini merupakan fungsi Pancasila sebagai …..<br>', 'Ideologi terbuka.<br>', 'Sumber hukum.<br>', 'Alat pemersatu bangsa.<br>', 'Kepribadian bangsa.<br>', 'Cita-cita bangsa<br>', 'Kepribadian bangsa.<br>'),
(304, 5, '<div>Perhatikan beberapa situasi dan kondisi berikut !</div><div>(1)<span style=\"white-space:pre\">	</span>Timbulnya&nbsp; kesenjangan&nbsp; sosial yang tajam akibat dari adanya persaingan bebas&nbsp;</div><div>(2)<span style=\"white-space:pre\">	</span>Penggunaan pengerahan massa untuk&nbsp; menumbangkan suatu pemerintahan yang sah&nbsp;&nbsp;</div><div>(3)<span style=\"white-space:pre\">	</span>Munculnya gejala westernisasi, yaitu gaya hidup yang berorientasi kepada budaya barat&nbsp;</div><div>(4)<span style=\"white-space:pre\">	</span>Menggalang kekuatan politik untuk melemahkan kekuasaan pemerintah yang berkuasa</div><div>(5)<span style=\"white-space:pre\">	</span>Pola perjuangan tidak bersenjata kelompok separatis yang ditempuh untuk menarik simpati masyarakat internasional</div><div><span style=\"white-space:pre\">	</span>Berdasarkan uraian beberapa kondisi diatas yang merupakan kasus ancaman terhadap negara di bidang politik ditandai oleh nomor ....</div>', '(1), (2) dan (3)<br>', '(1), (3) dan (5)<br>', '(2), (3) dan (4)<br>', '(2), (4) dan (5)<br>', '(3), (4) dan (5)<br>', '(1), (3) dan (5)<br>'),
(305, 5, '<div>Perhatikan beberapa aspek wawasan nusantara berikut!</div><div>(1)<span style=\"white-space:pre\">	</span>Letak dan bentuk geografis wilayah Indonesia</div><div>(2)<span style=\"white-space:pre\">	</span>Keadaan dan kemampuan penduduk bangsa Indonesia</div><div>(3)<span style=\"white-space:pre\">	</span>Keadaan dan kekayaan alam yang dimiliki bangsa Indonesia</div><div>(4)<span style=\"white-space:pre\">	</span>Sistem politik yang sangat menentukan kehidupan politik negara&nbsp;</div><div>(5)<span style=\"white-space:pre\">	</span>Ideologi sebagai perekat pemersatu yang ditanamkan seluruh WN</div><div>(6)<span style=\"white-space:pre\">	</span>Kondisi dinamika dalam kehidupan pertahanan dan keamanan bangsa Indonesia&nbsp;</div><div><span style=\"white-space:pre\">	</span>Berdasarkan aspek wawasan nusantara di atas yang merupakan aspek alamiah wawasan nusantara ditandai oleh nomor ....</div>', '(1), (2) dan (3)<br>', '(1), (3) dan (5)<br>', '(2), (4) dan (6)<br>', '(3), (4) dan (5)<br>', '(4), (5) dan (6)<br>', '(3), (4) dan (5)<br>'),
(306, 5, 'Komitmen terhadap persatuan dan kesatuan bangsa Indonesia merupakan proses&nbsp; dinamis yang tumbuh dari unsur-unsur sosial budaya masyarakat Indonesia yang beragam yang mencerminkan kebhinnekaan bangsa Indonesia. Contoh perilaku yang mencerminkan komitmen tersebut adalah ....<br>', 'bersikap mengutamakan kebersihan lingkungan di sekitar lingkungan tempat tinggal<br>', 'bekerjasama dalam segala bidang kehidupan dengan sesama suku, agama, dan daerah<br>', 'membantu korban bencana alam ketika bencana tersebut terjadi di wilayah asalnya<br>', 'bergaul secara santun dan akrab dengan mengesampingkan perbedaan suku bangsa<br>', 'meningkatkan solidaritas dalam kegiatan yang berorientasi semangat kedaerahan<br>', 'bersikap mengutamakan kebersihan lingkungan di sekitar lingkungan tempat tinggal<br>'),
(307, 5, 'Salah satu penyebab timbulnya sengketa internasional adalah segi politis, yaitu berupa…..<br>', 'Pengaruh ideology<br>', 'Batas wilayah<br>', 'Faktor ekonomi<br>', 'Lingkungan hidup<br>', 'Kewarganegaraan<br>', 'Pengaruh ideology<br>'),
(308, 5, '.Nilai-nilai yang terkandung di dalam Pancasila tidak diragukan lagi karena merupakan filsafat bangsa, dasar negara, dan ideologi negara. Hal ini merupakan kedudukan Pancasila sebagai …..<br>', 'Paradigma pembangunan.<br>', 'Moral pembangunan.<br>', 'Perjanjian luhur bangsa.<br>', 'Sumber nilai.<br>', 'Dasar negara.<br>', 'Sumber nilai.<br>'),
(309, 5, 'Sebagai Negara kepulauan yang dikelilingi wilayah perairan, maka ditentukan batas-batas wilayah perairannya. Wilayah laut Indonesia yang disebut Zona Ekonomi Eklusif atau ZEE adalah…..<br>', '3 mil<br>', '12 mil<br>', '20 mil<br>', '200 mil<br>', '2000 mil<br>', '200 mil<br>'),
(310, 5, 'Perhatikan contoh peristiwa berikut? Tiba-tiba seorang ibu menyerobot lampu merah di traffic light dan hampir saja terjadi kecelakaan. Spontan seorang polisi mengejar pengendara tersebut dan diberhentikan kemudian diminta menunjukkan surat-surat kendaraan termasuk SIM dan ditunjukkan kesalahannya. Ternyata ibu tersebut adalah istrinya sendiri. Mohon maaf saya menilang anda karena telah melakukan kesalahan dalam berlalu lintas melanggar rambu- rambu dan membahayakan keselamatan diri sendiri dan orang lain, begitu polisi itu berkata. Dan si ibu itu hanya menunjukkan muka kecewa dan sedih tetapi tidak dapat berkata-kata. Dari kutipan peristiwa tersebut di atas menunjukkan ….&nbsp;<br>', 'Hukum tanpa pandang bulu.<br>', 'Keputusan hukum yang tidak manusiawi.<br>', 'Hukum itu bebas dan tetapi tidak mandiri.<br>', 'Hukum itu tidak adil karena telah menindak istri sendiri.<br>', 'Hukum adalah hukum harus mengesampingkan unsur yuridis.<br>', 'Hukum tanpa pandang bulu.<br>'),
(311, 5, 'Bangsa Indonesia adalah bangsamultikultural yang rawan terpecah belah. Dalam upaya mewujudkan negara Indonesia yang bersatu, integrasi harus dapat diwujudkan. Faktor-faktor yang dapat mendorong integrasi nasional adalah:<br>', 'Tidak menerima perbedaan dan melihatnya sebagai bagian dari kebudayaan asing.<br>', 'Sikap ramah dan gotong royong hanya dengan kelompoknya sendiri&nbsp;<br>', 'Sikap toleransi dan empati terhadap keragaman budaya yang ada di Indonesia.<br>', 'Perbedaan dalam unsur-unsur budaya seperti ekonomi, social, politik.<br>', 'Mau mencari unsur-unsur budaya asing yang sama dengan kebudayaan daerahnya<br>', 'Sikap toleransi dan empati terhadap keragaman budaya yang ada di Indonesia.<br>'),
(312, 5, 'Pengadilan yang sehari-hari memeriksa dan memutuskan perkara dalam tingkat pertama dari segala perkara perdata dan pidana untuk semua golongan penduduk&nbsp; adalah…..<br>', 'Pengadilan Tinggi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>', 'Pengadilan Negeri&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>', 'Pengadilan Militer<br>', 'Mahkaman Agung<br>', 'Pengadilan Tata Usaha Negara<br>', 'Pengadilan Negeri&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>'),
(313, 5, 'Proses pembukaan dan pengangkatan perwakilan diplomatik di antara kedua negara yang menjalin hubungan diplomatik melalui beberapa tahapan, salah satunya adalah….<br>', 'Mewakili negara pengirim di negara penerima<br>', 'Masing-masing pihak mengajukan permohonan persetujuan untuk menempatkan diplomat<br>', 'Menelaah dengan teliti setiap kejadian atau peristiwa di negara penerima<br>', 'Mewakili pemerintah negaranya<br>', 'Meningkatkan persahabatan<br>', 'Masing-masing pihak mengajukan permohonan persetujuan untuk menempatkan diplomat<br>'),
(314, 5, 'Diawal tahun 2017 Indonesia mendapat&nbsp; kunjungan pemimpin negara&nbsp; Arab Saudi yaitu Raja Salman. Kedatangan beliau tidak hanya ingin mengunjungi Indonesia tetapi ingin menjalin kerjasama di berbagai bidang terutama ekonomi. Kerjasama yang dilakukan oleh Indonesia dan Arab Saudi termasuk bentuk kerja sama...&nbsp;<br>', 'Kerjasama Internasional&nbsp;<br>', 'Kerjasama Multi Internasional<br>', 'Kerjasama&nbsp; Bilateral&nbsp;<br>', 'Kerjasama Multilateral<br>', 'Kerjasma fungsional.<br>', 'Kerjasama&nbsp; Bilateral&nbsp;<br>'),
(315, 5, 'Pada dasarnya perwakilan diplomatik dan perwakilan konsuler di luar negeri dalam menjalankan tugasnya memiliki kekebalan diplomatik. Hal ini menunjukkan bahwa pentingnya kekebalan diplomatik bagi korps perwakilan diplomatik dan perwakilan konsuler diluar negeri ....<br>', 'Untuk menjamin pelaksanaan tugas negara yang diwakili<br>', 'Eksistensi dan profesionalitas kebe-radaan negara di luar negeri<br>', 'Perwakilan diplomatik merupakan keberadaan negara di luar negeri<br>', 'Menjamin keselamatan para pejabat negara di luar negeri<br>', 'Menunjukan negara pada dasarnya keberadaannya mutlak di luar negeri<br>', 'Eksistensi dan profesionalitas kebe-radaan negara di luar negeri<br>'),
(316, 5, 'Pembagian&nbsp; &nbsp;kekuasaan negara baik kekuasaan eksekutif, legislatif maupun yudikatif diatur dalam&nbsp; konstitusi agar tidak terjadi tumpang tindih antara pembagian tugas dan wewenangnya. Meskipun demikian, antar lembaga negara sebagai pelaksana kekuasaan memiliki hubungan kerjasama dan mekanisme penyelesaian sengketa yang diatur dalam UUD Negara Republik Indonesia Tahun 1945. Berikut ini yang merupakan contoh kerjasama antara lembaga eksekutif dengan yudikatif yaitu Presiden ....<br>', 'mengajukan rancangan undang-undang dan dibahas menjadi undang-undang<br>', 'memberi grasi dan rehabilitasi yang dilaksanakan pada saat-saat tertentu<br>', 'mengangkat duta dan konsul untuk ditempatkan di negara lain&nbsp;<br>', 'memberi gelar, tanda jasa dan lain-lain tanda kehormatan&nbsp;<br>', 'menerima penempatan duta dari negara lain<br>', 'mengajukan rancangan undang-undang dan dibahas menjadi undang-undang<br>'),
(317, 5, 'Seorang diplomat mempunyai fungsi diplomatic. Implementasi fungsi diplomatic yang benar yaitu..<br>', 'Pemerintah Indonesia menempatkan para diplomatnya untuk menjadi spionase di negara penerima<br>', 'Pemerintah Indonesia menerima laporan dari diplomat mengenai rahasia negara Inggris<br>', 'Para diplomat di Negara Iran diminta kembali ke Indonesia sampai keadaan Iran membaik<br>', 'Duta besar Indonesia untuk Mesir menerima kewarganegaraan Mesir<br>', 'Duta besar Indonesia atas nama pemerintah Indonesia menghadiri acara hariulang tahun Negara Kanada<br>', 'Duta besar Indonesia atas nama pemerintah Indonesia menghadiri acara hariulang tahun Negara Kanada<br>'),
(318, 5, 'Perwakilan diplomatic tidak dapat di Negara tempat ia diakreditasikan. Hal ini berlaku baik kasus pidana ataupun kasus perdata. Negara penerima bias mengembalikan perwakilan diplomatic sebagai bentuk kekecewaan yang diterima oleh Negara penerima. Berkenaan dengan tidak dapat dihukumnya perwakilan diplomatic tersebut karena …<br>', 'Pemerintah Negara pengirim dapat membantu kasusnya<br>', 'Diplomat mempunyai hak untuk tidak menanggapi putusan pengadilan<br>', 'Para diplomatic&nbsp; mempunyai hak imunitas<br>', 'Diplomatic tidak pernah melakukan kesalahan<br>', 'Para diplomatic mempunyai kuasa hokum yang terbaik<br>', 'Para diplomatic&nbsp; mempunyai hak imunitas<br>'),
(319, 5, 'Kewenangan pemerintah daerah berdasarkan UU No. 32 Tahun 2014 adalah ..<br>', 'Menjalankan urusan pemerntah pusat di daerah, kecuali urusan – urusan yang dijalankan oleh kantor – kantor departemen di daerah<br>', 'Menjlankan urusan pemerintahan konkuren yang diselenggarakan oleh pemerintah pusat<br>', 'Kepala daerah bertindak sebagai pemegang eksekutif pelaksana urusan&nbsp;<br>', 'Melaksanakan koordinasi antar jawatan- jawatan pemerintah pusat<br>', 'Urusan otonomi daerah dan pembantuan yang dilaksanakannya dan dipertanggungjawabkan oleh kepala daerah kepada DPRD&nbsp;<br>', 'Kepala daerah bertindak sebagai pemegang eksekutif pelaksana urusan&nbsp;<br>'),
(320, 5, 'Dewan Perwakilan Rakyat Derah Gotong Royong merupakan salah satu susunan pemerintah daerah berdasarkan….<br>', 'Dikret presiden 5 Juli 1959<br>', 'UU No. 18 Tahun 1965<br>', 'UU No. 22 Tahun 1948<br>', 'UU No. 1 Tahun 1957<br>', 'Penetapan Presiden No. 6 Tahun 1959<br>', 'Penetapan Presiden No. 6 Tahun 1959<br>'),
(321, 5, 'Perhatiakan 1.Menyusun perencanaan dan tata ruang daerah<div>2.Mengembangkan sumber daya produktif di daerah</div><div>3.Mengatur dan mengurus sendiri urusan pemerintahannnya</div><div>4.Memilih pimpinan daerah</div><div>5.Mengelola aparatur daerah</div>Hak pemerintah daerah ditunjukan pada nomer …pernyataan berikut ini<br>', '1, 2 dan 3<br>', '1, 2 dan 4<br>', '2, 3 dan 4<br>', '2, 3 dan 5<br>', '3, 4 dan 5<br>', '2, 3 dan 5<br>'),
(322, 5, 'Hak pemerintah daerah selaku pengelola otonnomi daerah dapat dilihat dalam pengelolaan..<br>', 'Menetapkan retribusi parkir untuk kendaraan bermotor<br>', 'Menyediakan fasilitas kesehatan bagi masyarakat<br>', 'Menyelenggarakan pelatihan menjahit untuk ibu rumah tangga<br>', 'Membuat susunan tata ruang darah<br>', 'Melestarikan kesenia daerah<br>', 'Menetapkan retribusi parkir untuk kendaraan bermotor<br>'),
(323, 5, 'MPR berdasarkan UUD 1945 sebelum diamandemen memiliki kedudukan …<br>', 'Sejajajr dengan lembaga tinggi Negara lainnya<br>', 'Di atas lembaga tinggi Negara lainnya<br>', 'Di bawah lembaga tinggi Negara lainnya<br>', 'Di tengah-tengah lembaga tinggi Negara lainnya<br>', 'Di atas UUD 1945 karena dapat mengamandemen UUD 1945<br>', 'Di atas lembaga tinggi Negara lainnya<br>'),
(324, 5, 'Lembaga Negara yang mempunyai fungsi legislasi, fungsi anggaran dan fungsi pengawasan adalah lembaga …<br>', 'Presiden<br>', 'BPK<br>', 'DPD<br>', 'MPR<br>', 'DPR<br>', 'DPR<br>'),
(325, 5, 'Dalam perundingan Komisi Meja Bundar Belanda mengakui Indonesia sebagai Republik Indonesia Serikat. Atas kesepakatn itu pada tanggal 27 Desember 1949 bentuk Negara Republik Indonesia Serikat memberlakukan konstitusi …<br>', 'UUD 1945<br>', 'Konstitusi RIS<br>', 'UUDS 1950<br>', 'UUD 1945 yang telah diamandemen<br>', 'UU Negara Federal<br>', 'Konstitusi RIS<br>'),
(326, 5, 'Pada bbulan Fenruari 2015 perintah Indonesia mengeksekusi 2 warga Negara Autralia. Sebelum 2 warga Negara asing tersebut dieksekusi, pemerintah Australia mengancam akan memboikot pariwisata Indonesia termasuk Bali. Terhadap sikap pemerintah Australia pemerintah Indonesia seharusnya …<br>', 'Tidak perlu khawatir terhadap ancaman tersebut<br>', 'Meminta maaf kepada pemerintah Australia<br>', 'Membalas ancaman terhadap pemerintah Australia<br>', 'Menghentikan hubungan kerjasama<br>', 'Menarik duta besar<br>', 'Tidak perlu khawatir terhadap ancaman tersebut<br>'),
(327, 5, 'Pada tahun 1822 hingga tahun 1889 Brasil memiliki dua puluh enam Negara bagian dan satu distrik. Berdasarkan keterangan tersebut, Brasil termasuk dalam bentuk Negara …<br>', 'Uni<br>', 'Koloni<br>', 'Federasi<br>', 'Mandate<br>', 'Kesatuan<br>', 'Federasi<br>'),
(328, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/08d091f2aba3e36c21cc1ac0fce1d930.PNG\" width=\"194\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/364810b92927544fa2536633b2481c40.PNG\" width=\"21\"><br>', '<div>1</div><div><br></div>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/658b6842d5094c7854d1bdcce20eb7e0.PNG\" width=\"16\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/192e7ecd10866583327bd34ca6a97566.PNG\" width=\"28\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/83b762174bfce972933238d68b13088e.PNG\" width=\"21\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/364810b92927544fa2536633b2481c40.PNG\" width=\"21\"><br>'),
(329, 3, '			<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/3f2e828aa4714b70525c0fd2e8f3b969.PNG\" width=\"228\"><br>		', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/7755137522220942347aa33a0a6791a6.PNG\" width=\"40\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a9598b5697373c30959ecf4b003502b1.PNG\" width=\"58\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/f3f56aa7635f76d18881c7836c6288f9.PNG\" width=\"47\"><br>', '-1<br>', '<div>-2</div>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a9598b5697373c30959ecf4b003502b1.PNG\" width=\"58\"><br>'),
(330, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/260f4108a1db5a226601f2c431cdb5f4.PNG\" width=\"236\"><br>', '4<br>', '2<br>', '1<br>', '-1<br>', '-2<br>', '4<br>'),
(331, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4b5ccaf3d5fad7516cfb69b09c0bd58a.PNG\" width=\"195\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/081aaaf404f68b8969a4181039ee2058.PNG\" width=\"19\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/04d5d73cbfa1f61f12bfed1410ff5c72.PNG\" width=\"23\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a4f0c413e71900105860119ad676d693.PNG\" width=\"23\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b8fb3e59e1481bdf6ff67fb00e4012ac.PNG\" width=\"23\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/ef452f4cafb31ea2072db7d738d8eada.PNG\" width=\"29\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b8fb3e59e1481bdf6ff67fb00e4012ac.PNG\" width=\"23\"><br>'),
(332, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/5c82ccf9379fc08693910db6a362631d.PNG\" width=\"516\"><br>', '(-4, 0), (-6,0, dan (0, -24)<br>', '(-4, 0), (6,0, dan (0, 24)<br>', '(-4, 0), (6,0, dan (0, -24)<br>', '(4, 0), (-6,0, dan (0, -24)<br>', '(4, 0), (6,0, dan (0, 24)<br>', '(-4, 0), (6,0, dan (0, -24)<br>'),
(333, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b08034c90a580a15ce44649845be1726.PNG\" width=\"376\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/63cadb02109ac8887aead9629fbb9d19.PNG\" width=\"173\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/87b8b8b605081010d2eaaaa39c479e91.PNG\" width=\"169\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/06808d4d18688f140138931dc78802d6.PNG\" width=\"164\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b1346669f09cdd5647e197cfa4b3a1e0.PNG\" width=\"182\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4a1a4591d90ba2b5c1dd1222838d56e2.PNG\" width=\"194\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/06808d4d18688f140138931dc78802d6.PNG\" width=\"164\"><br>'),
(334, 3, 'Grafik sebuah fungsi kuadrat melalui titik (-1, -24). Grafik tersebut memotong sumbu X di titik (-7,0) dan (p + 3, p). Rumus fungsi kuadrat tersebut adalah …<br>', 'f(x) = x2 – 2x – 21<br>', 'f(x) = x2 + 2x&nbsp; + 21<br>', 'f(x) = x2 + 4x – 21<br>', 'f(x) = 2x2 + 4x -&nbsp; 21<br>', 'f(x) = 2x2 + 4x + 21<br>', 'f(x) = x2 + 4x – 21<br>'),
(335, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/25b7e3314d1c8d6ed8905f2c4a7ae740.PNG\" width=\"551\"><br>', '-3<span style=\"white-space:pre\">	</span><br>', '-1<br>', '3<br>', '5<br>', '7<br>', '3<br>'),
(336, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/74daffe9dd9ee473f6d07301027f6108.PNG\" width=\"352\"><br>', '(-12)<br>', '(0)<br>', '(-4)<br>', '(-8 -2 6)<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/fe0b8dcda5b8a78430d38546277b3c44.PNG\" width=\"49\"><br>', '(-4)<br>'),
(337, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/53a723f02206bd79c0ead39e4d074dc0.PNG\" width=\"326\"><br>', '3<br>', '2<br>', '1<br>', '-2<br>', '-3<br>', '3<br>');
INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(338, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/0383f97e5d8f60d6e4a2bfc145d13d61.PNG\" width=\"551\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/5bd9ec20821040ff54519a1c08f73436.PNG\" width=\"74\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/402497824f9b78fdd197e49719ed3ccd.PNG\" width=\"78\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/1f259d0d55637a26907328a935c9a639.PNG\" width=\"78\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/f74f7d614dee35fcdda9fbed8a7aa5f2.PNG\" width=\"76\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b4b67b3113511b38893c72e2b603f1fd.PNG\" width=\"72\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/1f259d0d55637a26907328a935c9a639.PNG\" width=\"78\"><br>'),
(339, 3, '			<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/720bcd7d7089c84ff71f0a9b9d9ddb05.PNG\" width=\"303\"><br>		', '18<br>', '14<br>', '11<br>', '9<br>', '7<br>', '9<br>'),
(340, 3, 'Titik A(5,-2) ditranslasi oleh&nbsp; T (-3, 1). Tentukan koordinat bayangan titik A tersebut!<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/8b16b4c7acd41c2359d85d1f492b42d2.PNG\" width=\"46\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/1cc27f7c4ae64097dc2ddf225ab2d775.PNG\" width=\"42\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/799d15c0a5d53db6df9272757e258c12.PNG\" width=\"43\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/819d1c66e9d0eb4a389d80304e5ccabc.PNG\" width=\"49\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/8ad163cca10c22e91e05b15b36600e04.PNG\" width=\"45\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/819d1c66e9d0eb4a389d80304e5ccabc.PNG\" width=\"49\"><br>'),
(341, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/975d2154b14fdabd8f5c8a985701d8be.PNG\" width=\"510\"><br>', 'A(1, 9)<br>', 'A(1, 1)<br>', 'A(-9, 1)<br>', 'A(-1, -9)<br>', 'A(9, 1)<br>', 'A(-1, -9)<br>'),
(342, 3, 'Bayangan garis 2x – y = 5 apabila dicerminkan terhadap garis y = -x adalah ….<br>', 'x – 2y + 5 = 0<br>', 'x + 2y – 5 = 0<br>', 'x – 2y – 5 = 0<br>', '2x – 2y – 5 = 0<br>', '2x – 2y + 5 = 0<br>', 'x – 2y – 5 = 0<br>'),
(343, 3, 'Sebuah gedung pertunjukkan berkapasitas 350 kursi. Kursi tersebut terdiri atas kursi VIP dan kursi biasa. Tarif menyaksikan pertunjukkan dan duduk dikursi VIP Rp.50.000,00, sedangkan tarif menyaksikan pertunjukkan dan duduk dikursi biasa Rp.30.000,00. Jika suatu hari semua kursi diduduki penonton dan diperoleh pemasukan Rp. 13.000.000,00 banyak kursi VIP dan kursi biasa berturut-turut adalah … buah.<br>', '125 dan 225<br>', '150 dan 200<br>', '200 dan 150<br>', '225 dan 125<br>', '250 dan 100<br>', '125 dan 225<br>'),
(344, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/8b99b1fcea383223f7ab325a7df1d2a6.PNG\" width=\"554\"><br>', '58<br>', '48<br>', '42<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/e7e8e291651c6bb0eedf2989b06e7163.PNG\" width=\"25\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/14b7c70da2c9340d2dc4dcc349b9aa46.PNG\" width=\"18\"><br>', '58<br>'),
(345, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/88e65f0c9231d4789e558d3376d71640.PNG\" width=\"553\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/c07e603d4ac9b92dcf1c46ae3c7d5330.PNG\" width=\"112\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/40543612d38e7aa0e574ce9eacde3639.PNG\" width=\"105\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b19c5f2b64d6d81e59fbed969d4d58ff.PNG\" width=\"99\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d2f2ad272b298d3aa3c419d1b65a387d.PNG\" width=\"101\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/c327a27cbba47bc1c64b790804c7d138.PNG\" width=\"100\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/40543612d38e7aa0e574ce9eacde3639.PNG\" width=\"105\"><br>'),
(346, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/9ecb35e85496af8ae25459f99acbd802.PNG\" width=\"429\"><br>', '-1<br>', '1<br>', '2<br>', '3<br>', '4<br>', '4<br>'),
(347, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/0b872037b0c007d6b0e8a31ba8dff876.PNG\" width=\"503\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/c104f819a89514f54c4115f19d42e9c6.PNG\" width=\"25\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/25c55b45c3dd57bccd76e8c10a81bf73.PNG\" width=\"20\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/863dd23baeb0b573188f23ed72c700ee.PNG\" width=\"21\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/812a5fb26d6b268ca0b6be749f11d36b.PNG\" width=\"13\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/badd0cab214b3432204bef0919ab2cfb.PNG\" width=\"29\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/812a5fb26d6b268ca0b6be749f11d36b.PNG\" width=\"13\"><br>'),
(348, 3, 'Bakteri strain A berkembang biak menjadi dua kali lipat setiap 15 menit. Pada waktu 60 menit pertama banyak bakteri ada 400. Banyak bakteri pada waktu 90 menit pertama adalah …&nbsp;<br>', '800<br>', '1.000<br>', '1.200<br>', '1.600<br>', '2.040<br>', '1.600<br>'),
(349, 3, '<div>Perhatikan Gambar berikut.<br></div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/6c8a9072ddc4079f269a9d12c9ed0968.PNG\" width=\"182\"><br><div>Nilai minimum f(x,y) = 3x + 2y pada daerah yang diarsir adalah …<br></div>', '8<br>', '10<br>', '11<br>', '15<br>', '16<br>', '11<br>'),
(350, 3, 'Seorang peternak memiliki tidak lebih dari 10 kandang untuk memelihara ayam dan itik. Setiap kandang dapat menampung ayam sebanyak 36 ekor atau menampung itik sebanyak 24 ekor. Jumlah ternak yang akan dipelihara tidak lebih dari 300 ekor. Jika banyak kandang yang berisi titik y&nbsp; buah, sistem pertidaksamaan dari permasalahan tersebut adalah …<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/6c76280b363b9df5cbdde9bafb1ab8c0.PNG\" width=\"251\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a2e724d26418fa601fcfc95d4a4bf7b2.PNG\" width=\"246\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/5567322b1dbc28bd7a50ba8f399a51df.PNG\" width=\"243\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/cea86b9d58727640a99d50ab681f5b5e.PNG\" width=\"242\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/0ee07655e8e0437c82ace801bc268b87.PNG\" width=\"253\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/5567322b1dbc28bd7a50ba8f399a51df.PNG\" width=\"243\"><br>'),
(351, 3, 'Diberikan system pertidaksamaan berikut.<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/07ff393e5385065ea68e052f30bba573.PNG\" width=\"107\"><br></div><div><div>Grafik daerah penyelesaian sistem pertidaksamaan tersebut ditunjukkan oleh…</div></div><div><br></div>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/3f8b5501ae02215344c4e93a1011f310.PNG\" width=\"130\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/195a82b72ed9025364d0514c39dace00.PNG\" width=\"134\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/7dadc4417abf4ec0337800d93596c015.PNG\" width=\"129\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/63d1d37918501949101c491918957f88.PNG\" width=\"124\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/96ebba967622b6d3200718d9717d7204.PNG\" width=\"128\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/7dadc4417abf4ec0337800d93596c015.PNG\" width=\"129\"><br>'),
(352, 3, 'Sebuah butik memiliki4 m kain satin dan 5 m kain prada. Dari bahan tersebut akan dibuat dua baju pesta. Baju pesta I memerlukan 2 m kain satin dan 1 m kain prada. Baju pesta II memerlukan 1 m kain satin dan 2 m kain prada. Harga jual baju pesta I sebesar Rp. 1.500.000,00 dan baju pesta II sebesar Rp. 1.200.000,00. Hasil penjualan maksimum butik dari kedua jenis baju pesta&nbsp; tersebut adalah …<br>', 'Rp. 3.000.000,00<br>', 'Rp. 3.200.000,00<br>', 'Rp. 3.400.000,00<br>', 'Rp. 3.900.000,00<br>', '<br>', 'Rp. 3.900.000,00<br>'),
(353, 3, 'Titik K(-3, 2) dirotasikan dengan pusat (2, 1) sebesar 180o. Bayangan titik K adalah …<br>', 'K’(7, 0)<br>', 'K’(5, -1)<br>', 'K’(3, 2)<br>', 'K’(-1, 3)<br>', 'K’(-5, -4)<br>', 'K’(7, 0)<br>'),
(354, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/3d5730416326f0efb88dd811d9f595a3.PNG\" width=\"426\">', '3x + 2y = -7<br>', '3x + 2y = -5<br>', '3x + 2y = 3<br>', '3x + 2y = 5<br>', '3x + 2y = 7<br>', '3x + 2y = 5<br>'),
(355, 3, 'Titik L (2, -4) dicerminkan terhadap sumbu X, lalu didilatasikan dengan pusat (3, 0) dan skala 2. Bayangan akhir titik L adalah …<br>', '(5, 4)<br>', '(3, 8)<br>', '(1, 80)<br>', '(-1, 4)<br>', '(-3, -2)<br>', '(1, 80)<br>'),
(356, 3, 'Diagram berikut menunjukkan hasil perkebunan di suatu daerah.&nbsp;<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/f4a2b691f97cbd604dc85ba8aa1250ef.PNG\" width=\"156\"><br></div><div>Jika hasil perkebunan cengkih sebanyak 170 ton, hasil perkebunan selain kopi sebanyak … ton.<br></div>', '1.350<br>', '1.360<br>', '1.370<br>', '1.380<br>', '1.380<br>', '1.360<br>'),
(357, 3, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/3aa990b0554b95dfac3b90a0a6f68397.PNG\" width=\"237\"><br><div>Data nilai ulangan Matematika siswa kelas XII jurusan AKP disajikan dalam histogram di depan. Rata-rata nilai ulangan siswa adalah …<br></div>', '68<br>', '72<br>', '75<br>', '76<br>', '78<br>', '75<br>'),
(358, 3, '			Tabel berikut menyajikan data berat badan siswa kelas XII AKP-1.<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/7c4e342faccb80c348eac641e16881e4.PNG\" width=\"128\"><br></div><div>Modus berat badan siswa adalah … kg.&nbsp;<br></div>		', '53<br>', '53,6<br>', '54<br>', '54,2<br>', '55,5<br>', '55,5<br>'),
(359, 3, 'Histogram berikut menyajikan data tinggi badan sekelompok siswa.<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/bc4991ce9368dc48bc1dac51bc5e31b7.PNG\" width=\"220\"><br></div><div>Median data tinggi badan siswa adalah … cm.<br></div>', '155<br>', '155,75<br>', '156<br>', '156,50<br>', '157<br>', '157<br>'),
(360, 3, 'Diketahui table data berikut.<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/dd0c4a5bd905c7561edc57d2b5a64b0a.PNG\" width=\"133\"><br></div><div>Nilai kuartil atas data adalah …<br></div>', '25,83<br>', '26,50<br>', '27,83<br>', '28,4<br>', '29,00<br>', '27,83<br>'),
(361, 3, '			Diketahui data terurut (x+1), 7, 8,&nbsp; 2x, (3x-4), (2x+2). Jika jangkauan data sama dengan 6, simpangan rata-rata data adalah …<br>		', '1<br>', '1,25<br>', '1,5<br>', '2<br>', '2,1<br>', '2<br>'),
(362, 3, 'Ragam dari data 6, 6, 5, 7, 8, 8, 9, 7 adalah …<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/b415507e7dfbf7fdbe6308e7828e915a.PNG\" width=\"36\"><br>', '1,1<br>', '1,2<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/92861fed890cea7703c10fd56a0d9d91.PNG\" width=\"34\"><br>', '1,5<br>', '1,5<br>'),
(363, 3, 'Rata-rata berat 12 orang adalah 48 kg. dua orang bergabung dalam kelompok tersebut dan rata-rata berat badan menjadi 48,2 kg. rata-rata berat badan dua orang yang bergabung adalah … kg<br>', '49,4<br>', '49,2<br>', '49<br>', '48,6<br>', '48,4<br>', '49,4<br>'),
(364, 3, 'Rendi mempunyai 4 kaus, 2 kemeja, dan 3 celana. Jika Rendi akan memakai kemeja dan celana atau kaus dan celana, Rendi mempunyai pilihan sebanyak … cara<br>', '30<br>', '24<br>', '20<br>', '18<br>', '12<br>', '18<br>'),
(365, 3, 'Suatu organisasi mempunyai 20 anggota. Dari 20 anggota tersebut akan dibentuk pengurus organisasi yang terdiri atas ketua, wakil ketua, dan sekretaris. Banyak kemungkinan susunan pengurus yang dapat dibentuk ada …<br>', '5.000<br>', '6.040<br>', '6.840<br>', '7.000<br>', '7.468<br>', '6.840<br>'),
(366, 3, 'Sebuah kelompok seni tari terdiri atas 5 pria dan 5 wanita. Kelompok ini akan mengirimkan&nbsp; 3 pria dan dan 2 wanita untuk mengikuti festival. Banyak cara yang dapat dilakukan untuk memilih 5 wakil jika seseorang wakil wanita sudah pasti dipilih ada … cara<br>', '20<br>', '30<br>', '40<br>', '50<br>', '<div>60</div>', '40<br>'),
(367, 3, 'Dua dadu di lempar bersama-sama. Peluang muncul jumlah mata dadu 6 atau mata dadu kembar adalah …<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/2cd23f970ef73730406687b7cc120816.PNG\" width=\"29\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4dc5fe89d17ae11a1c8355779b6501b4.PNG\" width=\"27\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/ba377838d434e48aa9844ebabf0f9602.PNG\" width=\"26\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/25decb6d601f57d6aa93685800149963.PNG\" width=\"35\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/aac69a8f2544c9ded0b1ebc3d88b23b3.PNG\" width=\"30\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/4dc5fe89d17ae11a1c8355779b6501b4.PNG\" width=\"27\"><br>'),
(368, 16, '<img src=\"http://localhost/AppUBK/admin/./assets/unggah/c987ce8e0f72bbc6f1ce6dca755e75a9.PNG\" width=\"265\"><br><div>Kalimat berikut ini yang sesuai untuk menyempurnakan firman Allah swt. tersebut adalah….&nbsp; &nbsp;<br></div>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/d3beaf791873b2ec3636d924bba54128.PNG\" width=\"40\"><br>', '<br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a504d94dddda98f9f529c8ce26b400c2.PNG\" width=\"46\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/70580493ed3458ce5ecb390690a9691c.PNG\" width=\"35\"><br>', '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/1b1a95cf4280513211d66b8ea2daf131.PNG\" width=\"53\"><br>', '<br>'),
(369, 16, '<img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/93d7982a0f50bfd1cffe35b1e1cf0043.PNG\" width=\"429\"><br><div>Sikap yang mencerminkan kandungan Q.S. Al-Hujurat : 10 tersebut adalah….<br></div>', 'Tidak mengganggu orang lain yang berbeda agama dan keyakinan dengan kita<br>', 'Berusaha menjadi penengah yang adil ketika terjadi pertikaian<br>', 'Rajin melakukan penelitian<br>', 'Beribadah kepada Allah swt. dengan penuh keikhlasan, tanpa menyekutukannya dengan sesuatu apapun<br>', 'Selalu bangkit kesadarannya bahwa segala sesuatu yang ada di muka bumi ini, berasal dari Allah swt. dan akan kembali kepadaNya pada saat yang telah ditentukan-Nya<br>', 'Berusaha menjadi penengah yang adil ketika terjadi pertikaian<br>'),
(370, 16, 'Perhatikan tabel Q.S. Al-Hujurat /49: 10 berikut dengan cermat!<br><div><br></div><div>Pasangan potongan ayat dan arti ayat yang benar sebagaimana tertera dalam tabel di atas terdapat pada nomor … .<br></div>', '1=a, 2=b, 3=c, dan 4=d<br>', '1=b, 2=c, 3=d, dan 4=a<br>', '1=c, 2=d, 3=a, dan 4=b<br>', '1=c, 2=a, 3=d, dan 4=b<br>', '1=d. 2=b, 3=a, dan 4=c', '1=c, 2=a, 3=d, dan 4=b<br>'),
(371, 16, 'Perhatikan firman Allah swt., Qur’an Surah An-Nisa ayat 59 berikut ini!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/299626b300bd38387bd05436e5ae8a10.PNG\" width=\"425\"><br></div><div>Kandungan ayat tersebut adalah… .<br></div>', 'Al-Qur’an menjadi satu-satunya kitab suci yang terpelihara dengan baik, sehingga tidak akan mengalami perubahan dan pemalsuan<br>', 'Memerintahkan kepada orang-orang beriman agar ta’at kepada Allah swt., Rasulullah saw.&nbsp; dan kepada para pemegang kekuasaan demi terciptanya kemaslahatan umum , serta tercapai kesempurnaan pelaksanaan amanat dan hukum yang seadil-adilnya<br>', 'Perintah bersedekah dan berzakat serta beramal saleh sebanyak mungkin bagi siapa saja yang ingin bertaubat<br>', 'Setiap orang bertanggung jawab terhadap perbuatannya masing-masing, dan tidak dibebani dosa/siksa atas kesalahan orang lain<br>', 'Adanya keharusan tolong menolong dalam memenuhi kebutuhan hidup masing-masing, apalagi menyangkut kepentingan umum<br>', 'Memerintahkan kepada orang-orang beriman agar ta’at kepada Allah swt., Rasulullah saw.&nbsp; dan kepada para pemegang kekuasaan demi terciptanya kemaslahatan umum , serta tercapai kesempurnaan pelaksanaan amanat dan hukum yang seadil-adilnya<br>'),
(372, 16, 'Perhatikan tabel berikut ini!<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/63ba9cb78848a580eed37c7e148a2871.PNG\" width=\"501\"><br></div><div>Pasangan lafaz dan arti yang benar adalah… .<br></div>', '1 dengan a<br>', '2 dengan b<br>', '3 dengan c<br>', '4 dengan d<br>', '5 dengan e<br>', '3 dengan c<br>'),
(373, 16, '<div>“Avempace”, begitulah ilmuwan Barat biasa menyebut Ibnu Bajah, ilmuwan Muslim terkemuka di era kejayaan Islam Spanyol. Beliau dikenal sebagai seorang astronomi, musisi, dokter, fisikawan, psikolog, pujangga, filosuf, dan ahli logika serta matematikus</div><div>Dari cerita tentang Ibnu Bajah tersebut dapat kita pahami, bahwa sikap dan perilaku beliau mencerminkan pengamalan ayat… .</div>', 'Q.S. Ali Imran ayat 198-199<br>', 'Q.S. Ali Imran ayat 178-179<br>', 'Q.S. Ali Imran ayat 190-191<br>', 'Q.S. Ali Imran ayat 192-193<br>', 'Q.S. Al-Kafirun ayat 5-6<br>', 'Q.S. Ali Imran ayat 190-191<br>'),
(374, 16, 'Perhatikan Q.S. Luqman/31: 13 berikut !<br><div><br></div><div>Pernyataan berikut merupakan perilaku yang sesuai dengan isi kandungan ayat tersebut di atas yaitu&nbsp; ……<br></div>', 'Saling menyayangi dan saling menghormati berlaku dalam segala urusan<br>', 'Mengajak manusia berbuat baik dengan lisan yang fasih sebagai sikap syukur<br>', 'Menyampaikan kebenaran meskipun pahit , karena itu perintah Rasullullah saw<br>', 'Menjauhi perilaku syirik dalam kehidupan dengan tidak menyekutukan Allah Swt.<br>', 'Mendahulukan nilai-nilai kemanusian dalam dakwah karena Allah Swt pencipta alam semesta<br>', 'Menjauhi perilaku syirik dalam kehidupan dengan tidak menyekutukan Allah Swt.<br>'),
(375, 16, 'Cermati susunan penggalan ayat di bawah ini !<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/a6f6396c115a888fdb69e12c33b2df23.PNG\" width=\"434\"><br></div><div>Susunan yang benar dari kalimat di atas adalah… .<br></div>', '1, 2, 3, 4<br>', '1, 2, 4, 3<br>', '1, 4, 3, 2<br>', '4, 3, 2, 1<br>', '4, 3, 1, 2<br>', '1, 4, 3, 2<br>'),
(376, 16, 'Perhatikan tabel berikut ini !<br><div><img src=\"http://192.168.1.254/AppUBK/admin/./assets/unggah/bf54dcccad753a0083dfa30e2ff872ec.PNG\" width=\"474\"><br></div><div>Pasangan Asmaul Husna dan artinya yang benar adalah… .<br></div>', '1 dengan a<br>', '2 dengan b<br>', '3 dengan c<br>', '4 dengan d<br>', '5 dengan e<br>', '4 dengan d<br>'),
(377, 16, '<div>Hadijah bekerja di rumah majikannya. Sekalipun ditinggal berlibur, dia menjaga dengan sungguh-sungguh harta majikannya. Hadijah sadar betul bahwa segala perbuatannya diawasi malaikat Allah swt.</div><div>Malaikat yang bertugas mencatat amal perbuatan manusia adalah… .</div>', 'Jibril<br>', 'Mikail<br>', 'Izrail<br>', 'Raqib- ‘Atid<br>', 'Munkar-Nakir<br>', 'Raqib- ‘Atid<br>'),
(378, 16, '			<div>Perhatikan narasi berikut!</div><div>Salah satu kewajiban orang beriman yaitu meyakini kebenaran Al Quran yang berfungsi sebagai petunjuk dan pedoman bagi manusia dalam berpikir, bersikap, dan berbuat</div><div><b>Berdasarkan narasi tersebut, fungsi Al Quran adalah sebagai ….</b></div>		', 'Al Mau’izah<br>', 'Al bayyinat<br>', 'Al Furqan<br>', 'Asy Syifa’<br>', 'Al Huda<br>', 'Al Huda<br>'),
(379, 16, '<div>Ali dalam keadaan cacat, kaki kanannya tidak berkembang secara normal sehingga ia berjaln dengan pincang. Tapi ia tidak pernah menyalahkan siapapun atas cacat yang dialaminya. Ia pun tidak merasa minder atau patah semangat karena keadaannya.</div><div>&nbsp;Sikap Ali tersebut merupakan perilaku ..........</div>', 'melawan takdir<br>', 'menunggu takdir<br>', 'menerima takdir dengan ikhlas<br>', 'merenungi takdir<br>', 'acuh tak acuh terhadap takdir<br>', 'menerima takdir dengan ikhlas<br>'),
(380, 16, '<div>Setiap hari kita menyaksikan perempuan tampil dengan berbagai macam model pakaian. Pakaian yang digunakan banyak yang kurang sesuai syariat.</div><div>&nbsp;Ketentuan aurat seorang perempuan adalah .........</div>', 'bagian tubuh tertentu di sekitar dada dan kemaluan<br>', 'seluruh bagian tubuh kecuali muka dan telapak tangan<br>', 'bagian tubuh yang tertutup baju dan bawahan<br>', 'bagian tubuh antara pusar dan lutut<br>', 'seluruh bagian tubuh yang tidak etis diliat oleh pria<br>', 'seluruh bagian tubuh kecuali muka dan telapak tangan<br>'),
(381, 16, '			<div>Sebagai seorang pelajar Ahmad selalu berusaha berinteraksi baik dengan sesama. Terhadap teman satu kelas ia selalu baik. Ketika ulangan di kelas, Ahmad tidak pernah berbuat curang.</div><div>&nbsp;Berikut ini yang <b>tidak</b> termasuk keuntungan memiliki sifat jujur adalah .......</div>		', 'disayangi oleh sesama teman<br>', 'dikasihi oleh orang tua dan guru<br>', 'memperoleh sanjungan orang<br>', 'memiliki hati yang tenteram<br>', 'mendapat pahala yang besar<br>', 'memperoleh sanjungan orang<br>'),
(382, 16, '<div>Perhatikan beberapa pernyataan berikut!</div><div>1.Ani bekerja keras siang malam, agar keluarganya bisa hidup layak.</div><div>2.Ilmi rela berpindah dari pekerjaan bergaji besar ke perusahaan yang bergaji kecil agar bisa beribadah dengan baik</div><div>3.Kamal selalu beriktikaf di masjid dan tidak mau bekerja, karena ia percaya Allah yang mengatur rizqi</div><div>4.Ria rajin belajar karena hanya dengan rajin belajar akan mendapatkan ilmu yang bermanfaat</div><div>5.Ibu Giyem sampai tua tetap bekerja, karena dia berprinsip bahwa bekerja itu ibadah.</div><div>Perilaku yang mencerminkan iman kepada qada dan qadar terdapat pada nomor ....</div>', '1, 2, dan 3<br>', '2, 3, dan 4<br>', '2, 3, dan 5<br>', '2, 4, dan 5<br>', '3, 4, dan 5<br>', '2, 4, dan 5<br>'),
(383, 16, '			<div>Setiap muslim dituntut memiliki sifat yang Syaja\'ah yaitu keberanian atau keperwiraan yang di dasari kesabaran. Suatu sikap mental seseorang dapat menguasai jiwanya dan berbuat menurut semestinya sesuai ajaran Agama Islam.</div><div>&nbsp;Berikut ini perilaku yang <b>bukan</b> termasuk Syaja\'ah adalah ......</div>		', 'rasa takut kepada Allah<br>', 'yakin akan pertolongan Allah<br>', 'mengandalkan kekuatan materi<br>', 'lebih mencintai akhirat dari pada dunia<br>', 'berani dengan pertimbangan yang matang<br>', 'mengandalkan kekuatan materi<br>'),
(384, 16, 'Nabi Muhammad SAW menjelaskan bahwa jujur itu membawa kebaikan. Kebaikan&nbsp; menuntun ke surga. Ungkapan tersebut mengandung arti :<br>', 'jujur sangat penting&nbsp; dalam kehidupan sehari-hari<br>', 'jujur membawa keberkahan hidup<br>', 'jujur membuat pelakunya menjadi gelisah<br>', 'jujur menyebabkan orang bahagia<br>', 'jujur menyebabkan kenyamanan dalam berprilaku<br>', 'jujur menyebabkan orang bahagia<br>'),
(385, 16, 'Maksud orang yang menempuh perjalanan untuk menuntut ilmu sama dengan menuju jalan ke surga adalah …<br>', 'orang yang menuntut&nbsp; akan mati dan masuk surga<br>', 'orang yang menuntut ilmu jika mati akan masuk surge tanpa hisab<br>', 'Allah SWT memuliakan orang yang menuntut ilmu<br>', 'orang yang menuntut&nbsp; ilmu itu pasti masuk surga<br>', 'orang yang berilmu&nbsp; pasti menjadi orang kaya<br>', 'Allah SWT memuliakan orang yang menuntut ilmu<br>'),
(386, 16, 'Contoh bentuk keberanian yang muncul dari hati dan jiwa yang kuat adalah….<br>', 'mengendalikan diri dari (hawa nafsu) ketika marah<br>', 'melawan orang yang memusuhi<br>', 'diam saja ketika ada yang memusuhi<br>', 'mengendalikan diri dari barang-barang mewah<br>', 'membela teman saat dimusuhi<br>', 'mengendalikan diri dari (hawa nafsu) ketika marah<br>'),
(387, 16, '<div>Perhatikan deskripsi berikut!</div><div>Rasulullah memerintahkan umatnya untuk berbakti kepada orang tuanya, baik yang masih hidup ataupun yang meninggal dunia. Bahkan, bila orang tua berbeda agama, umat Islam tetap berkewajiban berbuat baik kepada keduanya pada batas yang diperbolehkan oleh Islam</div><div>Contoh perbuatan berikut yang bukan termasuk hormat dan patuh kepada orang tua adalah ....</div>', 'Sebagai bentuk penghormatan, Ahmad mengucapkan salam kepada orang tuanya ketika keluar rumah<br>', 'Setelah shalat fardlu lima waktu, Shofiyah mendoakan kedua orangtuanya yang telah meninggal<br>', 'Shalihah menyapu halaman rumah karena melaksanakan tanggungjawabnya sebagai anak<br>', 'Suyanti hanya membantu pekerjaan ibunya dengan mengabaikan perintah bapaknya<br>', 'Shadiq melaksanakan sholat berjama’ah seperti yang diajarkan orang tuanya<br>', 'Suyanti hanya membantu pekerjaan ibunya dengan mengabaikan perintah bapaknya<br>'),
(388, 16, 'Di bawah ini yang merupakan contoh kerja keras adalah….<br>', 'membaca semua buku karena besok pagi akan ujian<br>', 'tetap berusaha ketika mendapatkan kesulitan dalam belajar<br>', 'membantu orang tua dengan maksud agar dibelikan sepeda<br>', 'belajar sampai larut malam karena ada ulangan<br>', 'suka membantu orang lain karena berharap mendapat pujian<br>', 'tetap berusaha ketika mendapatkan kesulitan dalam belajar<br>'),
(389, 16, '			Adiyanto&nbsp; adalah seorang siswa yang sekarang duduk di salah satu SMK, Adiyanto&nbsp; bercita-cita menjadi seorang Marinir. Untuk mencapai cita-citanya, Aidiyanto harus menunjukkan sikap kerja keras. Berikut ini yang <b>tidak</b> termasuk sikap yang harus dimiliki Aiyanto dalam mencapai cita-citanya adalah . . . .<br>		', 'bekerja dengan santai dan malas dari orang lain&nbsp;<br>', 'menetapkan rencana yang akan dicapai dengan matang&nbsp;<br>', 'melakukan kegiatan dengan sungguh-sungguh<br>', 'disiplin dalam menjalani proses untuk meraih cita-citanya<br>', 'banyak berdo’a dan bertawakal kepada Allah SWT<br>', 'bekerja dengan santai dan malas dari orang lain&nbsp;<br>'),
(390, 16, '			<div>Perhatikan kisah berikut ini!</div><div>Tidak ada raut pesimis dalam wajah Sujadi, seorang penjual pensil keliling yang berusia 70 tahun. Cuaca hari itu terasa panas, ia membawa tas punggung berisi pensil berkeliling mencari tempat untuk menjajakan jualannya. Sungguh perjuangan hidup yang luar biasa, selama lebih dari 10 tahun menjual pensil. Ia lebih bahagia berjualan pensil daripada mengemis, meskipun keuntungan yang diperoleh hanya 250 rupiah per biji. <b>Berdasarkan kisah tersebut, nilai keteladanan dari sosok Sujadi adalah ….&nbsp;</b></div>		', 'Pekerja keras tanpa pernah putus asa<br>', 'Hemat dalam membelajakan harta<br>', 'Rendah hati kepada siapapun<br>', 'Mencintai dunia apa adanya<br>', 'Ramah kepada setiap orang<br>', 'Pekerja keras tanpa pernah putus asa<br>'),
(391, 16, '<div>Kedudukan Al-Qur’an adalah sabagai sumber hukum Islam yang utama. Setiap muslim wajib berpegang teguh kepada hukum-hukum yang terdapat di dalamnya agar menjadi manusia yang taat kepada Allah Swt., yaitu menjalankan semua perintah Allah dan menjauhi segala laranganya.</div><div>Dari narasi diatas, Berikut tiga isi pokok Al-Qur’an ditinjau dari segi hukum adalah . . . .</div>', 'ibadah, muamalah, dan Akhlak&nbsp;', 'ibadah, muamalah, dan jinayah&nbsp;<br>', 'ibadah, muamalah, dan tasawuf<br>', 'Ibadah, akhlak, dan jinayah<br>', 'Ibadah, akhlak, dan tasawuf<br>', 'ibadah, muamalah, dan Akhlak&nbsp;'),
(392, 16, '			<div>Perhatikan pernyataan berikut:</div><div>1)Melepaskan jiwa dari cinta buta dunia dan membersihkan jiwa dan harta&nbsp;</div><div>2)Menjadi pengingat bahwa Allah Orientasi segala hal yang manusia lakukan</div><div>3)Sebagai ungkapan rasa syukur atas nikmat Allah yang telah diberikan&nbsp;</div><div>4)Kaum muslimin dapat mengambil pelajaran dari berbagai hal sehingga dapat menigkatkan kualitas hidupnya</div><div>5)Dapat memperoleh pahala yang berlipat ganda</div><div>Dari pernyataan diatas yang termasuk hikmah dalam berzakat adalah. . . .</div>		', '1), 2), dan 3)<br>', '1), 2), dan 4)<br>', '1), 2), dan 5)<br>', '1), 3), dan 4)<br>', '<div>1), 3), dan 5)<br></div>', '<div>1), 3), dan 5)<br></div>'),
(393, 16, '			<div>Perhatikan narasi berikut!</div><div>Ayahnya Ahmad meninggal dunia akibat mengalami kecelakaan lalulintas. Ahmad kemudian meminta tolong kepada seorang ustadz untuk mengurus jenazah ayahnya. Oleh ustadz tersebut, Ahmad diperintahkan untuk menyiapkan kain putih untuk mengkafani jenazah ayahnya.</div><div><b>Adapun jumlah kain putih yang diperlukan oleh Ahmad adalah…..</b></div>		', '1 lembar<br>', '2 lembar<br>', '3 lembar<br>', '4 lembar<br>', '5 lembar<br>', '3 lembar<br>'),
(394, 16, '<div>Setiap muslim mempunyai kewajiban atas muslim yang lain. Diantaranya adalah Apabila ada seorang muslim meninggal dunia maka&nbsp; muslim yang hidup berkewajiban mengurus jenazahnya dan mengantarkan zenazah saudaranya.</div><div>Perhatikan pernyataan berikut ini!</div><div>1)Memandikan jenazah</div><div>2)Menyolatkan jenazah</div><div>3)Menguburkan jenazah&nbsp;</div><div>4)Mengafani jenazah</div><div>5)Mendo’akan jenazah</div><div>Tahapan yang benar dalam penyelenggaraan jenazah adalah&nbsp; . . . .&nbsp;</div>', '1), 2), 3), dan 4)<br>', '1), 3), 4), dan 2)<br>', '1), 3), 4), dan 5)<br>', '1), 4), 2), dan 3)<br>', '2), 3), 4), dan 5)<br>', '1), 4), 2), dan 3)<br>'),
(395, 16, 'Perhatikan uraian pada table berikut !<br><div><br></div><div>Uraian pada daftar tabel diatas adalah ……..&nbsp; &nbsp;<br></div>', 'syarat khutbah<br>', 'rukun khutbah<br>', 'sunnat khutbah<br>', 'syarat kh?tib<br>', 'orang beriman<br>', 'rukun khutbah<br>'),
(396, 16, '<div>Pak Ahmad adalah seorang PNS dengan anggota keluarga yang terdiri dari seorang isteri dan 2 orang anak, pada suatu hari salah seorang anaknya terserang penyakit demam, awalnya dikira sakit biasa, setelah dating ke salah satu Rumah sakit pemerintah yang ada didekat kediamannya ternyata penyakit anaknya harus mendapatkan perawatan serius. Karena Pak Ahmad adalah seorang PNS maka, pak Ahmad mendapat keringanan pembiayaan pengobatan anaknya.&nbsp;</div><div>Ilustrasi diatas menggambarkan adanya penggunaan asuransi yang dikelola oleh pemerintah, apakah diperbolehkan dalam islam ? Ulama fiqh sepakat bahwa asuransi dibolehkan asal cara kerjanya Islami,kecuali …</div>', 'ditegakkannya prinsip keadilan<br>', 'ditegakkannya prinsip keadilan<br>', 'tidak ada perampasan hak dan kezaliman<br>', 'bersih dari unsur rib?<br>', 'para karyawan perusahaan asuransi harus orang Islam<br>', 'para karyawan perusahaan asuransi harus orang Islam<br>'),
(397, 16, '<div>1) Bukan mahram calon mempelai wanita</div><div>2) Orang yang dikehendaki&nbsp;</div><div>3) Identitasnya jelas</div><div>Pernyataan yang disebutkan diatas merupakan syarat-syarat yang harus dipenuhi sebelum melaksanakan pernikahan, yaitu syarat untuk…….&nbsp;</div>', 'calon suami<br>', 'calon isteri<br>', 'wali<br>', 'dua orang saksi<br>', 'sigah (ijab qabul)<br>', 'calon suami<br>'),
(398, 16, '<div>Ibu Ani tinggal bersama dengan seorang anaknya yang bernama Anton. Anton adalah seorang pemuda yang sudah mapan dan sudah mau melaksanakan pernikahan dengan seorang gadis yang sudah lama dikenalnya bahkan sudah sama-sama mengungkapkan perasaan saling cinta dan siap membina rumah tangga bersama.</div><div>Hukum pernikahan antara Anton dengan gadis pujaan hatinya adalah …..</div>', 'haram<br>', 'makruh<br>', 'mubah<br>', 'wajib<br>', 'Sunnah<br>', 'wajib<br>'),
(399, 16, '<div>Perhatikan ilustrasi berikut ini!</div><div>Telah meninggal dunia seorang suami dengan meninggalkan seorang istri, seorang anak laki-laki dan seorang anak perempuan. Harta yang ditinggalkan setelah diambil untuk pengurusan jenazah dan wasiat tersisa Rp 120.000.000,-. Bagian untuk seorang istri dan seorang anak laki-laki adalah….</div>', 'Rp 15.000.000,- dan Rp 35.000.000,-<br>', 'Rp 25.000.000,- dan Rp 52.500.000,-<br>', 'Rp 35.000.000,- dan Rp 50.000.000,-<br>', 'Rp 15.000.000,- dan Rp 70.000.000,-<br>', 'Rp 35.000.000,- dan Rp 70.000.000,-<br>', 'Rp 15.000.000,- dan Rp 70.000.000,-<br>'),
(400, 16, '						<div><i>Setelah menerima wahyu perintah berdakwah, Nabi Muhammad SAW mulai berdakwah kepada keluarga besarnya. Agar tidak menimbulkan keresahan di kalangan masyarakat Quraisy, Rasulullah SAW berdakwah secara sembunyi-sembunyi (Al-Da’wah bi Al-Sirr). Hal tersebut dilakukan mengingat kerasnya watak suku Quraisy dan keteguhan mereka pada keyakinan dan penyembahan berhala. Saat berdakwah secara sembunyi-sembunyi&nbsp; tersebut Rasulullah SAW menyampaikan risalah-risalah tauhid dan ajaran Islam lainnya yang diwahyukan Allah SWT kepadanya. Karena sifat dan pribadi Rasulullah SAW yang sangat terpercaya dan terjaga dari hal-hal tercela, tanpa ragu para pengikutnya baik dari kalangan keluarga maupun para sahabat menyatakan keislaman mereka di hadapan Rasulullah SAW.</i>&nbsp; &nbsp;</div><div>Pada saat berdakwah secara sembunyi-sembunyi di Kota Makkah tersebut substansi dakwah Rasulullah SAW difokuskan pada masalah ....</div>				', 'Tegaknya “<i>al-Amru bi al-ma\'rif wa an-nahyu an-munkar ma\'ruf</i>” (saling menasihati untuk berbuat yang makruf dan mencegah kemungkaran) adalah jaminan kehidupan yang layak di dunia dan akhirat.&nbsp;<br>', 'Mengajak masyarakat Mekah pada umumnya dan Keluarga dan Para Sahabat Khususnya untuk menyembah Allah Swt. dan meninggalkan berhala serta beriman kepada Nabi Muhammad SAW sebagai Rasulullah.<br>', 'Terjalinnya persatuan dan persaudaraan antara pemerintah dan semua lapisan masyarakat , terjaganya lingkungan dari kemaksiatan dan penyakit social, terciptanya keadilan, keamanan, ketenteraman, dan kedamaian dalam masyarakat.<br>', 'Menghargai budaya Kaum Quraisy dan melebur nya ke masyarakat, serta cerdas dan cermat dalam memilih budaya&nbsp; tersebut sehingga dapat mengubah budaya Quraisy tersebut secara perlahan-lahan<br>', 'Merubah kemungkaran yang ada di lingkungan sekitar,&nbsp; menjadi figur yang layak diteladani dalam segala yang baik, serta menjadikan kekuasaan sebagai alat untuk menegakkan <i>amar ma’ruf nahi munkar</i> untuk semua golonganPerhatikan narasi berikut!<br>', 'Mengajak masyarakat Mekah pada umumnya dan Keluarga dan Para Sahabat Khususnya untuk menyembah Allah Swt. dan meninggalkan berhala serta beriman kepada Nabi Muhammad SAW sebagai Rasulullah.<br>'),
(402, 16, '			<div>Perhatikan narasi berikut!</div><div>Strategi Nabi Muhammad Saw. dalam membangun kebersamaan antar suku dan antar umat beragama menjadi titik awal keberhasilan dakwah Rasulullah di Madinah. Keberhasilan ini terlihat dengan adanya perlindungan bagi penduduk Madinah tanpa membedakan suku dan agama sehingga memudahkan pengembangan dakwahnya di Madinah.</div><div><b>Strategi yang dibangun Nabi Muhammad Saw. tersebut dikenal dengan istilah ….&nbsp;</b></div>		', 'Piagam Madinah<br>', 'Baiat Aqabah II<br>', 'Baiat Aqabah I<br>', 'Darul Arqam<br>', 'Baiat Ridwan<br>', 'Piagam Madinah<br>'),
(403, 16, '			<div><i>Masa kejayaan Islam terjadi pada sekitar tahun 650-1250. Periode ini disebut Periode Klasik. Pada kurun waktu itu, terdapat dua kerajaan besar, yaitu Kerajaan Umayyah atau sering disebut Daulah Umayyah dan Kerajaan Abbasiyah yang sering disebut Daulah Abbasiyah. Pada masa Bani Umayyah, perkembangan Islam ditandai dengan meluasnya wilayah kekuasaan Islam dan berdirinya bangunan-bangunan sebagai pusat dakwah Islam. Kemajuan Islam pada masa ini meliputi: bidang politik, keagamaan, ekonomi, ilmu bangunan (arsitektur), sosial, dan bidang militer. Sementara perkembangan Islam pada masa Bani Abbasiyah ditandai dengan pesatnya perkembangan ilmu pengetahuan. Kemajuan Islam pada masa ini meliputi bidang ilmu pengetahuan, ekonomi, ilmu bangunan (arsitektur), sosial, dan bidang militer.</i></div><div>Faktor-faktor yang mempengaruhi perkembangan peradaban Islam pada masa kejayaan diantara nya adalah ....</div>		', 'Ulama pada masa tersebut mendirikan organisasi yang berada di bawah naungan pemerintah kerajaan, sehingga lebih mudah untuk mendapatkan dana penelitian untuk kemajuan ilmu pengetahuan.<br>', 'Ajaran Islam yang mendorong umatnya untuk maju serta terjadinya asimilasi antara bangsa Arab dan bangsa-bangsa lain yang lebih dahulu mengalami perkembangan dalam ilmu pengetahuan.<br>', 'Kerajaan Mamalik yang saat itu sedang berkuasa di Mesir dapat memukul mundur pasukan Mongolia dalam sebuah pertempuran di ‘Ain Jalut&nbsp;<br>', 'Bangsa Eropa banyak yang belajar kepada ilmuwan Islam berhasil mengembangkan ilmu pengetahuan yang mereka peroleh.<br>', 'Ilmuwan muslim banyak yang menjadi ahli filosof, serta memberi kritik terhadap karya-karya filosof Yunani dan Romawi<br>', 'Ajaran Islam yang mendorong umatnya untuk maju serta terjadinya asimilasi antara bangsa Arab dan bangsa-bangsa lain yang lebih dahulu mengalami perkembangan dalam ilmu pengetahuan.<br>'),
(404, 16, '			<div>Islam Masa Modern (1800 – sekarang) dikenal dengan era kebangkitan umat Islam. Kebangkitan umat Islam disebabkan oleh adanya benturan antara kekuatan Islam dengan kekuatan Eropa.</div><div>Maka yang harus dilakukan generasi pemuda Islam pada masa sekarang ini untuk memajukan Islam adalah ....</div>		', 'Melakukan pemboikotan terhadap produk-produk yang berasal dari luar negeri.<br>', 'Berjihad dengan mengatasnamakan organiasasi keagamaan yang berkaitan dengan muamalah duniawiyah<br>', 'Memperbaharui aturan dalam bidang agama, sosial, dan ekonomi, serta mencari dalil-dalil yang terkait dengan takhayul dan bid’ah<br>', 'menghilangkan paham <i>fatalisme</i> yang terdapat di kalangan umat Islam, meningkatkan mutu pendidikan dan membela umat Islam terhadap permainan politik negara Barat.<br>', 'Ikut aktif dalam memposting berbagai kegiatan di media sosial yang berkaitan dengan hal-hal pemerintahan, sosial, ekonomi, serta keagamaan<br>', 'menghilangkan paham <i>fatalisme</i> yang terdapat di kalangan umat Islam, meningkatkan mutu pendidikan dan membela umat Islam terhadap permainan politik negara Barat.<br>'),
(405, 16, '<div>Perhatikan beberapa pernyataan berikut!</div><div>(1)Para penguasa Jawa yang menjabat sebagai bupati-bupati Majapahit memaksa rakyatnya untuk memeluk Islam</div><div>(2)Penduduk pribumi yang tertarik menjadi suami atau isteri saudagar muslim harus diislamkan terlebih dahulu</div><div>(3)Mengakomodasi budaya lokal sehingga banyak masyarakat Indonesia yang tertarik menerima ajaran tersebut</div><div>(4)Hubungan perdagangan dimanfaatkan pedagang muslim sebagai sarana dakwah hingga banyak penduduk nusantara memeluk Islam</div><div>(5)Jalur militer ditempuh ketika kerajaan Islam menaklukkan kerajaan non Islam baik di Sumatera, Jawa, maupun Indonesia bagian Timur</div><div>Strategi dakwah yang dipergunakan sebagai sarana dalam penyebaran Islam di Indonesia adalah …</div>', '(1), (2) dan (3)<br>', '(1), (3) dan (5)<br>', '(2), (3) dan (4)<br>', '(2), (4) dan (5)<br>', '(3), (4) dan (5)<br>', '(2), (3) dan (4)<br>'),
(406, 16, 'Dalam menyampaikan dakwah Islam para wali berusaha menarik hati masyarakat. Misalnya dakwah yang dilakukan oleh Sunan Kalijaga, yaitu dengan cara . . . .<br>', 'menyelenggarakan sayembara berhadiah<br>', 'menyampaikan sejarah hidup para nabi<br>', 'mengadakan reuni akbar<br>', 'mengadakan unjuk rasa secara besar-besaran<br>', 'menyelenggarakan seni pertunjukan wayang<br>', 'menyelenggarakan seni pertunjukan wayang<br>'),
(407, 16, 'Dalam masa peradaban islam d dunia, islam banyak mengalami kemajuan besar dan dan sangat banyak membawa perbuahan di dunia di anatara nya,Terjadinya asimilasi antara bangsa Arab dengan bangsa-bangsa lain Pembuatan Perpustakaan Stabilitas Pertumbuhan Ekonomi dan Politik&nbsp; Gerakan Penterjemahan, Berikut contoh perilaku meneladani kemajuan peradaban Islam di Dunia, Kecuali …<br>', 'Memupuk semangat dan motivasi untuk meningkatkan prestasi yang telah diraih umat terdahulu<br>', 'Mengambil pelajaran dari berbagai keberhasilan dan kegagalan masa lalu<br>', 'Meneladani perilaku yang baik dari tokoh-tokoh terdahulu<br>', 'Berpartisipasi memelihara peninggalan-penbinggalan masa lalu dengan cara mempelajari dan mengambil manfaat dari peninggalan-peninggalan tersebut<br>', 'Merasa bangga dan mencintai kebudayaan&nbsp; yang merupakan buah karya dari bangsa asing&nbsp; pada masa lalu<br>', 'Merasa bangga dan mencintai kebudayaan&nbsp; yang merupakan buah karya dari bangsa asing&nbsp; pada masa lalu<br>'),
(408, 16, 'Ada berbagai macam pencapaian yang menjadi factor kemajuan peradaban Islam dalam hal ini pada bidang ilmu pengetahuan dan filsafat.&nbsp; Berikut merupakan faktor-faktor tersebut, kecuali …<br>', 'Terjadinya asimilasi antara bangsa Arab dengan bangsa-bangsa lain<br>', 'Singularistik dalam pemerintahan dan politik<br>', 'PembuatanPerpustakaan<br>', 'Stabilitas Pertumbuhan Ekonomi dan Politik<br>', 'Gerakan Penterjemahan<br>', 'Singularistik dalam pemerintahan dan politik<br>'),
(409, 12, 'Tombol keyboard berfungsi untuk menghapus satu karakter sebelah kiri kursor disebut….<br>', 'Enter<br>', 'Backspace<br>', 'Delete<br>', 'Space bar<br>', 'Tab<br>', 'Backspace<br>'),
(410, 12, 'Berikut ini yang merupakan fungsi mouse adalah….<br>', 'Memasukkan data dan program<br>', 'Mengetik dan memasukkan data<br>', 'Mempermudah dalam memilih pilihan<br>', 'Melaksanakan instruksi secara berurutan<br>', 'Untuk menyimpan data dan program<br>', 'Mempermudah dalam memilih pilihan<br>'),
(411, 12, 'Berikut yang termasuk bagian dari external storage adalah….<br>', 'Harddisk<br>', 'Read Only Memory<br>', 'Random Access Memory<br>', 'Main Memory<br>', 'Internal Storage<br>', 'Harddisk<br>'),
(412, 12, 'Alat input berfungsi untuk mengkopi gambar/teks, lalu disimpan di memori komputer disebut…..<br>', 'Printer<br>', 'Web Cam<br>', 'Kamera Digital<br>', 'Scanner&nbsp;<br>', 'Harddisk<br>', 'Scanner&nbsp;<br>'),
(413, 12, 'Fungsi dari tombol caps lock pada keyboard adalah….<br>', 'Memindahkan kursor<br>', 'Menghapus data<br>', 'Mengakhiri pengetikan<br>', 'Mengetik huruf besar<br>', 'Membuat spasi<br>', 'Mengetik huruf besar<br>'),
(414, 12, 'Seperangkat komputer agar dapat digunakan secara wajar, minimal harus tersedia…..<br>', 'Monitor, Speaker, CPU, dan Mouse<br>', 'Monitor, keyboard, mouse, dan CPU<br>', 'Monitor, mouse, CPU, dan scanner<br>', 'Monitor, CPU, keyboard, dan printer<br>', 'Monitor, Keyboard, Speaker, dan Printer<br>', 'Monitor, keyboard, mouse, dan CPU<br>'),
(415, 12, 'Perangkat keras komputer yang termasuk sebagai alat keluaran antara lain…..<br>', 'Keyboard dan Mouse<br>', 'CPU dan Keyboard<br>', 'Monitor dan Printer<br>', 'CPU dan Printer<br>', 'Keyboard dan Monitor<br>', 'Monitor dan Printer<br>'),
(416, 12, 'CPU merupakan salah satu contoh bagian dalam sistem komputer…..<br>', 'Software<br>', 'Hardware<br>', 'Brainware<br>', 'Netware<br>', 'Hardware<br>', 'Hardware<br>'),
(417, 12, 'Perangkat output yang menghasilkan informasi disebut…..<br>', 'Mouse<br>', 'Monitor<br>', 'Printer<br>', 'Cental Processing Unit<br>', 'Scanner<br>', 'Cental Processing Unit<br>'),
(418, 12, 'Jenis memory yang digunakan di PC adalah<br>', 'DDR<br>', 'CDRAM<br>', 'SDR<br>', 'DSRAM<br>', 'SRDRAM<br>', 'DDR<br>'),
(419, 12, 'Kata lain dari otak computer adalah…<br>', 'CPU<br>', 'Power Supply<br>', 'Processor<br>', 'Mouse<br>', 'Monitor<br>', 'Processor<br>'),
(420, 12, 'Sistem komputer terbangun dari elemen-elemen :<br>', 'Hardware – Software – Input Device<br>', 'Software – Software – Output Device<br>', 'Perangkat keras – Pengguna – Perangkat Lunak<br>', 'Proses – Hardware – Software<br>', 'Software -&nbsp; Proses – Hardware<br>', 'Software -&nbsp; Proses – Hardware<br>'),
(421, 12, 'Pada pemasangan RAM, yang harus diperhatikan adalah :<br>', 'Letak pengait jangan sampai terbalik<br>', 'Letak lengkungan RAM harus sama dengan tempat lengkungan di slot RAM<br>', 'Pengait RAM tidak boleh renggang<br>', 'Jumlah pin RAM harus sesuai jumlah pin di slot RAM<br>', 'Chip RAM harus menghadap ke CPU<br>', 'Letak lengkungan RAM harus sama dengan tempat lengkungan di slot RAM<br>'),
(422, 12, 'Printer merupakan salah satu Output Device yang merupakan bagian :<br>', 'Soft Copy Device<br>', 'Hard Copy Device<br>', 'Perangkat keras tambahan<br>', 'Perangkat yang menggunakan koneksi Blue Tooth<br>', 'Perangkat penyimpan data<br>', 'Hard Copy Device<br>'),
(423, 12, 'Cara untuk mempercepat kerja komputer dapat dilakukan dengan ....<br>', '&nbsp;menghentikan layanan windows yang tidak digunakan<br>', 'menambah software game<br>', 'mengurangi penggunaan komputer<br>', '&nbsp;memasang kipas tambahan<br>', 'menggunakan ups<br>', '&nbsp;menghentikan layanan windows yang tidak digunakan<br>'),
(424, 12, 'Pilihlah yang bukan merupakan perangkat pemroses (proccessing device) dari kumpulan nama perangkat keras berikut ini:<br>', 'Proccessor<br>', 'Ram<br>', 'Sound card<br>', 'VGA card<br>', 'DVD Drive<br>', 'DVD Drive<br>'),
(425, 12, 'Pilihlah yang bukan merupakan perangkat lunak sistem operasi dari kumpulan nama perangkat lunak di bawah ini:<br>', 'Linux<br>', 'Microsoft Office<br>', 'Microsoft WIndows<br>', 'Macintos<br>', 'UNIX<br>', 'Microsoft Office<br>'),
(426, 12, 'Microsoft Windows merupakan sistem operasi komputer yang berbasis ….<br>', 'Graphical Universal Interface<br>', 'Picture User Interface<br>', 'Text User Interface<br>', 'Graphical and Picture Interface<br>', 'Graphic User Interface<br>', 'Graphic User Interface<br>'),
(427, 12, 'Berikut di bawah ini adalah nama-nama software program aplikasi yang digunakan untuk browsing internet kecuali&nbsp; ....<br>', 'Netscape<br>', 'Netbrowser<br>', 'Internet Explorer<br>', 'Opera<br>', 'Mozilla<br>', 'Netbrowser<br>'),
(428, 12, 'Pimpinan unit yang bertanggung jawab atas keseluruhan proses berlangsungnyA pekerjaan komputer, yang merupakan pejabat eselon tertinggi di bidang IT<br>', 'Data Processing Manager<br>', 'System Analyst<br>', 'Programmers<br>', 'Machine Operator<br>', 'Data Entry Operator<br>', 'Data Processing Manager<br>'),
(429, 12, 'Bilangan biner adalah bilangan yang berbasis ….<br>', 'Bilangan yang berbasis 2 yaitu 1 dan 2<br>', 'Bilangan yang berbasis 2 yaitu 0 dan 1<br>', 'Bilangan yang berbasis 10 yaitu 0 – 9<br>', 'Bilangan yang berbasis 8 yaitu 0 – 7<br>', 'Bilangan yang berbasis 16 yaitu 0 – 15<br>', 'Bilangan yang berbasis 2 yaitu 0 dan 1<br>'),
(430, 12, 'Bilangan heksadesimal adalah bilangan yang berbasis ....<br>', 'Bilangan yang berbasis 2&nbsp; yaitu 0 dan 1<br>', 'Bilangan yang berbasis 16 yaitu 0 dan 17<br>', 'Bilangan yang berbasis 10 yaitu 0 – 9<br>', 'Bilangan yang berbasis 8 yaitu 0 – 7<br>', 'Bilangan yang berbasis 16 yaitu 0 – 9<br>', 'Bilangan yang berbasis 16 yaitu 0 – 9<br>'),
(431, 12, '227(10) dikonversikan ke sistem biner mempunyai nilai&nbsp; ....<br>', '11001111<br>', '11100011<br>', '11110101<br>', '1110011<br>', '1110111<br>', '11100011<br>'),
(432, 12, 'Bilangan biner merupakan sistem bilangan yang mempunyai radik paling kecil ....<br>', '0<br>', '1<br>', '2<br>', '6<br>', '8<br>', '2<br>'),
(433, 12, 'Dalam Kode BCD menggunakan kode biner sebanyak ... Bit<br>', '2<br>', '3<br>', '4<br>', '6<br>', '8<br>', '4<br>'),
(434, 12, 'Manusia dengan tenaga dan ilmu pengetahuan yang digunakan untuk mengoperasikan serta mengatur system komputer adalah ....<br>', 'Brainware<br>', 'Mailware<br>', 'Hardware&nbsp;<br>', 'Software<br>', 'Spyware<br>', 'Brainware<br>'),
(435, 12, 'Tujuan pokok system computer adalah ….<br>', 'Mengolah data menjadi imformasi<br>', 'Mengolah input menjadi proses<br>', 'Mengolah output menjadi input<br>', 'Mengolah output jadi proses<br>', 'Mengolah imformasi jadi output<br>', 'Mengolah data menjadi imformasi<br>'),
(436, 12, 'Berikut ini merupakan application software, kecuali ….<br>', 'Ubuntu&nbsp; &nbsp;<br>', 'Ms. Office<br>', 'Photoshop&nbsp;<br>', 'RAM<br>', 'Coreldraw<br>', 'RAM<br>'),
(437, 12, 'Hardware yang berfungsi sebagai alat penunjuk untuk mengatur posisi kursor di layar adalah ….<br>', 'Monitor&nbsp;<br>', 'Printer<br>', 'Mouse&nbsp; &nbsp;<br>', 'Speaker<br>', 'Scanner<br>', 'Mouse&nbsp; &nbsp;<br>'),
(438, 12, 'Berikut ini merupakan storage device adalah ….<br>', 'monitor&nbsp; &nbsp; &nbsp;<br>', 'pentium<br>', 'Core i7<br>', 'Keyboard&nbsp;<br>', 'Flashdisk<br>', 'Flashdisk<br>'),
(439, 12, 'CorelDRAW adalah…..<br>', 'Aplikasi Editor grafik vector<br>', 'Aplikasi Browser Internet<br>', 'Aplikasi Membuat animasi Flash<br>', 'Aplikasi Berhitung<br>', 'Aplikasi Membuat Program<br>', 'Aplikasi Editor grafik vector<br>'),
(440, 12, 'Tombol pada keyboard untuk membuat grafik baru pada corelDRAW adalah...<br>', 'Ctrl+O<br>', 'Ctrl+N<br>', 'Ctrl+X<br>', 'Ctrl+Z<br>', 'Ctrl+R<br>', 'Ctrl+N<br>'),
(441, 12, 'Bagaimana cara mengexport gambar corelDRAW ?<br>', 'File ? Import<br>', 'File ? Save<br>', 'File ? Export<br>', '&nbsp;File ? Print<br>', 'File ? Exit<br>', 'File ? Export<br>'),
(442, 12, 'Sementara Elipse Tool berfungsi untuk...<br>', 'Membuat persegi atau persegi panjang<br>', 'Membuat segitiga atau segibanyak<br>', 'Membuat gambar spiral<br>', 'Membuat lingkaran atau elips<br>', 'Membuat gambar 3D<br>', 'Membuat lingkaran atau elips<br>'),
(443, 12, '<br>', 'Ctrl+E<br>', 'Ctrl+Z<br>', 'Ctrl+R<br>', 'Ctrl+N<br>', 'F5<br>', 'Ctrl+E<br>'),
(444, 12, 'Alat yang digunakan untuk menarik, memindahkan objek adalah...<br>', 'Pick Tool<br>', 'Shape Tool<br>', 'Envelope Tool<br>', 'Berzier Tool<br>', 'Eraser Tool<br>', 'Pick Tool<br>'),
(445, 12, 'Sementara Ctrl+D adalah shortcut pada keyboard untuk...<br>', 'Mengcopy gambar<br>', 'Menduplikat gambar<br>', 'Memotong gambar<br>', 'Menyatukan gambar<br>', 'Memisahkan gambar<br>', 'Menduplikat gambar<br>'),
(446, 12, 'Table tool digunakan untuk…..<br>', 'Membuat Segitiga<br>', 'Membuat Lingkaran<br>', 'Mewarnai Grafis<br>', 'Membuat Tabel<br>', 'Membuat garis lurus<br>', 'Membuat Tabel<br>'),
(447, 12, 'Untuk membuat background bisa dipilih dari menu...<br>', 'File<br>', 'Layout<br>', 'Page Setup<br>', 'View<br>', 'Arrange<br>', 'Layout<br>');
INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(448, 12, 'Contour digunakan untuk…..<br>', 'Membentuk sudut dari suatu objek gambar/teks<br>', 'Membuat efek bayangan dari objek gambar/teks<br>', '<div>Menimbulkan efek 3D dari suatu objek gambar/teks dengan cara mengubah warna sisinya</div>', 'Menghilangkan efek 3D dari objek gambar<br>', 'Membentuk garis 3D<br>', '<div>Menimbulkan efek 3D dari suatu objek gambar/teks dengan cara mengubah warna sisinya</div>'),
(449, 12, '<div>Kategori desain grafis berikut ini yang memuat desain buku, majalah, leaflet dan publisitas sejenis adalah ….</div>', 'Printing<br>', 'Web desain<br>', 'Film<br>', 'Identifikasi<br>', 'Desain produk<br>', 'Printing<br>'),
(450, 12, 'Berikut ini yang bukan prinsip-prinsip dari sebuah desain grafis adalah ….<br>', 'Keseimbangan<br>', 'Ritme<br>', 'Tekanan<br>', 'Irama<br>', 'Kesatuan<br>', 'Tekanan<br>'),
(451, 12, 'Penyusun foto yang memiliki kerapatan dan warnna tertentu disebut ….<br>', 'Image<br>', 'Pixel<br>', 'Vektor<br>', 'Raster<br>', 'Bitmap<br>', 'Pixel<br>'),
(452, 12, 'Image vector banyak digunakan untuk gambar-gambar ….<br>', 'Manusia<br>', 'Objek benda<br>', 'Pemandangan<br>', 'Kartun<br>', 'Tanaman<br>', 'Kartun<br>'),
(453, 12, 'Secara garis besar, desain grafis terbagi menjadi dua, yaitu ….<br>', 'Tiff dan JPEG<br>', 'Bitmap dan Vektor<br>', 'Doc dan exl<br>', 'Pixcel dan titik<br>', 'Wma dan docx<br>', 'Bitmap dan Vektor<br>'),
(454, 12, 'Titik-titik penyusun image bitmap dikenal dengan istilah ….<br>', 'Vector<br>', 'Tiff<br>', 'JPEG<br>', 'Pixel<br>', 'Gif<br>', 'Pixel<br>'),
(455, 12, 'Secara teknis bitmap disebut juga dengan ….<br>', 'Solid<br>', 'Raster<br>', 'Simentris<br>', 'Gradient<br>', 'Grafir<br>', 'Raster<br>'),
(456, 12, '<div>Jenis image yang disusun tidak dari pixel-pixel, namun dari objek garis dan kurva dengan .......</div>', 'Bitmap<br>', 'Vektor<br>', 'Tiff<br>', 'Jpeg<br>', 'Pixel<br>', 'Vektor<br>'),
(457, 12, 'Jenis image yang disusun pixel-pixel, dan ketika diperbesar, kualitas gambar akan rusak,&nbsp; bersifat resolution dependent, merupakan grafis denagn basis ….<br>', 'Bitmap<br>', 'Vector<br>', 'Tiff<br>', 'Jpeg<br>', 'Pixel<br>', 'Bitmap<br>'),
(458, 12, 'Aplikasi di bawah ini banyak digunakan untuk pengolah foto adalah ….<br>', 'Corel Draw<br>', 'Macromedia Freehand<br>', 'Adobe Illustrator<br>', 'Adobe Photo Shop<br>', 'Corel Venture<br>', 'Adobe Photo Shop<br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `token` varchar(6) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_jawaban`
--

CREATE TABLE `ujian_jawaban` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `soal_id` int(11) DEFAULT NULL,
  `jawaban` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `essay`
--
ALTER TABLE `essay`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `fk_soal_pelajaran` (`soal_pelajaran`);

--
-- Indeks untuk tabel `essay_jawaban`
--
ALTER TABLE `essay_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jawaban_ujian` (`ujian_id`),
  ADD KEY `fk_jawaban_siswa` (`siswa_id`),
  ADD KEY `fk_jawaban_soal` (`soal_id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id_record`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `fk_soal_pelajaran` (`soal_pelajaran`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD KEY `id_pelajaran` (`id_pelajaran`),
  ADD KEY `id_kelas` (`id_kelas`) USING BTREE;

--
-- Indeks untuk tabel `ujian_jawaban`
--
ALTER TABLE `ujian_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ujian_id` (`ujian_id`,`siswa_id`,`soal_id`),
  ADD KEY `fk_jawaban_ujian` (`ujian_id`),
  ADD KEY `fk_jawaban_siswa` (`siswa_id`),
  ADD KEY `fk_jawaban_soal` (`soal_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `essay`
--
ALTER TABLE `essay`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `essay_jawaban`
--
ALTER TABLE `essay_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `record`
--
ALTER TABLE `record`
  MODIFY `id_record` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ujian_jawaban`
--
ALTER TABLE `ujian_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `essay`
--
ALTER TABLE `essay`
  ADD CONSTRAINT `essay_ibfk_1` FOREIGN KEY (`soal_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Ketidakleluasaan untuk tabel `essay_jawaban`
--
ALTER TABLE `essay_jawaban`
  ADD CONSTRAINT `essay_jawaban_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `essay_jawaban_ibfk_3` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id_ujian`),
  ADD CONSTRAINT `essay_jawaban_ibfk_4` FOREIGN KEY (`soal_id`) REFERENCES `essay` (`soal_id`);

--
-- Ketidakleluasaan untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD CONSTRAINT `pelajaran_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Ketidakleluasaan untuk tabel `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_soal_pelajaran` FOREIGN KEY (`soal_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Ketidakleluasaan untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `ujian_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);

--
-- Ketidakleluasaan untuk tabel `ujian_jawaban`
--
ALTER TABLE `ujian_jawaban`
  ADD CONSTRAINT `ujian_jawaban_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `ujian_jawaban_ibfk_3` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id_ujian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
