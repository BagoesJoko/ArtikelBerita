-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Sep 2024 pada 06.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luckyday`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `created_at`, `updated_at`, `title`, `desc`) VALUES
(1, '2024-08-29 15:12:43', '2024-08-29 15:12:43', 'Redaksi Harian Tinta', '<blockquote>\r\n<p><strong>Pimpinan Perusahaan</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Penasehat Hukum</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Pemimpin Redaksi/Penanggung Jawab</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Redaktur Pelaksana</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Redaktur</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Koorlip Tangerang Raya</strong></p>\r\n\r\n<ol>\r\n	<li>(Tangerang Selatan, Kota Tangerang, Kabupaten Tangerang):<br />\r\n	Bagoes Joko Sembodo</li>\r\n	<li>Koorlip JABODEBEK (Jakarta, Bogor, Depok, Bekasi)<br />\r\n	Bagoes Joko Sembodo</li>\r\n</ol>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Reporter</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Media Sosial</strong></p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong>Marketing </strong>:</p>\r\n\r\n<ul>\r\n	<li>Bagoes Joko Sembodo</li>\r\n</ul>\r\n</blockquote>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `advertises`
--

CREATE TABLE `advertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `advertises`
--

INSERT INTO `advertises` (`id`, `title`, `img`, `category`, `created_at`, `updated_at`) VALUES
(7, 'poster demokrasi', '66d2d1d96f746.jpg', 'poster', '2024-08-31 01:18:33', '2024-08-31 01:18:33'),
(8, 'iklan 1', '66d2d214d8cdf.jpg', 'iklan1', '2024-08-31 01:19:32', '2024-08-31 01:19:32'),
(9, 'javascript', '66d2d286ea7a8.png', 'poster', '2024-08-31 01:21:27', '2024-08-31 01:21:27'),
(10, 'c plus plus', '66d2d2d2d4465.png', 'poster', '2024-08-31 01:22:42', '2024-08-31 01:22:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `user_created` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `slug`, `desc`, `img`, `views`, `updated_at`, `status`, `publish_date`, `user_created`, `created_at`) VALUES
(2, 12, 'Golkar Putar Haluan, Resmi Dukung Airin-Ade di Pilgub Banten 2024!', 'golkar-putar-haluan-resmi-dukung-airin-ade-di-pilgub-banten-2024', '<p><strong>NEWS -&nbsp;</strong></p>\r\n\r\n<p>&nbsp;Kejutan datang dari Partai Golkar pada Pilkada 2024. Partai berlambang pohon beringin ini berbalik arah mendukung bakal pasangan Airin Rachmi Diany-Ade Sumardi untuk Pilgub Banten. Hal ini diperkuat juga dengan penyerahan B1-KWK dari Golkar kepada Airin-Ade Sumardi.</p>\r\n\r\n<p>&ldquo;Untuk Provinsi Banten, yang pasti temen-temen tunggu yang dari kemarin, memang ini prosesnya panjang. Memang barang bagus itu pasti itu memang banyak yang minat,&rdquo; kata Ketum Golkar, Bahlil Lahadalia, di kantor DPP Golkar, Jakarta Barat, Selasa (27/8/2024).</p>\r\n\r\n<p>Bahlil menilai kurang pas bila Golkar tak menghantarkan Airin berlaga di Pilgub Banten. Padahal, menurutnya Golkar merupakan rumah bagi Airin.</p>\r\n\r\n<p>&ldquo;Ibu Airin adalah anak dari kandung Partai Golkar, sebagai ibu daripada anak yang dilahirkan dan dibesarkan, rasanya tidak pas kalau tidak diantarkan oleh ibunya untuk ikut berkompetisi,&rdquo; tuturnya.</p>\r\n\r\n<p>Menurutnya, langkah itu menunjukkan bahwa Golkar adalah partai yang terbuka dan inklusif.</p>\r\n\r\n<p>&ldquo;(Golkar) tidak pernah membeda-bedakan siapa, calon dari (parpol) mana,&rdquo; ucapnya.</p>\r\n\r\n<p>Bahlil menuturkan, keterbukaan Golkar itu sesuai dengan apa yang sering disampaikan oleh Presiden Joko Widodo dan presiden terpilih Prabowo Subianto.</p>\r\n\r\n<p>Ia pun mengungkapkan, Prabowo juga telah menyerahkan semua keputusan politik pada partai-partai Koalisi Indonesia Maju (KIM).</p>\r\n\r\n<p>Dengan ini, Golkar berbalik serahkan B1-KWK kepada Airin dan Ade Sumardi yang sebelumnya diberikan kepada pasangan Andra Soni-Dimyati.</p>\r\n\r\n<p>&ldquo;Partai Golkar menyerahkan B1-KWK kepada pasangan calon gubernur Provinsi Banten, yaitu Ibu Airin dari Partai Golkar dan pasangannya wakil gubernur, yaitu Pak Ade Sumardi,&rdquo; terangnya.</p>\r\n\r\n<p>Diketahui sebelumnya, Golkar resmi mengusung Andra Soni-Dimyati Natakusumah sebagai bakal cagub dan cawagub Banten. Bahkan, Andra-Dimyati telah menerima formulir B1-KWK dari Golkar sebagai salah satu syarat pencalonan ke KPU Banten.</p>\r\n\r\n<p>Formulir B1-KWK diserahkan langsung oleh Ketum DPP Partai Golkar, Bahlil Lahadalia ke Andra Soni-Dimyati.</p>\r\n\r\n<p>&nbsp;</p>', '66d2c7eb22460.webp', 102, '2024-08-31 00:36:15', 'publish', '2024-08-27', 'Redaksi Harian Tinta', '2024-08-27 08:23:59'),
(3, 14, 'Hingga Agustus 2023, Jumlah Pengidap ISPA di Tangsel Tembus 29.699', 'hingga-agustus-2023-jumlah-pengidap-ispa-di-tangsel-tembus-29699', '<p><strong>NEWS -&nbsp;</strong>Dinas Kesehatan (Dinkes) Kota Tangerang Selatan (Tangsel) mencatat sebanyak 29.699 warga terjangkit Infeksi Saluran Pernafasan Akut (ISPA).</p>\r\n\r\n<p>Kepala Dinkes Tangsel, Alin Hendalin Mahdaniar mengatakan angka tersebut tercatat berdasarkan data laporan Puskesmas yang berada di Kota Tangsel dalam rentang waktu Januari hingga awal Agustus 2023.</p>\r\n\r\n<p>&ldquo;Berdasarkan data laporan Puskesmas di Kota Tangsel sampai dengan 2 Agustus 2023 terdapat&nbsp;<em>acute nasopharyngitis</em>&nbsp;(<em>common cold</em>) sebanyak 34.233 sedangkan&nbsp;<em>acute upper respiratory infection</em>&nbsp;(infeksi saluran pernafasan atas akut) sebanyak 29.699,&rdquo; kata Alin dalam keterangannya yang diterima&nbsp;wartawan, Jumat, 4 Agustus 2023.</p>\r\n\r\n<p>Dari data tersebut, Alin mengungkapkan pengidap penyakit ISPA paling banyak tersebar di wilayah dengan kepadatan penduduk tinggi.</p>\r\n\r\n<p>&ldquo;Dari 29.699 itu yang paling banyak itu di daerah dengan tingkat kepadatan tinggi, seperti Pamulang, Pondok Aren dan Ciputat,&rdquo; terangnya.</p>\r\n\r\n<p>Alin menjelaskan ISPA sendiri adalah infeksi yang terjadi di saluran pernapasan, baik saluran pernapasan atas maupun bawah. Infeksi tersebut, lanjut Alin, dapat menimbulkan gejala batuk, pilek, dan demam.</p>\r\n\r\n<p>Alin menyebut, penularan virus atau bakteri penyebab ISPA dapat terjadi melalui kontak dengan percikan air liur orang yang terinfeksi. Virus atau bakteri dalam percikan liur akan menyebar melalui udara kemudian masuk ke hidung atau mulut orang lain.</p>\r\n\r\n<p>&ldquo;Faktor risiko terjadi ISPA adalah anak yang belum diimunisasi campak beresiko menderita ISPA yang bisa berkomplikasi menjadi pneumonia, belum mendapatkan imunisasi DPTHBHib berisiko difteri pertusis, belum mendapatkan imunisasi PCV beresiko penyakit pneumonia, Gangguan Status Gizi (Malnutrisi) berhubungan terhadap terjadinya ISPA pada balita, daya tahan tubuh yang lemah, dan perokok aktif,&rdquo; tuturnya.</p>\r\n\r\n<p>Alin mengungkapkan ISPA sendiri masuk ke dalam salah satu penyakit dari 10 penyakit teratas. Oleh karena itu ia pun mengajak masyarakat untuk bersama-sama melakukan pencegahan ISPA dengan menjaga pola hidup yang sehat.</p>', '66d2c7c4e9912.webp', 13, '2024-08-31 00:35:37', 'publish', '2024-08-28', 'Redaksi Harian Tinta', '2024-08-27 10:05:47'),
(6, 14, 'Ada Peran Arab Saudi Dibalik Kemenangan Jepang Atas Jerman di Piala Dunia?', 'ada-peran-arab-saudi-dibalik-kemenangan-jepang-atas-jerman-di-piala-dunia', '<p><strong>NEWS</strong> - Kejutan kembali terjadi dalam Piala Dunia Qatar 2022. Tim Asia melibas tim calon juara. Kejutan sebelumnya dilakukan Timnas Arab Saudi yang menekuk Argentina dengan skor 2-1.</p>\r\n\r\n<p>Kali ini Jepang memastikan kemenangan bersejarah dalam match day pertama Grup E Piala Dunia Qatar 2022. Duel berlangsung di Stadion Internasional Khalifa, Rabu (23/11/2022) malam WIB.</p>\r\n\r\n<p>Timnas Jepang berhasil melibas Jerman yang disebut-sebut sebagai calon kuat juara Piala Dunia 2022 di Qatar ini.</p>\r\n\r\n<p>Walau Jepang sempat tertinggal lebih dulu, tapi di babak kedua tampil luar biasa. Pantang menyerah dan keuletan menjadi kunci Tim Samurai Biru.</p>\r\n\r\n<p>Terdapat satu sosok yang menjadi penambah semangat juang dalam keberhasilan timnas Jepang menekuk tim panser Jerman.</p>\r\n\r\n<p>Kehebatan Arab Saudi mengalahkan Argentina menginspirasi Jepang saat mengalahkan Jerman pada laga pertama mereka di Piala Dunia 2022.</p>\r\n\r\n<p>Takefusa Kubo bercerita bagaimana semangat para pemain Arab Saudi jadi pemicu mereka untuk bisa tampil mengejutkan di Piala Dunia 2022 ini.</p>\r\n\r\n<p>&ldquo;Kami pergi latihan sembari menonton pertandingan Arab Saudi di bus. Kemenangan mereka jadi inspirasi kami,&rdquo; tutur Kubo, dilansir dari laman marca</p>\r\n\r\n<p>Kemenangan Jepang di sambut dengan gembira oleh Kapten Jepang, Maya Yoshida, meski menolak besar kepala.</p>\r\n\r\n<p>&ldquo;Ini kemenangan besar, tetapi masih sulit untuk bisa lolos dari fase grup. Kemenangan ini toh sangat hebat. Jepang harus tetap rendah hati dan waspada,&rdquo; ujar Yoshida.</p>\r\n\r\n<p>Bek senior yang merumput di Schalke 04 tersebut pun mendedikasikan kemenangan timnya sebagai representasi masyarakat benua Asia.</p>\r\n\r\n<p>&ldquo;Jepang mewakili benua Asia dan banyak pendukung Asia datang mendukung kami. Ini bukti keindahan olahraga sepak bola,&rdquo; Tutur pesepakbola berusia 34 tahun tersebut.</p>', '66d2c77239a82.webp', 103, '2024-08-31 00:34:13', 'publish', '2024-08-28', 'Redaksi Harian Tinta', '2024-08-27 13:18:17'),
(7, 16, 'Ketua Parlemen Rusia Tuding AS Dalang Penangkapan Pendiri Telegram Durov', 'ketua-parlemen-rusia-tuding-as-dalang-penangkapan-pendiri-telegram-durov', '<p>Ketua Duma Negara Rusia Vyacheslav Volodin menegaskan pemerintah Amerika Serikat (AS) menginginkan &quot;kendali penuh&quot; atas media sosial, itulah sebabnya mereka mengatur penangkapan CEO Telegram Pavel Durov, platform pengiriman pesan yang sejauh ini tidak dapat mereka pengaruhi. Anggota parlemen senior itu menggunakan Telegram pada Selasa (27/8/2024), tiga hari setelah penahanan Durov di Prancis, untuk menyatakan Presiden AS Joe Biden ingin mengambil alih kendali aplikasi pengiriman pesan tersebut sebelum pemilu pada November. &quot;Telegram adalah salah satu dari sedikit, tetapi termasuk yang terbesar, platform internet yang tidak dapat dipengaruhi oleh AS.</p>\r\n\r\n<p>Pada saat yang sama, platform ini beroperasi di banyak negara yang menjadi perhatian Washington,&rdquo; papar Volodin. Platform tersebut memiliki hampir satu miliar pengguna terdaftar di seluruh dunia dan paling aktif digunakan di India dan Rusia, menurut World Population Review. Volodin menunjukkan sebagian besar jaringan media sosial global berasal dari AS dan mengklaim Gedung Putih mengendalikannya. Namun, AS belum mampu memaksa Telegram yang berkantor pusat di Dubai dan pemiliknya yang kelahiran Rusia untuk memasok data ke Departemen Luar Negeri atau CIA, menurut Volodin. Pandangan serupa sebelumnya disuarakan mantan sekretaris pers Durov, Georgy Loboushkin, yang mengatakan kepada RT pada Minggu bahwa serangan terhadap pengusaha itu &quot;kemungkinan besar&quot; berasal dari AS, yang &quot;telah lama memburu Pavel Durov.&quot; Durov, yang ditangkap pada Sabtu malam saat tiba di Paris, mengatakan kepada jurnalis Amerika Tucker Carlson pada April bahwa dia telah menerima &quot;terlalu banyak perhatian&quot; dari FBI dan lembaga penegak hukum Amerika lainnya saat berada di tanah AS. Dia juga mengklaim lembaga-lembaga AS telah mencoba merekrut karyawan Telegram dan meyakinkan mereka untuk membuat &#39;pintu belakang&#39; ke dalam messenger tersebut. &quot;Bagi Washington, menggunakan jejaring sosial untuk pengawasan, penyensoran dan penundukan total mereka, termasuk dengan pemerasan dengan kedok memerangi berbagai ancaman, adalah cara-cara tradisional untuk menjalankan pengaruh politik dan eksternal,&quot; ungkap Volodin.<br />\r\n&nbsp;</p>', '66d2c7070215f.webp', 18, '2024-08-31 04:19:41', 'publish', '2024-08-28', 'Redaksi Harian Tinta', '2024-08-27 14:20:23'),
(8, 14, 'Jakarta X Beauty Resmi Dibuka, Upaya Tingkatkan Brand Kecantikan Lokal', 'jakarta-x-beauty-resmi-dibuka-upaya-tingkatkan-brand-kecantikan-lokal', '<p><strong>TintaOtentik.co</strong>&nbsp;&ndash; Jakarta X Beauty kecantikan tahunan ini resmi dibuka pada hari ini, Kamis (6/6/2024) di Jakarta Convention Center (JCC), Jakarta Pusat. Acara ini menjadi peluang produk skincare lokal unjuk gigi.</p>\r\n\r\n<p>Itu diungkapkan oleh CEO Female Daily Network, Hanifa Ambadar, bahwa acara ini menjadi peluang besar untuk UMKM maupun merek skincare lokal untuk mengembangkan pasar agar masuk ke pasar internasional.&nbsp;</p>\r\n\r\n<p>&ldquo;Ketika kita masuk ke pasar Internasional sudah siap secara produk. Indonesia itu punya kearifan lokal yang banyak, bahkan ingredients lokal juga banyak yang berkualitas,&rdquo; kata Hanifa dalam Talkshow Jakarta X Beauty di JCC.&nbsp;</p>\r\n\r\n<p>&ldquo;Hampir semua skincare lokal Indonesia juga bersertifikat halal, itu juga jadi salah satu keuntungan Indonesia,&rdquo; sambungnya.</p>\r\n\r\n<p>Beberapa hal yang harus diperhatikan bagi para pengunjung yang datang ke Jakarta X Beauty yaitu dilarang untuk membawa koper berukuran 28 inci. Selain itu, pengunjung yang membawa rokok ataupun senjata tajam juga tidak diperkenankan masuk.</p>\r\n\r\n<p>Bagi pengunjung yang membawa anak, maka tidak diperbolehkan untuk membawa masuk stroller. Kami bisa titipkan di tempat penitipan sebelum masuk ke dalam venue.&nbsp;</p>\r\n\r\n<p>Jika kamu ingin membeli tiket masuk secara langsung di lokasi (On the Spot/OTS), maka kamu bisa siapkan uang sebesar Rp 30.000 per hari untuk tiket kategori Silver.&nbsp;</p>\r\n\r\n<p>Sedangkan untuk tiket kategori Gold dengan akses 4 hari dibanderol seharga Rp 90.000. Pengunjung yang ingin membeli tiket kategori Platinum untuk akses empat hari, pengunjung akan mendapatkan tote bag eksklusif. Harga untuk satu tiket Platinum dibanderol seharga Rp 125.000.</p>\r\n\r\n<p>Lebih lanjut, acara yang mengusung tema &ldquo;Feature of Beauty&rdquo; ini digelar selama empat hari, yaitu mulai tanggal 6-9 Juni 2024 mendatang.&nbsp;</p>\r\n\r\n<p>Bagi yang ingin mengunjungi Jakarta X Beauty, gate akan dibuka mulai pukul 10.00 WIB sampai dengan pukul 22.00 WIB. Setiap harinya pun akan hadir berbagai beauty content creator, artis, maupun dokter kecantikan yang mengisi talkshow maupun mewakili brand-brand tertentu.</p>', '66d2c6c343053.webp', 5, '2024-08-31 00:31:18', 'publish', '2024-08-28', 'Redaksi Harian Tinta', '2024-08-27 14:27:33'),
(9, 13, 'Polres Tangsel Terima 6 Laporan Dugaan Penipuan Pre-Order Iphone ‘Si Kembar’', 'polres-tangsel-terima-6-laporan-dugaan-penipuan-pre-order-iphone-si-kembar', '<p>&nbsp;Penipuan &lsquo;si kembar* Rihana dan Rihani sedang hangat dibicarakan. Polres&nbsp;<strong>Tangerang Selatan</strong>&nbsp;turut menerima enam laporan dugaan&nbsp;<strong>penipuan</strong>&nbsp;penjualan iPhone oleh &lsquo;si kembar&rsquo; Rihana dan Rihani.</p>\r\n\r\n<p>Enam laporan tersebut berasal dari enam korban berbeda. Rihana dan Rihani dilaporkan dengan pasal dugaan tindak pidana penipuan dan atau penggelapan.</p>\r\n\r\n<p>&ldquo;Polres Tangsel ada menerima laporan terkait kasus tersebut ada enam laporan polisi, dengan enam korban yang berbeda,&rdquo; kata Kasi Humas Polres Tangerang Selatan Ipda Galih kepada wartawan, Rabu (7/6).</p>\r\n\r\n<p>Galih menjelaskan, laporan tersebut berasal dari para korban yang mengaku tak kunjung mendapatkan iPhone seperti yang dijanjikan oleh &lsquo;si kembar&rsquo; sesuai kesepakatan. Pelaku pun juga tak bersedia mengembalikan uang yang sudah disetor korban.</p>\r\n\r\n<p>&ldquo;Terlapor berjanji akan menyerahkan iPhone yang dibeli korban dalam jangka waktu yang disepakati, namun sampai batas waktu yang dijanjikan handphone tidak diberikan, kemudian saat korban minta uangnya dikembalikan, pelaku tidak mengembalikan uang pembayaran,&rdquo; ujar Ipda Galih.</p>\r\n\r\n<p>Ia menuturkan penyidik Sat Reskrim Polres Tangerang Selatan masih mendalami laporan tersebut. Galih mengungkapkan bahwa sejumlah pihak telah dimintai keterangan terkait laporan ini.</p>\r\n\r\n<p>&ldquo;Terhadap korban dan saksi- saksi terkait kasus tersebut sudah ada yang diperiksa, dimintai keterangan, intinya kasus-kasus tersebut berjalan, sudah dalam proses penyelidikan dan penyidikan,&rdquo; ucap dia.</p>\r\n\r\n<p>Sebelumnya, &lsquo;si kembar&rsquo; Rihana dan Rihani ramai dibicarakan di sosial media terkait daksi penipuan penjualan iphone yang mereka lakukan Para korban &lsquo;Si Kembar&rdquo; tersebut ditaksir mengalami kerugian hingga Rp35 miliar.</p>\r\n\r\n<p>Rihana Rihani merupakan seseorang yang awalnya berdomisili di Ciputat, Tangerang Selatan. Mereka pernah tinggal di Greenwood Townhouse 2 yang berlokasi di Cempaka Putih, Ciputat.</p>\r\n\r\n<p>Polres Metro Jakarta Selatan mengungkapkan sudah menerima lima laporan polisi terkait aksi penipuan ini dan sudah masuk ke tahap penyidikan.</p>\r\n\r\n<p>Wakil Kasatreskrim Polres Jakarta Selatan Kompol Henrikus Yossi mengatakan polisi berencana menjemput paksa &lsquo;si kembar&rsquo; karena sudah dua kali mangkir panggilan pemeriksaan.</p>\r\n\r\n<p>&ldquo;Sudah dua kali panggilan saksi terlapor dan tidak memenuhi panggilan sehingga diterbitkan surat perintah membawa,&rdquo; kata Yossi saat dikonfirmasi, Selasa (6/6) dikutip dari CNNIndonesia</p>\r\n\r\n<p>Pusat Pelaporan dan Analisis Transaksi Keuangan (PPATK) telah memblokir 21 rekening milik Rihana dan Rihani.</p>\r\n\r\n<p>Berdasarkan hasil analisis sementara PPATK, &lsquo;si kembar&rsquo; ini melakukan transaksi tunai bernilai signifikan. Diduga transaksi tunai ini dilakukan untuk mempersulit proses pelacakan.</p>\r\n\r\n<p>&ldquo;Dari hasil analisis sementara, diketahui RA dan RI melakukan transaksi tunai bernilai signifikan yang diduga sumber dananya berasal dari penipuan yang mereka lakukan,&rdquo; kata Kepala Biro Humas PPATK Natsir Kongah saat dikonfirmasi.</p>', '66d2c667342fd.webp', 13, '2024-08-31 00:58:43', 'publish', '2024-08-28', 'Redaksi Harian Tinta', '2024-08-27 18:38:30'),
(10, 12, 'Demokrat Tangsel Batal Dukung Riza-Marshel dan Beralih ke Benyamin-Pilar', 'demokrat-tangsel-batal-dukung-riza-marshel-dan-beralih-ke-benyamin-pilar', '<p><strong>Harian Tinta -&nbsp;</strong>&nbsp;Situasi politik pada tahapan pendaftaran calon Walikota dan Wakil Walikota Tangerang Selatan (Tangsel) tahun 2024, ternyata masih terus menimbulkan kejutan<br />\r\n<br />\r\nSaat ini, Partai Demokrat Tangsel mendadak membatalkan dukungan kepada pasangan calon (paslon) Ariza Patria dan Marshel Widianto, lalu beralih kepada lawannya yakni paslon Benyamin Davnie dan Pilar Saga Ichsan.<br />\r\n<br />\r\n<br />\r\nPerihal keputusan ini, langsung diungkapkan oleh Ketua DPC Demokrat Kota Tangsel, Julham Firdaus.<br />\r\n<br />\r\nIa mengatakan, DPC Demokrat Kota Tangsel telah menerima amanah baru dari DPP terkait formulir B 1 KWK No 570/SK-Pilkada/DPP.PD/VIII/2024 untuk pasangan Benyamin Davnie &ndash; Pilar Saga Ichsan untuk Pilkada Tangsel 2024.<br />\r\n<br />\r\n&ldquo;Saya diberi tugas oleh DPP untuk menerima B1 KWK terbaru, yang sebelumnya telah diberikan rekomendasi kepada Riza dan Marshel. Hari ini, B1 KWK diberikan langsung kepada Benyamin-Pilar,&rdquo; kata Julham, Selasa, (27/08/24).<br />\r\n<br />\r\n<a class=\"flex justify-center\" href=\"https://medium.com/@tutsmake.com/laravel-11-integrate-and-use-ckeditor-5-tutorial-ceac8e1328ac\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/iamges/smiling-woman-showing-fresh-green-cauliflower-lettuce-kitchen.jpg\" style=\"height:225px; width:400px\" /></a></p>\r\n\r\n<p>&nbsp;&nbsp;<br />\r\nJulham pun mengungkapkan alasan partainya menolak mendukung pasangan kader Gerindra tersebut, tidak peduli dengan kondisi dan perubahan politik baru-baru ini.<br />\r\n<br />\r\n&ldquo;DPP mengatakan bahwa situasi politik selalu berubah, tetapi kami sebagai bagian struktural wilayah pasti akan melakukannya,&rdquo; ungkapnya.<br />\r\n<br />\r\nUntuk berpartisipasi dalam pemilihan Tangsel 2024, Partai Demokrat Tangsel diminta untuk berkomunikasi dengan pasangan petahana Benyamin Davnie dan Pilar Saga Ichsan setelah dikeluarkannya surat rekomendasi tersebut.<br />\r\n<br />\r\n&ldquo;Tentunya ini menjadi tugas kami Demokrat di Tangsel untuk melaksanakan amanah akhir ini dengan sebaik-baiknya serta merancang banyak hal untuk kemenangan di Pilkada 2024,&rdquo; tukasnya.<br />\r\n<br />\r\nDiketahui sebelumnya, Partai Demokrat melayangkan dukungan kepada pasangan calon Ahmad Riza Patria dan Marshel Widianto.<br />\r\n<br />\r\nPada Sabtu, 20 Juli 2024, Ketua Umum Partai Demokrat Agus Harimurti Yudhoyono (AHY) memberikan surat rekomendasi langsung kepada pasangan tersebut.<br />\r\n<br />\r\nSaat itu, Demokrat menjadi partai keempat setelah Gerindra, NasDem, dan PSI. Sebelumnya, mereka telah menyatakan dukungan mereka untuk pasangan Riza-Marshel melalui surat rekomendasi.<br />\r\n<br />\r\n<strong>Baca juga</strong>&nbsp;<a href=\"http://127.0.0.1:8000/p/polres-tangsel-terima-6-laporan-dugaan-penipuan-pre-order-iphone-si-kembar\">Polres Tangsel Terima 6 Laporan Dugaan Penipuan Pre-Order Iphone &lsquo;Si Kembar&rsquo;</a>&nbsp;</p>', '66d2c61ba553f.webp', 83, '2024-08-31 02:46:19', 'publish', '2024-08-29', 'bagus joko', '2024-08-28 21:13:24'),
(11, 12, 'Ruhamaben-Shinta Serius Bertarung di Pilkada 2024: Kami Akan Kejar Ketertinggalan', 'ruhamaben-shinta-serius-bertarung-di-pilkada-2024-kami-akan-kejar-ketertinggalan', '<p><strong>Harian Tinta -&nbsp;&nbsp;</strong>Salah satu pasangan calon wali kota dan wakil wali kota Tangerang Selatan (Tangsel), Ruhamaben dan Shinta Wahyuni Chairuddin resmi mendaftar ke KPU Tangsel, (29/8/24).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pasangan ini diantar oleh jajaran partai politik pengusung hingga para pendukung, kemudian mereka menyerahkan dokumen pendaftaran syarat cawalkot-cawawalkot kepada Ketua KPU Tangsel dan anggota KPU lainnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ruhamaben mengatakan, setelah pendaftaran ini, ia dan juga Shinta akan segera mengejar ketertinggalan dari pasangan lawan yakni Benyamin Davnie dan Pilar Saga Ichsan yang sudah lebih dahulu terjun ke masyarakat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Jadi kita akan berjuang sekuat tenaga, kita masih ada kesempatan untuk mengejar apa yang sudah dilakukan paslon lain yang mempunyai kesempatan lebih dulu,&rdquo; ucap Ruhamaben setelah mendaftar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lanjutnya keputusan dirinya dan Shinta mendaftar merupakan bukti keseriusan dalam memajukan kota Tangsel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Walau lawan memiliki 16 partai pengusung, Ruhamaben sangat percaya diri dan siap hadir membawa perubahan untuk Tangsel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Peluang besar, karena untuk Pilkada Tangsel 2024 kali ini head to head, saya liat Incumbent itu belum 51 % maka dari itu mayoritas masyarakat kota Tangsel masih berharap ada kepemimpinan lain, maka kami hadir,&rdquo; tuturnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p class=\"flex justify-center\"><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/iamges/02.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p style=\"text-align:center\">Images : Reporter Harian Tinta</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ruhamaben menyatakan, bahwa dirinya akan lakukan gerakan dengan turun bersilaturahmi ke masyarakat, lalu kerja-kerja digital juga akan diperkuat agar masyarakat mendapatkan informasi yang cepat dan tepat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Terkait head to head melawan pasangan calon Benyamin-Pilar, ada analogi yang keluar kalau Ruhamaben-Shinta adalah semut yang sedang melawan gajah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Namun, Ruhamaben hanya tertawa dan membalikan analogi tersebut. &ldquo;Tidak selalu yang besar menang, semut kalau masuk ke dalam kuping gajah selesai juga tuh gajah, jadi saya tidak takut</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Saat disinggung terkait isu-isu di media sosial soal PKS yang tidak serius dan terkesan hanya sekedar formalitas dalam bertarung di Pilkada 2024, Rumahan tangkis rumor tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Kita hadir tulus untuk membantu masyarakat, kita ingin berjuang demi kemaslahatan masyarakat, untuk memajukan tangsel dan mesejahterakan masyarakat, ini yang akan kita buktikan ke masyarakat,&rdquo; tuturnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Tidak mungkin kita merelakan amanah rakyat yang begitu besar kepada kami untuk kita khianati, kita lebih terhormat kalau berjuang dulu baru soal kalah menang nanti bisa dilihat,&rdquo; tandasnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<blockquote>\r\n<p><strong>Baca Juga -&nbsp;</strong><a href=\"http://127.0.0.1:8000/p/demokrat-tangsel-batal-dukung-riza-marshel-dan-beralih-ke-benyamin-pilar\">Demokrat Tangsel Batal Dukung Riza-Marshel dan Beralih ke Benyamin-Pilar</a></p>\r\n</blockquote>', '66d2e7b9181bd.webp', 37, '2024-08-31 02:52:28', 'publish', '2024-08-30', 'bagus joko', '2024-08-30 08:41:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1725030718),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1725030718;', 1725030718);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(10, 'Teknologi', 'teknologi', '2024-08-26 20:34:25', '2024-08-26 20:34:25'),
(11, 'Hukum', 'hukum', '2024-08-26 20:51:10', '2024-08-26 20:51:10'),
(12, 'Politik', 'politik', '2024-08-26 20:51:24', '2024-08-26 20:51:24'),
(13, 'Kriminal', 'kriminal', '2024-08-26 20:51:37', '2024-08-26 20:51:37'),
(14, 'Lifestyle', 'lifestyle', '2024-08-26 20:52:11', '2024-08-26 20:52:11'),
(15, 'Entertaiment', 'entertaiment', '2024-08-26 20:52:26', '2024-08-26 20:52:26'),
(16, 'internasional', 'internasional', '2024-08-27 14:12:45', '2024-08-27 14:12:45');

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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_27_012428_create_categories_table', 1),
(5, '2024_08_27_043506_create_articles_table', 2),
(6, '2024_08_29_213741_create_about_table', 3),
(7, '2024_08_29_215123_create_abouts_table', 4),
(8, '2024_08_30_074503_create_advertises_table', 5);

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
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('B9ursCM4MJcHJOXlvYGpsEq8BdodBGlE0yrhPgVM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjZ0TnR4TXlNaDhIUVIxclM1RlF1eGxaOVJrenMwVkxZUXdiOEl5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725136017),
('Mjzx2ifCEU4OyqkbrxIQbZqxbClU93fxdsQunmoJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXlORjNwcGtVYjZCWXQ5SGtPS1F1V3UzOHZrcXRVWFhxUDhra0ZHNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725163426),
('oUZwU0ChkbYT5Jmx55SzhvmwEuYJAeROB5bNgMgT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOW04MTNPNnRWeUd0c0JIeHQ4WUgzTFN1Z2E0aVRrblE5RDdnenhBYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725122457),
('TRz29XrziIMfInsDtVoijRDH7FkK53sambwE38V1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV2o5R2h4alpaTE0ycVQ4YjJlZzhKVmtWcktuelBBV29QdVRlWWlnaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzI1MDg2OTUwO319', 1725110202);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'bagus joko', 'bagoes156@gmail.com', '2024-08-19 23:20:50', '$2y$12$Yf7PKe7Y0yAoDJKRsTmiVeSHwa4vI/UR0YqHDmUhE5Y4ycF56XLHW', NULL, '2024-08-27 17:57:06', '2024-08-27 17:57:06', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_index` (`category_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
