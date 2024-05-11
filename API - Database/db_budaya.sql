-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 02:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_budaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `gambar`) VALUES
(1, '1.jpeg'),
(2, '2.jpeg'),
(3, '3.jpeg'),
(4, '4.jpeg'),
(5, '5.jpeg'),
(6, '6.jpeg'),
(7, '7.jpeg'),
(8, '8.jpeg'),
(9, '9.jpeg'),
(10, '10.jpeg'),
(11, '11.jpeg'),
(12, '12.jpeg'),
(13, '13.jpeg'),
(14, '14.jpeg'),
(15, '15.jpeg'),
(16, '16.jpeg'),
(17, '17.jpeg'),
(18, '18.jpeg'),
(19, '19.jpeg'),
(20, '20.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `info_budaya`
--

CREATE TABLE `info_budaya` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_budaya`
--

INSERT INTO `info_budaya` (`id`, `judul`, `konten`, `gambar`, `tgl`) VALUES
(1, 'Upacara Tedak Siten', 'Upacara Tedak Siten adalah sebuah tradisi Jawa yang dilakukan untuk bayi yang berusia sekitar 7 bulan. Upacara ini merupakan bagian penting dari budaya Jawa yang bertujuan untuk memberikan perlindungan dan doa agar bayi tumbuh sehat secara fisik, mental, dan spiritual. Dalam upacara ini, bayi diperkenalkan kepada makanan dan benda-benda simbolis yang melambangkan kehidupan serta kebahagiaan. Selain itu, juga dilakukan serangkaian ritual dan doa yang dipimpin oleh seorang ahli spiritual atau sesepuh. Upacara Tedak Siten dianggap sebagai langkah awal penting dalam perjalanan kehidupan bayi dalam budaya Jawa.\r\nSelama proses tradisi Tedhak Siten ini ada beberapa rangkaian kegiatan yang perlu dilakukan, yakni:\r\na.	Membersihkan kaki\r\nb.	Berjalan melewati tujuh jadah\r\nc.	Tangga dari Tebu Wulung\r\nd.	Kurungan\r\ne.	Memandikan Anak\r\nf.	Memberikan udhik-udhik\r\n', '1.jpeg', '2024-04-27 07:48:01'),
(2, 'Upacara Bau Nyale', 'Upacara Bau Nyale adalah sebuah tradisi yang berasal dari Lombok, Nusa Tenggara Barat, Indonesia. Tradisi ini dilakukan setiap tahun sebagai bagian dari perayaan festival Bau Nyale yang diadakan untuk memperingati legenda Putri Mandalika, seorang putri legendaris di Lombok.\r\n\r\nDalam upacara ini, masyarakat setempat berbondong-bondong menuju pantai untuk menangkap cacing laut yang disebut \"nyale\". Cacing-cacing ini dipercaya memiliki kekuatan magis dan dianggap sebagai peninggalan Putri Mandalika yang berubah menjadi nyale setelah dia mengorbankan dirinya untuk mencegah perang antara dua pangeran yang jatuh cinta padanya.\r\n\r\nSetelah cacing-cacing tersebut ditangkap, mereka dimasak dan disajikan sebagai hidangan dalam perayaan bersama. Upacara ini dianggap sebagai sarana untuk menyatukan masyarakat, mempererat hubungan sosial, serta untuk menghormati dan merayakan warisan budaya dan sejarah mereka.', '2.jpeg', '2024-04-27 07:48:01'),
(3, 'Pantun Betawi', 'Pantun Betawi adalah salah satu bentuk puisi lisan yang berasal dari masyarakat Betawi, Jakarta, Indonesia. Pantun Betawi memiliki ciri khas tersendiri dalam gaya bahasa, irama, dan tema yang digunakan. Berikut adalah simpulan secara rinci tentang Pantun Betawi:\r\n\r\na.	Asal Usul : Pantun Betawi berasal dari budaya Betawi, yang merupakan campuran dari berbagai budaya seperti Melayu, Arab, Cina, dan Jawa. Pantun Betawi berkembang sebagai bentuk seni lisan tradisional yang diwariskan secara turun temurun.\r\nb.	Struktur : Pantun Betawi memiliki pola empat baris dengan rima akhir pada baris kedua dan keempat. Biasanya, baris pertama dan ketiga berfungsi sebagai pengenalan tema atau situasi, sementara baris kedua dan keempat merupakan respons atau punchline.\r\nc.	Bahasa dan Irama : Pantun Betawi ditandai dengan penggunaan bahasa Betawi yang khas, yang mencampurkan unsur bahasa Melayu, Arab, Jawa, dan Belanda. Irama yang dihasilkan dari pantun ini sering kali didukung oleh musik tradisional Betawi seperti gambang kromong atau tanjidor.\r\nd.	Tema dan Fungsi: Pantun Betawi digunakan dalam berbagai kesempatan, mulai dari hiburan di acara-acara rakyat, pernikahan, hingga sebagai sarana menyampaikan pesan atau nasihat secara humoris. Pantun Betawi juga sering kali digunakan dalam dialog antara dua atau lebih orang sebagai bentuk interaksi sosial yang ceria.\r\ne.	Warisan Budaya: Pantun Betawi merupakan bagian penting dari warisan budaya Betawi yang perlu dilestarikan dan dijaga keberlangsungannya. Melalui pantun ini, nilai-nilai budaya dan tradisi Betawi dapat terus disebarkan dan diperkaya dari generasi ke generasi.\r\n', '3.jpeg', '2023-08-17 07:50:29'),
(4, 'Upacara Ma’Nene', 'Upacara Ma’Nene adalah tradisi pemakaman yang berasal dari suku Toraja di Sulawesi Selatan, Indonesia. Tradisi ini dikenal karena prosesi penggalian kembali jenazah yang telah meninggal, penyucian jenazah, serta perayaan yang diadakan bersama keluarga dan komunitas. Berikut adalah simpulan secara rinci tentang Upacara Ma’Nene:\r\n\r\na.	Makna dan Tujuan: Upacara Ma’Nene dilakukan sebagai bentuk penghormatan terhadap para leluhur dan pengekspresian cinta kasih terhadap orang yang telah meninggal. Tujuan utamanya adalah untuk membersihkan dan memuliakan jenazah, serta memperbaharui penghormatan terhadap leluhur.\r\nb.	Prosesi Penggalian Kembali: Salah satu ciri khas dari Upacara Ma’Nene adalah penggalian kembali jenazah dari makam untuk kemudian dibersihkan, diganti pakaian, dan dirawat kembali. Proses ini dilakukan dengan penuh penghormatan dan dianggap sebagai bentuk perawatan terhadap jenazah.\r\nc.	Penyucian Jenazah: Setelah jenazah dibersihkan, dilakukan prosesi penyucian dengan membersihkan sisa-sisa kotoran dan debu dari tubuh jenazah. Hal ini dilakukan sebagai simbol kesucian dan pemurnian jenazah sebelum dikenang kembali oleh keluarga dan komunitas.\r\nd.	Perayaan dan Ritual: Setelah prosesi penggalian kembali dan penyucian selesai, dilakukanlah perayaan yang melibatkan seluruh keluarga dan komunitas. Dalam perayaan ini, jenazah yang telah dimuliakan akan diperlihatkan kepada orang banyak, seringkali disertai dengan tarian, musik, dan santapan bersama.\r\ne.	Warisan Budaya: Upacara Ma’Nene merupakan bagian penting dari warisan budaya Toraja yang perlu dilestarikan. Tradisi ini tidak hanya sebagai bentuk penghormatan terhadap leluhur, tetapi juga sebagai simbol kebersamaan dan keharmonisan antaranggota komunitas.', '4.jpeg', '2024-01-09 07:50:29'),
(5, 'Upacara Potong Rambut Gimbal', 'Upacara Potong Rambut Gimbal adalah sebuah tradisi yang dilakukan oleh masyarakat Rastafarian, terutama di Jamaika, sebagai bagian dari ritual keagamaan dan budaya. Berikut adalah simpulan secara rinci tentang Upacara Potong Rambut Gimbal:\r\n\r\na.	Makna dan Filosofi: Potong Rambut Gimbal merupakan momen penting dalam kehidupan seorang Rastafarian. Gimbal, atau dreadlocks, adalah simbol penting dalam keyakinan Rastafarian, mewakili kesucian, kesederhanaan, dan kesetaraan. Potong Rambut Gimbal bukan hanya proses fisik, tetapi juga merupakan simbol pembebasan dari norma-norma sosial dan spiritual.\r\nb.	Ritual dan Persiapan: Sebelum pelaksanaan potong rambut, biasanya dilakukan persiapan spiritual yang melibatkan doa dan meditasi. Para Rastafarian percaya bahwa potong rambut gimbal adalah suatu peristiwa yang sakral, sehingga persiapan mental dan spiritual sangat penting.\r\nc.	Pelaksanaan: Potong Rambut Gimbal dilakukan dengan hati-hati oleh seseorang yang dipercaya dalam komunitas, sering kali sesama Rastafarian atau seseorang dengan keahlian khusus dalam menangani dreadlocks. Prosesnya dilakukan dengan penuh penghormatan terhadap gimbal yang dipotong, dan sering kali diiringi dengan nyanyian atau pembacaan doa.\r\nd.	Makna Sosial dan Identitas: Bagi seorang Rastafarian, potong rambut gimbal bukan hanya tentang perubahan fisik, tetapi juga tentang perubahan identitas dan hubungan dengan komunitas. Hal ini bisa menjadi momen refleksi tentang komitmen terhadap keyakinan dan nilai-nilai Rastafarianisme.\r\ne.	Penerimaan dan Dukungan Komunitas: Setelah potong rambut dilakukan, biasanya diadakan perayaan atau pertemuan komunitas untuk merayakan perubahan tersebut. Komunitas memberikan dukungan dan penerimaan atas keputusan individu untuk memotong rambut gimbal, sambil tetap memelihara nilai-nilai yang diyakini dalam kepercayaan Rastafarian.', '5.jpeg', '2023-02-21 07:54:55'),
(6, 'Upacara Tawur Agung', 'Upacara Tawur Agung adalah sebuah ritual besar dalam agama Hindu yang dilakukan di Bali, Indonesia, sebagai bagian dari perayaan Hari Raya Nyepi. Berikut adalah simpulan secara rinci tentang Upacara Tawur Agung:\r\n\r\na.	Makna dan Tujuan: Tawur Agung merupakan upacara yang dimaksudkan untuk membersihkan alam semesta dari kekuatan jahat dengan cara melakukan persembahan kepada para dewa dan mengadakan ritual pembakaran ogoh-ogoh. Tujuan utamanya adalah menciptakan keseimbangan alam dan memulai tahun baru Saka dengan kesucian.\r\nb.	Persiapan: Sebelum pelaksanaan Tawur Agung, masyarakat Bali melakukan persiapan yang matang, termasuk pembuatan ogoh-ogoh (patung raksasa yang melambangkan kekuatan jahat), mempersiapkan persembahan untuk dewa-dewa, dan membersihkan lingkungan.\r\nc.	Ritual Utama: Upacara Tawur Agung dimulai dengan prosesi persembahan dan doa di pura-pura (kuil Hindu). Kemudian, ogoh-ogoh yang telah dibuat akan diarak di sepanjang jalan menuju tempat pembakaran. Di tempat pembakaran, ogoh-ogoh dibakar sebagai simbol pembasmi kejahatan.\r\nd.	Makna Simbolis: Tawur Agung mengandung makna simbolis yang dalam. Pembakaran ogoh-ogoh melambangkan pengusiran kekuatan jahat dan pembersihan alam semesta dari energi negatif. Ini juga merupakan wujud penghormatan kepada para dewa sebagai pemimpin kosmos.\r\ne.	Kesinambungan Budaya: Upacara Tawur Agung adalah bagian integral dari tradisi dan budaya Hindu Bali yang telah diwariskan dari generasi ke generasi. Selain sebagai upacara keagamaan, Tawur Agung juga menjadi atraksi wisata yang menarik bagi wisatawan yang ingin merasakan keindahan dan kekayaan budaya Bali.', '6.jpeg', '2021-12-06 12:55:44'),
(7, 'Upacara Mamanda', 'Upacara Mamanda adalah sebuah tradisi sakral yang berasal dari suku Bugis-Makassar di Sulawesi Selatan, Indonesia. Berikut adalah simpulan secara rinci tentang Upacara Mamanda:\r\n\r\na.	Asal Usul dan Makna: Upacara Mamanda dilakukan sebagai bentuk penghormatan terhadap leluhur dan merupakan bagian penting dari tradisi keagamaan suku Bugis-Makassar. Mamanda adalah upacara adat yang melibatkan pemanggilan roh para leluhur untuk memberikan restu, perlindungan, dan keberkahan kepada keturunan yang masih hidup.\r\nb.	Persiapan: Sebelum pelaksanaan upacara, dilakukan persiapan yang matang termasuk mempersiapkan berbagai macam perlengkapan, seperti sesajen (persembahan), pakaian adat, dan tempat pelaksanaan yang sesuai.\r\nc.	Pelaksanaan: Upacara dimulai dengan pembacaan mantra dan doa oleh seorang pawang atau pemimpin spiritual yang dipercaya. Kemudian, dilakukan serangkaian ritual termasuk penaburan bunga, pembakaran dupa, dan penyerahan sesajen kepada para leluhur.\r\nd.	Hubungan dengan Alam Gaib: Upacara Mamanda diyakini dapat membuka hubungan antara dunia nyata dan alam gaib, sehingga para leluhur dapat berkomunikasi dan memberikan bimbingan kepada keturunan yang masih hidup.\r\ne.	Makna Sosial dan Kultural: Upacara Mamanda tidak hanya memiliki makna spiritual, tetapi juga memiliki nilai-nilai sosial dan kultural yang penting bagi masyarakat Bugis-Makassar. Upacara ini memperkuat hubungan antargenerasi, memelihara tradisi leluhur, dan memperkokoh identitas budaya suku Bugis-Makassar.', '7.jpeg', '2021-12-29 12:59:12'),
(8, 'Tari Enggang', 'Tari Enggang adalah salah satu tarian tradisional yang berasal dari suku Dayak di Kalimantan, Indonesia. Berikut adalah simpulan secara rinci tentang Tari Enggang:\r\n\r\na.	Asal Usul dan Makna: Tari Enggang berasal dari suku Dayak, salah satu suku pribumi yang mendiami Kalimantan. Enggang, atau burung enggang, adalah burung bangau yang dianggap sebagai simbol keindahan dan keanggunan dalam budaya Dayak. Tarian ini menggambarkan gerakan-gerakan burung enggang dalam mencari makan, bermain, dan berkembang biak.\r\nb.	Gerakan dan Irama: Tarian Enggang ditandai dengan gerakan yang anggun dan lembut, menyerupai gerakan burung enggang yang elegan. Gerakan-gerakan tarian ini sering kali mengikuti irama musik yang khas, yang dimainkan dengan alat musik tradisional seperti gong dan gendang.\r\nc.	Kostum dan Atribut: Para penari Tari Enggang mengenakan kostum tradisional yang berwarna-warni dan dihiasi dengan motif-motif khas Dayak, seperti motif burung, tanaman, atau binatang. Beberapa penari juga mengenakan hiasan kepala yang menyerupai kepala burung enggang.\r\nd.	Makna Budaya dan Identitas: Tari Enggang bukan hanya sebagai bentuk hiburan atau seni belaka, tetapi juga memiliki makna budaya yang dalam. Tarian ini menjadi bagian penting dari identitas budaya suku Dayak, memperkuat rasa kebersamaan dan kebanggaan akan warisan budaya mereka.\r\ne.	Pentingnya Pelestarian: Seiring dengan modernisasi dan perubahan zaman, Tari Enggang menghadapi tantangan dalam pelestiarian dan pengembangannya. Oleh karena itu, penting bagi masyarakat Dayak dan pihak-pihak terkait untuk terus memperjuangkan pelestarian dan penyebaran tarian ini, baik di tingkat lokal maupun nasional.', '8.jpeg', '2021-12-06 13:00:22'),
(9, 'Tari Lengger', 'Tari Lengger adalah sebuah tarian tradisional Jawa yang berasal dari daerah Banyumas, Jawa Tengah, Indonesia. Berikut adalah simpulan secara rinci tentang Tari Lengger:\r\n\r\na.	Asal Usul dan Sejarah: Tari Lengger memiliki akar budaya yang dalam di masyarakat Jawa, khususnya di daerah Banyumas. Tarian ini memiliki sejarah yang panjang dan telah menjadi bagian integral dari kehidupan dan budaya masyarakat setempat.\r\nb.	Gaya dan Gerakan: Tari Lengger ditandai dengan gerakan yang lemah gemulai dan sensual. Para penari menggunakan gerakan tangan dan tubuh yang lembut dan mengalun, sering kali disertai dengan senyum manis. Gerakan-gerakan tersebut menggambarkan keanggunan dan kehalusan.\r\nc.	Kostum dan Atribut: Para penari Tari Lengger mengenakan kostum tradisional Jawa yang indah dan mewah. Kostum ini seringkali dipenuhi dengan hiasan-hiasan yang berkilauan dan warna-warni. Selain itu, penari juga sering mengenakan hiasan kepala dan aksesori tambahan yang memperindah penampilan.\r\nd.	Makna dan Fungsi: Tari Lengger memiliki beragam makna dan fungsi dalam masyarakat Jawa. Secara tradisional, tarian ini sering dipentaskan dalam berbagai upacara adat, perayaan, atau acara sosial sebagai bagian dari hiburan dan penghormatan kepada tamu-tamu penting. Selain itu, Tari Lengger juga dapat menjadi sarana ekspresi seni dan keindahan bagi penonton dan penari.\r\ne.	Pentingnya Pelestarian: Seiring dengan perkembangan zaman dan perubahan budaya, Tari Lengger menghadapi tantangan dalam pelestariannya. Oleh karena itu, penting bagi masyarakat Banyumas dan pihak-pihak terkait untuk terus memperjuangkan pelestarian dan pengembangan tarian ini sebagai bagian dari warisan budaya yang kaya dan berharga.', '9.jpeg', '2024-04-20 13:01:47'),
(10, 'Tari Piring', 'Tari Piring adalah tarian tradisional Minangkabau dari Sumatra Barat, Indonesia, yang memperlihatkan kepiawaian para penari dalam menari sambil memegang piring di tangan mereka. Berikut adalah simpulan secara rinci tentang Tari Piring:\r\n\r\na.	Asal Usul dan Sejarah: Tari Piring memiliki akar budaya yang dalam di masyarakat Minangkabau. Tarian ini diyakini berasal dari tradisi perang Silek (seni bela diri Minangkabau) di mana para prajurit membawa senjata sambil menari. Seiring waktu, tarian ini berkembang menjadi bentuk seni pertunjukan yang lebih terstruktur.\r\nb.	Gerakan dan Teknik: Tari Piring ditandai dengan gerakan yang dinamis dan atraktif. Para penari menampilkan gerakan-gerakan yang lincah dan cekatan sambil memegang piring-piring di tangan mereka. Gerakan-gerakan tersebut mencakup putaran tubuh, loncatan, dan gerakan tangan yang mengagumkan.\r\nc.	Simbolisme: Tari Piring memiliki makna simbolis yang dalam. Piring yang dipegang oleh para penari melambangkan kekayaan, kelimpahan, dan kemakmuran dalam budaya Minangkabau. Gerakan memutar piring juga diinterpretasikan sebagai simbol energi dan kesuburan.\r\nd.	Kostum dan Aksesori: Para penari Tari Piring mengenakan pakaian tradisional Minangkabau yang indah dan berwarna-warni. Mereka juga sering mengenakan hiasan kepala dan perhiasan tambahan yang memperindah penampilan. Selain itu, piring-piring yang digunakan sering kali dihias dengan motif-motif artistik.\r\ne.	Pentingnya Pelestarian: Sebagai bagian dari warisan budaya Minangkabau, Tari Piring perlu dilestarikan dan dijaga keberlangsungannya. Melalui pertunjukan dan pelatihan, generasi muda dapat belajar dan memahami nilai-nilai budaya yang terkandung dalam tarian ini serta menghargai warisan budaya mereka.', '10.jpeg', '2022-11-15 13:03:44'),
(11, 'Tari Saman', 'Tari Saman adalah tarian tradisional Aceh, Indonesia, yang terkenal dengan gerakan cepat, padu serentak, dan diiringi dengan nyanyian berirama. Berikut adalah simpulan secara rinci tentang Tari Saman:\r\n\r\na.	Asal Usul dan Sejarah: Tari Saman memiliki akar budaya yang dalam di masyarakat Aceh. Tarian ini diyakini berasal dari tradisi komunitas yang digunakan untuk menyampaikan pesan-pesan moral, agama, atau sejarah secara lisan. Tari Saman kemudian berkembang menjadi bentuk pertunjukan yang lebih terstruktur.\r\nb.	Gerakan dan Ritme: Tari Saman ditandai dengan gerakan yang serempak dan terkoordinasi secara presisi. Para penari duduk berbaris dan mengepalkan tangan mereka dengan gerakan yang cepat dan ritmis. Gerakan ini sering kali diiringi dengan nyanyian yang khas serta alat musik tradisional seperti rebana.\r\nc.	Simbolisme: Tari Saman tidak hanya sebagai bentuk hiburan, tetapi juga memiliki makna dan pesan yang dalam. Gerakan yang seragam dan padu serentak menggambarkan rasa persatuan, kebersamaan, dan solidaritas dalam masyarakat Aceh. Selain itu, tarian ini juga sering kali mengandung pesan-pesan religius dan moral.\r\nd.	Kostum dan Aksesori: Para penari Tari Saman biasanya mengenakan pakaian tradisional Aceh yang warna-warni dan indah. Mereka juga sering mengenakan hiasan kepala dan perhiasan tambahan yang memperindah penampilan. Selain itu, beberapa penari juga menggunakan sarung tangan sebagai bagian dari kostum.\r\ne.	Pentingnya Pelestarian: Sebagai bagian dari warisan budaya Aceh, Tari Saman perlu dilestarikan dan dijaga keberlangsungannya. Melalui pertunjukan, pelatihan, dan pendidikan, generasi muda dapat mempelajari dan memahami nilai-nilai budaya yang terkandung dalam tarian ini serta memperkaya dan memperluas warisan budaya mereka.', '11.jpeg', '2023-10-13 13:05:26'),
(12, 'Tari Serimpi', 'Tari Serimpi adalah sebuah tarian tradisional Jawa yang indah dan elegan, sering dipentaskan dalam berbagai upacara adat, upacara keagamaan, dan acara budaya. Berikut adalah simpulan secara rinci tentang Tari Serimpi:\r\n\r\na.	Asal Usul dan Sejarah: Tari Serimpi berasal dari keraton Jawa pada masa lampau dan dikaitkan dengan kebudayaan istana. Tarian ini diyakini berasal dari abad ke-18 atau ke-19 dan merupakan salah satu tarian istana yang paling dihormati dan dianggap anggun.\r\nb.	Gerakan dan Gaya: Tari Serimpi ditandai dengan gerakan yang lemah gemulai dan elegan. Para penari menampilkan gerakan-gerakan yang halus dan lembut, sering kali dengan gerakan tangan yang indah dan gerakan kaki yang terkoordinasi dengan baik.\r\nc.	Kostum dan Aksesori: Para penari Tari Serimpi mengenakan pakaian tradisional Jawa yang mewah dan berkilau. Kostum ini sering kali terdiri dari kebaya (blus Jawa) yang dihiasi dengan payet dan batik, serta sarung atau kain panjang yang indah. Mereka juga sering mengenakan mahkota atau hiasan kepala yang berkilauan.\r\nd.	Makna dan Simbolisme: Tari Serimpi memiliki makna simbolis yang dalam. Gerakan yang lembut dan harmonis mencerminkan keanggunan, kehalusan, dan keindahan. Tarian ini juga sering kali mengandung pesan-pesan moral, agama, atau sejarah yang disampaikan melalui gerakan dan ekspresi para penari.\r\ne.	Pentingnya Pelestarian: Sebagai bagian dari warisan budaya Jawa, Tari Serimpi perlu dilestarikan dan dijaga keberlangsungannya. Melalui pelatihan, pertunjukan, dan pendidikan, generasi muda dapat mempelajari dan memahami nilai-nilai budaya yang terkandung dalam tarian ini serta memperkaya dan memperluas warisan budaya mereka.', '12.jpeg', '2019-09-26 13:07:40'),
(13, 'Tari Sekapur Sirih', 'Tari Sekapur Sirih adalah sebuah tarian tradisional Melayu yang berasal dari wilayah Riau, Sumatra, Indonesia. Tarian ini merupakan bagian penting dari budaya Melayu dan sering dipentaskan dalam berbagai upacara adat, perayaan, dan acara keagamaan. Berikut adalah simpulan secara rinci tentang Tari Sekapur Sirih:\r\n\r\na.	Asal Usul dan Sejarah: Tari Sekapur Sirih memiliki akar budaya yang dalam di masyarakat Melayu Riau. Tarian ini diyakini berasal dari zaman kerajaan Melayu Riau yang kaya akan tradisi adat dan kebudayaan Melayu.\r\nb.	Gerakan dan Gaya: Tari Sekapur Sirih ditandai dengan gerakan yang lemah gemulai dan anggun. Para penari menampilkan gerakan-gerakan yang halus dan lembut, sering kali dengan gerakan tangan yang indah dan gerakan tubuh yang mengalun.\r\nc.	Kostum dan Aksesori: Para penari Tari Sekapur Sirih mengenakan pakaian tradisional Melayu yang elegan dan berwarna-warni. Kostum ini sering kali terdiri dari baju kurung atau baju kebaya yang dihiasi dengan sulaman dan hiasan-hiasan yang indah. Selain itu, mereka juga sering mengenakan hiasan kepala dan aksesori tambahan yang memperindah penampilan.\r\nd.	Makna dan Simbolisme: Tari Sekapur Sirih memiliki makna yang dalam dalam budaya Melayu Riau. Gerakan-gerakan yang lembut dan harmonis mencerminkan keanggunan, kehalusan, dan keindahan budaya Melayu. Tarian ini juga sering kali mengandung pesan-pesan moral, agama, atau sejarah yang disampaikan melalui gerakan dan ekspresi para penari.\r\ne.	Pentingnya Pelestarian: Sebagai bagian dari warisan budaya Melayu, Tari Sekapur Sirih perlu dilestarikan dan dijaga keberlangsungannya. Melalui pelatihan, pertunjukan, dan pendidikan, generasi muda dapat mempelajari dan memahami nilai-nilai budaya yang terkandung dalam tarian ini serta memperkaya dan memperluas warisan budaya mereka.', '13.jpeg', '2023-12-10 13:09:49'),
(14, 'Tari Panen', 'Tari Panen adalah sebuah tarian tradisional yang menggambarkan proses panen padi, jagung, atau tanaman lainnya. Berikut adalah simpulan secara rinci tentang Tari Panen:\r\n\r\na.	Asal Usul dan Sejarah: Tari Panen memiliki akar budaya yang dalam di banyak masyarakat agraris di seluruh dunia. Tarian ini diyakini berasal dari zaman pra-sejarah, di mana proses panen merupakan kegiatan vital dalam kehidupan masyarakat agraris.\r\nb.	Gerakan dan Gaya: Tari Panen ditandai dengan gerakan-gerakan yang menggambarkan kegiatan panen secara nyata. Para penari menampilkan gerakan-gerakan seperti membawa parang, mencabut tanaman, atau mengikat ikatan padi dengan gerakan yang lincah dan ritmis.\r\nc.	Kostum dan Aksesori: Para penari Tari Panen biasanya mengenakan pakaian tradisional petani atau buruh tani yang sesuai dengan budaya setempat. Kostum ini sering kali sederhana namun fungsional, mencerminkan kepraktisan dan kebersahajaan dalam kehidupan petani.\r\nd.	Makna dan Simbolisme: Tari Panen memiliki makna yang dalam dalam budaya agraris. Gerakan-gerakan yang dilakukan mencerminkan kerja keras, kebersamaan, dan rasa syukur atas hasil panen yang diperoleh. Tarian ini juga sering kali dianggap sebagai bentuk ungkapan rasa terima kasih kepada alam dan dewa-dewi pertanian.\r\ne.	Pentingnya Pelestarian: Sebagai bagian dari warisan budaya agraris, Tari Panen perlu dilestarikan dan dijaga keberlangsungannya. Melalui pertunjukan, pelatihan, dan pendidikan, generasi muda dapat memahami nilai-nilai budaya yang terkandung dalam tarian ini serta menghargai dan memperkaya tradisi panen dalam masyarakat agraris.', '14.jpeg', '2022-03-06 13:11:28'),
(15, 'Pantun Melayu', 'Pantun Melayu adalah sebuah bentuk puisi lisan tradisional yang berasal dari budaya Melayu dan tersebar luas di berbagai negara yang memiliki komunitas Melayu, seperti Malaysia, Indonesia, dan Brunei. Berikut adalah simpulan secara rinci tentang Pantun Melayu:\r\n\r\na.	Asal Usul dan Sejarah: Pantun Melayu memiliki akar budaya yang panjang dan berkembang dalam tradisi lisan masyarakat Melayu. Pantun telah menjadi bagian tak terpisahkan dari kehidupan sehari-hari, digunakan dalam berbagai situasi, mulai dari hiburan hingga perayaan, dan bahkan dalam perdebatan dan dialog.\r\nb.	Struktur dan Format: Pantun Melayu memiliki pola struktur yang khas, biasanya terdiri dari empat baris dengan rima yang bersajak pada baris kedua dan keempat. Pola ini membuatnya mudah diingat dan dilakukan improvisasi. Pantun sering kali juga mengikuti pola sajak A-B-A-B.\r\nc.	Bahasa dan Gaya: Pantun Melayu ditandai dengan penggunaan bahasa yang indah dan kiasan yang khas. Pantun sering menggunakan metafora, perumpamaan, dan bahasa figuratif lainnya untuk menyampaikan pesan atau cerita dengan cara yang kreatif dan estetis.\r\nd.	Fungsi dan Makna: Pantun Melayu memiliki beragam fungsi, mulai dari sebagai bentuk hiburan dalam pertemuan sosial, hingga sebagai sarana menyampaikan pesan moral, nasihat, atau ungkapan perasaan cinta. Pantun juga sering digunakan dalam acara-acara formal seperti pernikahan, upacara adat, atau pidato resmi.\r\ne.	Pentingnya Pelestarian: Sebagai bagian penting dari warisan budaya Melayu, pelestarian Pantun Melayu sangatlah penting. Melalui pengajaran, pelatihan, dan promosi, generasi muda dapat memahami dan menghargai nilai-nilai budaya yang terkandung dalam pantun serta menjaga keberlangsungannya dalam masyarakat Melayu tradisional dan modern.', '15.jpeg', '2020-10-09 13:13:21'),
(16, 'Pantun Minangkabau', 'Pantun Minangkabau adalah bentuk puisi lisan tradisional yang berasal dari masyarakat Minangkabau di Sumatra Barat, Indonesia. Berikut adalah simpulan secara rinci tentang Pantun Minangkabau:\r\n\r\na.	Asal Usul dan Sejarah: Pantun Minangkabau memiliki akar budaya yang dalam di masyarakat Minangkabau, yang merupakan salah satu suku terbesar di Indonesia. Pantun ini telah menjadi bagian penting dari tradisi lisan dan budaya Minangkabau selama berabad-abad.\r\nb.	Struktur dan Format: Pantun Minangkabau mengikuti pola struktur yang mirip dengan pantun Melayu, biasanya terdiri dari empat baris dengan rima pada baris kedua dan keempat. Pola ini memudahkan dalam penghafalan dan improvisasi, sehingga sering dipakai dalam percakapan sehari-hari.\r\nc.	Bahasa dan Gaya: Pantun Minangkabau ditandai dengan penggunaan bahasa yang khas dan gaya retoris yang rumit. Pantun ini sering kali mengandung ungkapan metaforis, perumpamaan, atau sindiran yang halus, mencerminkan kecerdasan dan kepekaan bahasa masyarakat Minangkabau.\r\nd.	Fungsi dan Makna: Pantun Minangkabau memiliki beragam fungsi, mulai dari sebagai hiburan dalam pertemuan sosial, hingga sebagai sarana menyampaikan pesan moral, nasihat, atau perasaan cinta. Pantun juga sering digunakan dalam acara-acara adat seperti pernikahan, pertunangan, atau pesta adat.\r\ne.	Pentingnya Pelestarian: Sebagai bagian penting dari warisan budaya Minangkabau, pelestarian Pantun Minangkabau sangatlah penting. Melalui pengajaran, pelatihan, dan promosi, generasi muda dapat memahami dan menghargai nilai-nilai budaya yang terkandung dalam pantun serta menjaga keberlangsungannya dalam masyarakat Minangkabau tradisional dan modern.', '', '2020-01-23 13:15:53'),
(17, 'Pantun Bugis', 'Pantun Bugis adalah bentuk puisi lisan tradisional yang berasal dari masyarakat Bugis di Sulawesi Selatan, Indonesia. Berikut adalah simpulan secara rinci tentang Pantun Bugis:\r\n\r\na.	Asal Usul dan Sejarah: Pantun Bugis memiliki akar budaya yang dalam di masyarakat Bugis, salah satu suku terbesar dan terkemuka di Indonesia. Pantun ini telah menjadi bagian tak terpisahkan dari tradisi lisan dan budaya Bugis selama berabad-abad.\r\nb.	Struktur dan Format: Pantun Bugis mengikuti pola struktur yang mirip dengan pantun Melayu dan Minangkabau, biasanya terdiri dari empat baris dengan rima pada baris kedua dan keempat. Pola ini memungkinkan adanya penghafalan dan improvisasi yang cepat.\r\nc.	Bahasa dan Gaya: Pantun Bugis ditandai dengan penggunaan bahasa Bugis yang khas dan gaya sastra yang indah. Pantun ini sering mengandung metafora, perumpamaan, atau sindiran yang halus, mencerminkan kepekaan bahasa masyarakat Bugis.\r\nd.	Fungsi dan Makna: Pantun Bugis memiliki beragam fungsi dalam masyarakat Bugis, mulai dari sebagai bentuk hiburan dalam pertemuan sosial, hingga sebagai sarana menyampaikan pesan moral, nasihat, atau perasaan cinta. Pantun juga sering digunakan dalam acara-acara adat seperti pernikahan, upacara kelahiran, atau pesta adat.\r\ne.	Pentingnya Pelestarian: Sebagai bagian penting dari warisan budaya Bugis, pelestarian Pantun Bugis sangatlah penting. Melalui pengajaran, pelatihan, dan promosi, generasi muda dapat memahami dan menghargai nilai-nilai budaya yang terkandung dalam pantun serta menjaga keberlangsungannya dalam masyarakat Bugis tradisional dan modern.', '17.jpeg', '2019-03-20 13:16:38'),
(18, 'Pantun Sunda', 'Pantun Sunda adalah bentuk puisi lisan tradisional yang berasal dari masyarakat Sunda di Jawa Barat, Indonesia. Berikut adalah simpulan secara rinci tentang Pantun Sunda:\r\n\r\na.	Asal Usul dan Sejarah: Pantun Sunda memiliki akar budaya yang dalam di masyarakat Sunda, salah satu suku terbesar di Indonesia. Pantun ini telah menjadi bagian integral dari tradisi lisan dan budaya Sunda selama berabad-abad.\r\nb.	Struktur dan Format: Pantun Sunda mengikuti pola struktur yang mirip dengan pantun Melayu dan Minangkabau, dengan empat baris dan rima pada baris kedua dan keempat. Namun, Pantun Sunda memiliki gaya dan kiasan yang khas, mencerminkan kekayaan bahasa dan budaya Sunda.\r\nc.	Bahasa dan Gaya: Pantun Sunda ditandai dengan penggunaan bahasa Sunda yang khas dan gaya sastra yang unik. Pantun ini sering mengandung perumpamaan, sindiran, atau humor yang halus, mencerminkan kecerdasan dan kepekaan bahasa masyarakat Sunda.\r\nd.	Fungsi dan Makna: Pantun Sunda memiliki beragam fungsi dalam masyarakat Sunda, mulai dari sebagai bentuk hiburan dalam pertemuan sosial, hingga sebagai sarana menyampaikan pesan moral, nasihat, atau perasaan cinta. Pantun juga sering digunakan dalam acara-acara adat seperti pernikahan, pertunangan, atau pesta adat.\r\ne.	Pentingnya Pelestarian: Sebagai bagian penting dari warisan budaya Sunda, pelestarian Pantun Sunda sangatlah penting. Melalui pengajaran, pelatihan, dan promosi, generasi muda dapat memahami dan menghargai nilai-nilai budaya yang terkandung dalam pantun serta menjaga keberlangsungannya dalam masyarakat Sunda tradisional dan modern.', '18.jpeg', '2020-03-20 13:17:53'),
(19, 'Pantun Banjar', 'Pantun Banjar adalah bentuk puisi lisan tradisional yang berasal dari masyarakat Banjar di Kalimantan Selatan, Indonesia. Berikut adalah simpulan secara rinci tentang Pantun Banjar:\r\n\r\na.	Asal Usul dan Sejarah: Pantun Banjar memiliki akar budaya yang dalam di masyarakat Banjar, salah satu suku terbesar di Kalimantan Selatan. Pantun ini telah menjadi bagian tak terpisahkan dari tradisi lisan dan budaya Banjar selama berabad-abad.\r\nb.	Struktur dan Format: Pantun Banjar mengikuti pola struktur yang mirip dengan pantun Melayu dan Minangkabau, dengan empat baris dan rima pada baris kedua dan keempat. Namun, Pantun Banjar memiliki ciri khasnya sendiri dalam penggunaan bahasa dan gaya sastra.\r\nc.	Bahasa dan Gaya: Pantun Banjar ditandai dengan penggunaan bahasa Banjar yang khas dan gaya sastra yang indah. Pantun ini sering mengandung perumpamaan, sindiran, atau humor yang halus, mencerminkan kecerdasan dan kepekaan bahasa masyarakat Banjar.\r\nd.	Fungsi dan Makna: Pantun Banjar memiliki beragam fungsi dalam masyarakat Banjar, mulai dari sebagai bentuk hiburan dalam pertemuan sosial, hingga sebagai sarana menyampaikan pesan moral, nasihat, atau perasaan cinta. Pantun juga sering digunakan dalam acara-acara adat seperti pernikahan, pertunangan, atau pesta adat.\r\ne.	Pentingnya Pelestarian: Sebagai bagian penting dari warisan budaya Banjar, pelestarian Pantun Banjar sangatlah penting. Melalui pengajaran, pelatihan, dan promosi, generasi muda dapat memahami dan menghargai nilai-nilai budaya yang terkandung dalam pantun serta menjaga keberlangsungannya dalam masyarakat Banjar tradisional dan modern.', '19.jpeg', '2021-12-29 13:18:57'),
(20, 'Pantun Batak', 'Pantun Batak adalah bentuk puisi lisan tradisional yang berasal dari masyarakat Batak di Sumatra Utara, Indonesia. Berikut adalah simpulan secara rinci tentang Pantun Batak:\r\n\r\na.	Asal Usul dan Sejarah: Pantun Batak memiliki akar budaya yang dalam di masyarakat Batak, salah satu suku terbesar di Indonesia. Pantun ini telah menjadi bagian tak terpisahkan dari tradisi lisan dan budaya Batak selama berabad-abad.\r\nb.	Struktur dan Format: Pantun Batak mengikuti pola struktur yang mirip dengan pantun Melayu dan Minangkabau, dengan empat baris dan rima pada baris kedua dan keempat. Namun, Pantun Batak memiliki ciri khasnya sendiri dalam penggunaan bahasa dan gaya sastra.\r\nc.	Bahasa dan Gaya: Pantun Batak ditandai dengan penggunaan bahasa Batak yang khas dan gaya sastra yang indah. Pantun ini sering mengandung perumpamaan, sindiran, atau humor yang halus, mencerminkan kecerdasan dan kepekaan bahasa masyarakat Batak.\r\nd.	Fungsi dan Makna: Pantun Batak memiliki beragam fungsi dalam masyarakat Batak, mulai dari sebagai bentuk hiburan dalam pertemuan sosial, hingga sebagai sarana menyampaikan pesan moral, nasihat, atau perasaan cinta. Pantun juga sering digunakan dalam acara-acara adat seperti pernikahan, pertunangan, atau pesta adat.\r\ne.	Pentingnya Pelestarian: Sebagai bagian penting dari warisan budaya Batak, pelestarian Pantun Batak sangatlah penting. Melalui pengajaran, pelatihan, dan promosi, generasi muda dapat memahami dan menghargai nilai-nilai budaya yang terkandung dalam pantun serta menjaga keberlangsungannya dalam masyarakat Batak tradisional dan modern.', '20.jpeg', '2022-07-22 13:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `sejarawan`
--

CREATE TABLE `sejarawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `asal` varchar(100) NOT NULL,
  `jk` varchar(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sejarawan`
--

INSERT INTO `sejarawan` (`id`, `nama`, `foto`, `tgl_lahir`, `asal`, `jk`, `deskripsi`) VALUES
(1, 'Ibn Battuta', '1.jpeg', '1304-02-24', 'Tangier, Maroko', 'laki-laki', 'Ibn Battuta adalah seorang penjelajah Muslim dari abad ke-14 yang terkenal karena perjalanannya yang luas dan catatan perjalanannya yang terperinci. Lahir di Tangier, Maroko pada tahun 1304, Ibn Battuta melakukan perjalanan selama lebih dari tiga dekade, mengunjungi sebagian besar dunia Muslim dan wilayah-wilayah sekitarnya.\n\nPerjalanannya dimulai pada tahun 1325 ketika ia berangkat dari Tanjung Hijaz (kini Jeddah) untuk melakukan ibadah haji ke Mekkah. Namun, perjalanannya tidak berhenti di sana. Selama hidupnya, ia menjelajahi sebagian besar dunia Muslim, termasuk wilayah Arab, Timur Tengah, Asia Tengah, India, Cina, dan Afrika Utara.'),
(2, 'Arnold J. Toynbee', '2.jpeg', '1889-04-14', 'Britania Raya', 'laki-laki', 'Arnold J. Toynbee adalah sejarawan Britania yang terkenal karena karyanya \"A Study of History\", sebuah karya monumental yang mempelajari peradaban manusia dari awal hingga zaman modern. Karyanya ini mengangkat konsep bahwa peradaban manusia adalah pola siklus yang berulang-ulang.'),
(3, 'Ki Hajar Dewantara', '3.jpeg', '1889-05-02', 'Yogyakarta, Indonesia', 'laki-laki', 'Ki Hajar Dewantara adalah tokoh pergerakan pendidikan di Indonesia. Beliau merupakan pendiri Taman Siswa, sebuah gerakan pendidikan yang berfokus pada pendidikan dasar bagi rakyat. Konsep pendidikan Ki Hajar Dewantara mengutamakan kebebasan, kreativitas, dan pembentukan karakter.'),
(4, 'Raden Saleh Sjarif Boestaman', '4.jpeg', '1807-04-14', 'Semarang, Indonesia', 'laki-laki', 'Raden Saleh adalah pelukis terkemuka Indonesia pada abad ke-19. Karya-karyanya sering menggambarkan tema-tema sejarah dan alam Indonesia. Raden Saleh dianggap sebagai salah satu pelopor seni lukis modern di Indonesia.'),
(5, 'Kartini', '5.jpeg', '1879-04-21', 'Jepara, Indonesia', 'perempuan', 'Raden Ajeng Kartini adalah seorang tokoh emansipasi wanita Indonesia yang dikenal karena perjuangannya dalam mendukung pendidikan bagi perempuan. Hari Kartini, yang diperingati setiap tanggal 21 April, adalah penghargaan atas perjuangan beliau.'),
(6, 'Bung Tomo (Ir. Soekarno Djojonegoro)', '6.jpeg', '1920-10-03', 'Surabaya, Indonesia', 'laki-laki', 'Bung Tomo adalah seorang pahlawan nasional Indonesia yang terkenal karena perannya dalam Pertempuran Surabaya pada masa Revolusi Nasional Indonesia. Beliau dianggap sebagai simbol perlawanan dan semangat juang rakyat Indonesia.'),
(7, 'Ki Bagus Hadikusumo', '7.jpeg', '1880-04-13', 'Yogyakarta, Indonesia', 'laki-laki', 'Ki Bagus Hadikusumo adalah seorang intelektual dan tokoh pergerakan kebangsaan Indonesia. Beliau aktif dalam memperjuangkan pendidikan dan kesejahteraan masyarakat Jawa.'),
(8, 'Mohammad Natsir', '8.jpeg', '1882-08-16', 'Solok, Indonesia', 'laki-laki', 'Tjokroaminoto adalah seorang tokoh pergerakan kebangsaan Indonesia yang dikenal sebagai pendiri Sarekat Islam. Beliau memainkan peran penting dalam memperjuangkan kesejahteraan rakyat Indonesia.'),
(9, 'Cut Nyak Dhien', '9.jpeg', '1848-05-12', 'Aceh, Indonesia', 'perempuan', 'Cut Nyak Dhien adalah seorang pahlawan nasional Indonesia yang terkenal karena perjuangannya melawan penjajah Belanda pada masa perang Aceh. Beliau dianggap sebagai simbol perlawanan dan keberanian perempuan Indonesia.'),
(10, 'Mohammad Hoesni Thamrin', '10.jpeg', '1894-02-16', 'Bukittinggi, Indonesia', 'laki-laki', 'Mohammad Hoesni Thamrin adalah seorang politisi dan tokoh pergerakan kebangsaan Indonesia. Beliau dikenal karena perannya dalam memperjuangkan kemerdekaan Indonesia melalui Dewan Perwakilan Rakyat.'),
(11, 'W.R. Soepratman', '11.jpeg', '1903-03-09', 'Klaten, Indonesia', 'laki-laki', 'W.R. Soepratman adalah seorang komponis musik Indonesia yang menciptakan lagu kebangsaan Indonesia, \"Indonesia Raya\". Beliau dianggap sebagai salah satu tokoh penting dalam sejarah musik Indonesia.'),
(12, 'Ki Hajar Dewantara', '12.jpeg', '1889-05-02', 'Yogyakarta, Indonesia', 'laki-laki', 'Ki Hajar Dewantara adalah seorang tokoh pendidikan Indonesia yang dikenal karena perannya dalam memperjuangkan pendidikan bagi rakyat. Beliau merupakan pendiri Taman Siswa, sebuah gerakan pendidikan yang menekankan kebebasan belajar dan kreativitas.'),
(13, 'Sutan Takdir Alisjahbana', '13.jpeg', '1908-02-11', 'Padang Panjang, indonesia', 'laki-laki', 'Sutan Takdir Alisjahbana adalah seorang sastrawan dan intelektual Indonesia yang memainkan peran penting dalam perkembangan sastra dan bahasa Indonesia. Beliau juga dikenal sebagai tokoh pergerakan kebangsaan dan pendidikan di Indonesia.'),
(14, 'Ki Hajar Nurjaman', '14.jpeg', '1725-10-01', 'Cirebon, Jawa Barat, Indonesia', 'laki-laki', 'Ki Hajar Nurjaman dikenal sebagai pendiri Kesultanan Cirebon yang kuat pada abad ke-18. Beliau adalah seorang pemimpin yang bijaksana dan berhasil memperluas wilayah kekuasaan Kesultanan Cirebon.'),
(15, 'Mohammad Hatta', '15.jpeg', '1902-07-19', 'Bukittinggi, Indonesia', 'laki-laki', 'Mohammad Hatta adalah salah satu tokoh pendiri Republik Indonesia dan wakil presiden pertama Indonesia. Beliau dikenal sebagai \"Bapak Koperasi Indonesia\" karena perannya dalam memajukan gerakan koperasi di Indonesia.'),
(16, 'Siti Walidah', '16.jpeg', '1923-07-16', 'Kebumen, Jawa Tengah, indonesia', 'perempuan', 'Siti Walidah adalah seorang tokoh perjuangan kemerdekaan Indonesia yang terlibat dalam gerakan pemuda. Beliau aktif dalam memperjuangkan hak-hak perempuan dan pendidikan bagi anak-anak Indonesia.'),
(17, 'Mohammad Yamin', '17.jpeg', '1903-08-24', 'Talawi, Indonesia', 'laki-laki', 'Mohammad Yamin adalah seorang sastrawan, politisi, dan tokoh nasionalis Indonesia. Beliau dikenal sebagai penulis teks Proklamasi Kemerdekaan Indonesia pada 17 Agustus 1945.'),
(18, 'Bung Tomo', '18.jpeg', '1920-10-03', 'Surabaya, Indonesia', 'laki-laki', 'Bung Tomo adalah seorang pahlawan nasional Indonesia yang terkenal karena perannya dalam Pertempuran Surabaya pada masa Revolusi Nasional Indonesia. Beliau dianggap sebagai simbol perlawanan dan semangat juang rakyat Indonesia.'),
(19, 'Tjokroaminoto', '19.jpeg', '1882-08-16', 'Yogyakarta, Indonesia', 'laki-laki', 'Tjokroaminoto adalah seorang tokoh pergerakan kebangsaan Indonesia yang dikenal sebagai pendiri Sarekat Islam. Beliau memainkan peran penting dalam memperjuangkan kesejahteraan rakyat Indonesia.'),
(20, 'I Gusti Ngurah Rai', '20.jpeg', '1917-01-30', 'Gianyar, Bali, Indonesia', 'laki-laki', 'I Gusti Ngurah Rai adalah seorang pahlawan nasional Indonesia yang memimpin perlawanan terhadap penjajah Belanda di Bali. Beliau dikenal karena perannya dalam Pertempuran Margarana pada tahun 1946, di mana beliau gugur sebagai pahlawan.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `tgl_daftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `tgl_daftar`) VALUES
(1, 'rani', 'rani@mail.com', '3e09293769927345f70104c89df5c45c', 'Fadhilla Rahmanisa', '2024-04-27 09:03:00'),
(2, 'dila', 'dilaasasas@mail.com', 'e2341b3b102f3262657711eb078cae2d', 'dila aaasasas', '2024-05-01 13:52:07'),
(36, 'tes2', 'tes@mail.com', 'b93939873fd4923043b9dec975811f66', 'tes1', '2024-05-11 07:36:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_budaya`
--
ALTER TABLE `info_budaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarawan`
--
ALTER TABLE `sejarawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `info_budaya`
--
ALTER TABLE `info_budaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sejarawan`
--
ALTER TABLE `sejarawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
