-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5876
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for tes_wisata
CREATE DATABASE IF NOT EXISTS `tes_wisata` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tes_wisata`;

-- Dumping structure for table tes_wisata.destinations
CREATE TABLE IF NOT EXISTS `destinations` (
  `destination_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `destination_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_location` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_day_temp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_night_temp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_rating` int(11) NOT NULL,
  `destination_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`destination_id`),
  KEY `destinations_destination_category_id_foreign` (`destination_category_id`),
  CONSTRAINT `destinations_destination_category_id_foreign` FOREIGN KEY (`destination_category_id`) REFERENCES `destination_category` (`destination_category_id`)
<<<<<<< HEAD:wisata_db.sql
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.destinations: ~16 rows (approximately)
DELETE FROM `destinations`;
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
INSERT INTO `destinations` (`destination_id`, `destination_name`, `destination_description`, `destination_location`, `destination_day_temp`, `destination_night_temp`, `destination_rating`, `destination_image`, `destination_category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Pulau Lemukutan', 'Pulau Lemukutan adalah sebuah pulau yang secara administratif terletak di Kecamatan Sungai Raya Kepulauan, Kabupaten Bengkayang, Provinsi Kalimantan Barat. Aktivitas menarik yang dapat dilakukan di Pulau Lemukutan adalah naik perahu menuju pulau, pesona bawah laut, snorkling, diving, bermain kano, dan lain-lain.', 'https://goo.gl/maps/fbAo8HFm6EVPybiq5', '29', '31', 5, '["uploads\\/destination_image\\/Pulau Lemukutan-DestinationImage-1649056524205.lemukutan 1.jpg","uploads\\/destination_image\\/Pulau Lemukutan-DestinationImage-1649056524829.lemukutan 2.jpg","uploads\\/destination_image\\/Pulau Lemukutan-DestinationImage-1649056524456.lemukutan 3.jpg"]', 1, '2022-04-04 04:27:33', '2022-04-12 04:04:30'),
	(2, 'Kereng Bangkirai', 'Dermaga Kereng Bangkirai merupakan salah satu objek wisata yang banyak diminati wisatawan di Palangka Raya. Jarak tempuh dari pusat Palangka Raya ke dermaga kereng lebih kurang 20 menit dengan jarak 11 km dari pusat kota. Wahana wisata yang ada di dermaga kereng bangkirai yaitu sepeda bebek air, susur sungai, wisata ke batu ampar, dan masih banyak yang lain. Biaya untuk menggunakan wahana wisata pun tidak mahal sekitar 5.000 hingga 30.000 rupiah.', 'https://goo.gl/maps/yP7TsbFdDLkhrYg69', '28', '30', 5, '["uploads\\/destination_image\\/Kereng Bangkirai-DestinationImage-1649056579626.kereng bangkirai 2.png"]', 1, '2022-04-04 04:27:36', '2022-04-12 02:52:19'),
	(3, 'Danau Sentarum', 'Danau Sentarum adalah danau musiman yang berada di Kapuas Hulu, Kalimantan Barat. Danau ini dipenuhi air selama 10 bulan setiap tahunnya, dan sisanya akan surut, membentuk kolam-kolam kecil yang berisi ikan-ikan kecil. Saat kemarau, Air Danau Sentarum memasok setengah dari aliran air Sungai Kapuas. Untuk mencapai Danau Sentarum, dibutuhkan waktu 14 jam dari Kota Pontianak melalui perjalanan darat dan air dengan rute Pontianak-Sintang-Semitau. Lalu, dari Semitau menuju ke lokasi menggunakan perahu motor jurusan Lanjak.', 'https://goo.gl/maps/LAWEMUXkBea1LJ3G8', '29', '31', 5, '["uploads\\/destination_image\\/Danau Sentarum-DestinationImage-1649056637924.danau sentarum 2.jpg"]', 1, '2022-04-04 04:27:38', '2022-04-18 13:59:36'),
	(4, 'Sungai Kunyit Laut', 'Mempawah memang menjadi daerah yang sangat cocok bagi Anda yang menyukai pantai. Disini, Anda dapat menemukan berbagai pantai dengan pemandangan yang menawan, salah satunya adalah pantai kijing. Pantai yang satu ini jaraknya tak jauh dari pulau temajo.\r\nDaya tarik Pantai Kijing sendiri ada pada pemandangan pohon kelapanya yang berjajar rapi di sekitar pantai. Panorama tersebut selain indah juga terasa lebih menenangkan. Mengunjungi pantai kijing tidak akan membuat Anda menyesal.', 'https://goo.gl/maps/D3wAL5K4Kq3PCLP28', '28', '32', 5, '["uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-164905666137.sungai kunyit laut 1.jpg","uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-164905666185.sungai kunyit laut 2.jpg","uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-1649056661538.sungai kunyit laut 3.jpg","uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-1649056661837.sungai kunyit laut 4.jpg"]', 1, '2022-04-04 04:27:39', '2022-04-18 13:59:47'),
	(5, 'Taman Alun Kapuas', 'Taman Kapuas berlokasi di Kota Pontianak Provinsi Kalimantan Barat. Lebih tepatnya berada di tengah kota yang sangat mudah diakses dari manapun. Untuk sampai di lokasi, bisa ditempuh dengan waktu sekitar 15 menit dari pusat kota, sedangkan dari Bandara Supadio Pontianak adalah sekitar 30 menit. Jika Anda menggunakan kendaraan pribadi hanya tinggal mengikuti rambu lalu lintas yang telah disediakan.Taman yang terletak di jantung Kota Pontianak ini memiliki bentuk dan tatanan yang sangat rapi. Hal ini membuat daya tarik tersendiri bagi setiap masyarakat yang ada di sekitar Pontianak dan juga dari luar daerah.', 'https://goo.gl/maps/upHDyP68SkhXshpN9', '29', '31', 5, '["uploads\\/destination_image\\/Taman Alun Kapuas-DestinationImage-1649056468646.taman alun kapuas 1.jpg","uploads\\/destination_image\\/Taman Alun Kapuas-DestinationImage-1649056468283.taman alun kapuas 2.jpg"]', 1, '2022-04-04 04:27:41', '2022-04-04 07:14:28'),
	(6, 'Taman Wisata Pulau Kembang', 'Pulau Kembang terletak di tengah Sungai Barito yang terbentuk secara alami membentuk pulau. Tempat tersebut dihuni oleh kawanan kera karena termasuk area konservasi kera berekor panjang dan bekantan, alhasil pengunjung dapat melihat seperti apakah kera ekor panjang dan bekantan menjalani kehidupannya sehari-hari. Selain itu dapat dijadikan objek wisata anak-anak sehingga wawasannya semakin luas.', 'https://goo.gl/maps/ZJejTVVW5rzFXiQ56', '29', '31', 4, '["uploads\\/destination_image\\/Taman Wisata Pulau Kembang-DestinationImage-164905672777.PULAU KEMBANG 1.jpg","uploads\\/destination_image\\/Taman Wisata Pulau Kembang-DestinationImage-1649056727350.PULAU KEMBANG 2.jpg"]', 1, '2022-04-04 04:27:42', '2022-04-04 07:18:47'),
	(7, 'Rumah Jomblo', 'Bajarmasin, Kalimantan Selatan mempunyai rumah jomblo loh. Bahkan menjadi objek wisata terhits yang dikunjungi orang diberbagai daerah, pasalnya memiliki bentuk dari rumah lainnya. selain itu rumah tersebut terletak di gundukan tanah merah sehingga tampilannya semakin eksotik, tentunya cocok diabadikan sebagai kenangan indah pernah mengunjungi rumah jomblo di Banjarmasin.', 'https://goo.gl/maps/NAsQAcEMV7Z3LyY3A', '29', '31', 4, '["uploads\\/destination_image\\/Rumah Jomblo-DestinationImage-1649056161463.rumah jomblo 1.jpg","uploads\\/destination_image\\/Rumah Jomblo-DestinationImage-1649056161844.rumah jomblo 2.jpg"]', 2, '2022-04-04 04:27:43', '2022-04-04 07:09:21'),
	(8, 'Menara Pandang Banjarmasin', 'Objek wisata Banjarmasin terdapat di area kota Banjarmasin loh, pasalnya menara pandang Banjarmasin menjadi destinasi wisata unik karena menyuguhkan pemandangan pulau Kalimantan yang sangat menawan dari atas menara pandang. Dijamin pengunjung mendapat pengalaman unik yang berkesan saat berdiri di atas empat lantai, pasalnya manara memiliki cakupan pemandangan yang luas sehingga sangat memanjakan pengunjung. Selain itu lokasinya tak jauh dari wisata pasar terapung sehingga Anda dapat mengunjungi objek wisata Banjarmasin lebih dari satu, dijamin kegiatan berfoto semakin instagamable.\n', 'https://goo.gl/maps/VuumzyAzPSciYVWr6', '29', '31', 4, '["uploads\\/destination_image\\/Menara Pandang Banjarmasin-DestinationImage-1649056191341.menara pandang banjarmasin 1.jpg","uploads\\/destination_image\\/Menara Pandang Banjarmasin-DestinationImage-1649056191981.menara pandang banjarmasin 2.jpg"]', 2, '2022-04-04 04:27:45', '2022-04-04 07:09:51'),
	(9, 'Masjid Raya Sabilal Muhtadin', 'Masjid Raya Sabilal Muhtadin adalah objek wisata populer loh karena terletak di jantung kota Banjarmasin. Anda dapat melakukan sholah dan berdoa di dalam Masjid yang megah dan eksotik tersebut karena telah berdiri sekitar tahun 1981, walaupun sudah tua tetapi masih kokoh dan selalu dirawat sehingga pikiran pengunjung akan rilkes usai menempuh perjalanan jauh.Perlu diketahui, penamaan tersebut memiliki makna mendalam sebagai penghormatan ulama besar yang kehidupannya untuk menyebarkan agama Islam. Beliau adalah Almarhum Syeikh Muhammad Arsyad Al-Banjari, seorang ulama besar kerajaan Banjar. Alhasil Masjid tersebut dijadikan destinasi religi yang menyentuh kalbu.', 'https://goo.gl/maps/8uobSqyAmoLWkiMg7', '29', '31', 5, '["uploads\\/destination_image\\/Masjid Raya Sabilal Muhtadin-DestinationImage-1649056262846.Masjid Raya Sabilal Muhtadin 1.jpg"]', 2, '2022-04-04 04:27:46', '2022-04-04 07:11:02'),
	(10, 'Tugu Digulis atau Tugu Bambu Runcing Pontianak', 'Monumen Sebelas Digulis Kalimantan Barat, disebut juga sebagai Tugu Digulis atau Tugu Bambu Runcing atau Tugu Bundaran Untan oleh warga setempat, merupakan sebuah monumen yang terletak di Bundaran Universitas Tanjungpura, Jalan Jend. Ahmad Yani, Kelurahan Bansir Laut, Kecamatan Pontianak Tenggara, Kota Pontianak. Monumen ini didirikan sebagai peringatan atas perjuangan sebelas tokoh Sarekat Islam di Kalimantan Barat, yang dibuang ke Boven Digoel, Irian Barat karena khawatir pergerakan mereka akan memicu pemberontakan terhadap pemerintah Hindia Belanda di Kalimantan. Tiga dari sebelas tokoh tersebut meninggal pada saat pembuangan di Boven Digoel dan lima di antaranya wafat dalam Peristiwa Mandor.', 'https://goo.gl/maps/vCi84fC3QALcHZfH7', '29', '31', 5, '["uploads\\/destination_image\\/Tugu Digulis atau Tugu Bambu Runcing Pontianak-DestinationImage-1649056408354.Tugu Digulis Pontianak 1.jpg"]', 1, '2022-04-04 04:27:47', '2022-04-04 07:13:28'),
	(11, 'Depot Soto Bang Amat', 'Depot Soto Bang Amat merupakan rumah makan yang menyediakan menu spesial soto khas banjar, lokasinya di pinggiran sungai, jadi suasananya enak. Tempat kuliner yang bisa sekaligus untuk berwisata bahkan sambil makan sambil melihat Kapal bermesin ataupun tanpa mesin lewat melalui sungai tersebut. menu yang disediakan ada soto dan juga sate, tidak ketinggalan aneka menu minuman', 'https://goo.gl/maps/YK5u74pBPRDMtop8A', '29', '31', 5, '["uploads\\/destination_image\\/Depot Soto Bang Amat-DestinationImage-1649055942167.soto banjar 1.jpg","uploads\\/destination_image\\/Depot Soto Bang Amat-DestinationImage-1649055942250.soto banjar 2.jpg"]', 3, '2022-04-04 04:27:48', '2022-04-04 07:05:42'),
	(12, 'Depot Sari Patin', 'Depot Sari Patin anda sehat kami bahagia merupakan salah satu restoran dengan menu khas banjar, dengan menu unggulan ikan bakar. tempatnya cukup bersih, dengan pelayanan bagus. jadi sangat cocok khan buat kulineran bersama keluarga atau orang terkasih saat berada di banjarmasin.Menu yang tersedia ada menu spesial patin sungai bakar/goreng, lais bakar/goreng, udang bakar/goreng, jelawat bakar/goreng, patin, pais patin, ikan pepuyu, haruan bakar/goreng, nila, ikan mas, gurame, bawal, aneka masakan ayam dan masih banyak menu lainnya.', 'https://g.page/saripatin?share', '29', '31', 4, '["uploads\\/destination_image\\/Depot Sari Patin-DestinationImage-1649055793123.depot sari patin 1.jpg","uploads\\/destination_image\\/Depot Sari Patin-DestinationImage-1649055793945.depot sari patin 2.jpg"]', 3, '2022-04-04 04:27:51', '2022-04-12 03:25:04'),
	(13, 'Warung Pa\' Ngah', 'Bila Anda mencari kudapan ringan dengan citara rasa terbaik di Pontianak cobalah hidangan bubur pedas. Masyarakat Pontianak sudah mengenal bubur pedas sebagai cita rasa khas dengan komposisi bahan terbaik. Meskipun punya arti bubur dengan rasa pedas, tetapi dari sisi rasa tidak terlalu pedas.Justru kudapan satu ini disajikan dengan paduan menu pendamping mulai dari kacang panjang, jagung merah, cambah, daging ayam, ikan teri, hingga jagung muda. Sedangkan bahan bubur terbuat dari olahan beras sangrai yang dipadukan dengan parutan kelapa tua. Jadi aroma dan rasa bubur pedas Pontianak ini terbilang unik dan hanya ada di Pontianak saja.', 'https://g.page/warong-pa-ngah?share', '29', '31', 5, '["uploads\\/destination_image\\/Warung Pa\' Ngah-DestinationImage-1649055999825.bubur pedas 1.jpg","uploads\\/destination_image\\/Warung Pa\' Ngah-DestinationImage-1649055999361.bubur pedas 2.jpg"]', 3, '2022-04-04 04:29:00', '2022-04-12 03:18:32'),
	(14, 'Nasi Ayam Afu', 'Cukup banyak pecinta kuliner mencicipi hidangan khas Pontianak salah satunya nasi ayam afu. Namun, hidangan ini tidak halal karena terdapat toping daging babi panggang, dan babi manis.Namun Anda tak perlu kecewa, sebab hidangan ini bisa disajikan tanpa toping daging babi. Cukup dengan nasi campur daging ayam dan telur kecap saja sudah mewakili cita rasa nasi ayam afu. Hidangan ini biasanya disajikan bersama saus tauco yang membuat rasanya semakin nikmat.', 'https://goo.gl/maps/Crid2HPUW4WViGzb8', '29', '31', 5, '["uploads\\/destination_image\\/Nasi Ayam Afu-DestinationImage-164905584450.nasi ayam afu 1.jpg","uploads\\/destination_image\\/Nasi Ayam Afu-DestinationImage-1649055844317.nasi ayam afu 2.jpg"]', 3, '2022-04-04 04:29:01', '2022-04-12 03:24:39'),
	(15, 'Warung Makan Ikan Bakar Haji Ijay', 'Warung makan yang menjual menu ikan tawar dan ikan laut yang dibakar. Tidak ketinggalan menu ayam bakar dan empal juga ada. Ikan bakar di warung ini terkenal sangat lezat di Samarinda. Buka di pukul 10.00-16.00 WITA dengan harga 20.000 saja.', 'https://goo.gl/maps/LF5GYEH6Zx3hhde96', '29', '31', 5, '["uploads\\/destination_image\\/Warung Makan Ikan Bakar Haji Ijay-DestinationImage-165030346389.warung makan h ijay 1.jpg"]', 3, '2022-04-04 04:29:04', '2022-04-18 17:37:43');
=======
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.destinations: ~15 rows (approximately)
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
REPLACE INTO `destinations` (`destination_id`, `destination_name`, `destination_description`, `destination_location`, `destination_day_temp`, `destination_night_temp`, `destination_rating`, `destination_image`, `destination_category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Pulau Lemukutan', 'Pulau Lemukutan adalah sebuah pulau yang secara administratif terletak di Kecamatan Sungai Raya Kepulauan, Kabupaten Bengkayang, Provinsi Kalimantan Barat. Aktivitas menarik yang dapat dilakukan di Pulau Lemukutan adalah naik perahu menuju pulau, pesona bawah laut, snorkling, diving, bermain kano, dan lain-lain.', 'https://goo.gl/maps/fbAo8HFm6EVPybiq5', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Pulau Lemukutan-DestinationImage-1649056524205.lemukutan 1.jpg","uploads\\/destination_image\\/Pulau Lemukutan-DestinationImage-1649056524829.lemukutan 2.jpg","uploads\\/destination_image\\/Pulau Lemukutan-DestinationImage-1649056524456.lemukutan 3.jpg"]', 1, '2022-04-04 04:27:33', '2022-04-04 07:15:24'),
	(2, 'Kereng Bangkirai', 'Dermaga Kereng Bangkirai merupakan salah satu objek wisata yang banyak diminati wisatawan di Palangka Raya. Jarak tempuh dari pusat Palangka Raya ke dermaga kereng lebih kurang 20 menit dengan jarak 11 km dari pusat kota. Wahana wisata yang ada di dermaga kereng bangkirai yaitu sepeda bebek air, susur sungai, wisata ke batu ampar, dan masih banyak yang lain. Biaya untuk menggunakan wahana wisata pun tidak mahal sekitar 5.000 hingga 30.000 rupiah.', 'https://goo.gl/maps/yP7TsbFdDLkhrYg69', '28°C', '30°C', 5, '["uploads\\/destination_image\\/Kereng Bangkirai-DestinationImage-1649056579626.kereng bangkirai 2.png"]', 1, '2022-04-04 04:27:36', '2022-04-04 07:16:19'),
	(3, 'Danau Sentarum', 'Danau Sentarum adalah danau musiman yang berada di Kapuas Hulu, Kalimantan Barat. Danau ini dipenuhi air selama 10 bulan setiap tahunnya, dan sisanya akan surut, membentuk kolam-kolam kecil yang berisi ikan-ikan kecil. Saat kemarau, Air Danau Sentarum memasok setengah dari aliran air Sungai Kapuas. Untuk mencapai Danau Sentarum, dibutuhkan waktu 14 jam dari Kota Pontianak melalui perjalanan darat dan air dengan rute Pontianak-Sintang-Semitau. Lalu, dari Semitau menuju ke lokasi menggunakan perahu motor jurusan Lanjak. ', 'https://goo.gl/maps/LAWEMUXkBea1LJ3G8', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Danau Sentarum-DestinationImage-1649056637924.danau sentarum 2.jpg"]', 1, '2022-04-04 04:27:38', '2022-04-04 07:17:17'),
	(4, 'Sungai Kunyit Laut', 'Mempawah memang menjadi daerah yang sangat cocok bagi Anda yang menyukai pantai. Disini, Anda dapat menemukan berbagai pantai dengan pemandangan yang menawan, salah satunya adalah pantai kijing. Pantai yang satu ini jaraknya tak jauh dari pulau temajo.\nDaya tarik Pantai Kijing sendiri ada pada pemandangan pohon kelapanya yang berjajar rapi di sekitar pantai. Panorama tersebut selain indah juga terasa lebih menenangkan. Mengunjungi pantai kijing tidak akan membuat Anda menyesal.', 'https://goo.gl/maps/D3wAL5K4Kq3PCLP28', '28°C', '32°C', 5, '["uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-164905666137.sungai kunyit laut 1.jpg","uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-164905666185.sungai kunyit laut 2.jpg","uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-1649056661538.sungai kunyit laut 3.jpg","uploads\\/destination_image\\/Sungai Kunyit Laut-DestinationImage-1649056661837.sungai kunyit laut 4.jpg"]', 1, '2022-04-04 04:27:39', '2022-04-04 07:17:41'),
	(5, 'Taman Alun Kapuas', 'Taman Kapuas berlokasi di Kota Pontianak Provinsi Kalimantan Barat. Lebih tepatnya berada di tengah kota yang sangat mudah diakses dari manapun. Untuk sampai di lokasi, bisa ditempuh dengan waktu sekitar 15 menit dari pusat kota, sedangkan dari Bandara Supadio Pontianak adalah sekitar 30 menit. Jika Anda menggunakan kendaraan pribadi hanya tinggal mengikuti rambu lalu lintas yang telah disediakan.Taman yang terletak di jantung Kota Pontianak ini memiliki bentuk dan tatanan yang sangat rapi. Hal ini membuat daya tarik tersendiri bagi setiap masyarakat yang ada di sekitar Pontianak dan juga dari luar daerah.', 'https://goo.gl/maps/upHDyP68SkhXshpN9', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Taman Alun Kapuas-DestinationImage-1649056468646.taman alun kapuas 1.jpg","uploads\\/destination_image\\/Taman Alun Kapuas-DestinationImage-1649056468283.taman alun kapuas 2.jpg"]', 1, '2022-04-04 04:27:41', '2022-04-04 07:14:28'),
	(6, 'Taman Wisata Pulau Kembang', 'Pulau Kembang terletak di tengah Sungai Barito yang terbentuk secara alami membentuk pulau. Tempat tersebut dihuni oleh kawanan kera karena termasuk area konservasi kera berekor panjang dan bekantan, alhasil pengunjung dapat melihat seperti apakah kera ekor panjang dan bekantan menjalani kehidupannya sehari-hari. Selain itu dapat dijadikan objek wisata anak-anak sehingga wawasannya semakin luas.', 'https://goo.gl/maps/ZJejTVVW5rzFXiQ56', '29°C', '31°C', 4, '["uploads\\/destination_image\\/Taman Wisata Pulau Kembang-DestinationImage-164905672777.PULAU KEMBANG 1.jpg","uploads\\/destination_image\\/Taman Wisata Pulau Kembang-DestinationImage-1649056727350.PULAU KEMBANG 2.jpg"]', 1, '2022-04-04 04:27:42', '2022-04-04 07:18:47'),
	(7, 'Rumah Jomblo', 'Bajarmasin, Kalimantan Selatan mempunyai rumah jomblo loh. Bahkan menjadi objek wisata terhits yang dikunjungi orang diberbagai daerah, pasalnya memiliki bentuk dari rumah lainnya. selain itu rumah tersebut terletak di gundukan tanah merah sehingga tampilannya semakin eksotik, tentunya cocok diabadikan sebagai kenangan indah pernah mengunjungi rumah jomblo di Banjarmasin.', 'https://goo.gl/maps/NAsQAcEMV7Z3LyY3A', '29°C', '31°C', 4, '["uploads\\/destination_image\\/Rumah Jomblo-DestinationImage-1649056161463.rumah jomblo 1.jpg","uploads\\/destination_image\\/Rumah Jomblo-DestinationImage-1649056161844.rumah jomblo 2.jpg"]', 2, '2022-04-04 04:27:43', '2022-04-04 07:09:21'),
	(8, 'Menara Pandang Banjarmasin', 'Objek wisata Banjarmasin terdapat di area kota Banjarmasin loh, pasalnya menara pandang Banjarmasin menjadi destinasi wisata unik karena menyuguhkan pemandangan pulau Kalimantan yang sangat menawan dari atas menara pandang. Dijamin pengunjung mendapat pengalaman unik yang berkesan saat berdiri di atas empat lantai, pasalnya manara memiliki cakupan pemandangan yang luas sehingga sangat memanjakan pengunjung. Selain itu lokasinya tak jauh dari wisata pasar terapung sehingga Anda dapat mengunjungi objek wisata Banjarmasin lebih dari satu, dijamin kegiatan berfoto semakin instagamable.\n', 'https://goo.gl/maps/VuumzyAzPSciYVWr6', '29°C', '31°C', 4, '["uploads\\/destination_image\\/Menara Pandang Banjarmasin-DestinationImage-1649056191341.menara pandang banjarmasin 1.jpg","uploads\\/destination_image\\/Menara Pandang Banjarmasin-DestinationImage-1649056191981.menara pandang banjarmasin 2.jpg"]', 2, '2022-04-04 04:27:45', '2022-04-04 07:09:51'),
	(9, 'Masjid Raya Sabilal Muhtadin', 'Masjid Raya Sabilal Muhtadin adalah objek wisata populer loh karena terletak di jantung kota Banjarmasin. Anda dapat melakukan sholah dan berdoa di dalam Masjid yang megah dan eksotik tersebut karena telah berdiri sekitar tahun 1981, walaupun sudah tua tetapi masih kokoh dan selalu dirawat sehingga pikiran pengunjung akan rilkes usai menempuh perjalanan jauh.Perlu diketahui, penamaan tersebut memiliki makna mendalam sebagai penghormatan ulama besar yang kehidupannya untuk menyebarkan agama Islam. Beliau adalah Almarhum Syeikh Muhammad Arsyad Al-Banjari, seorang ulama besar kerajaan Banjar. Alhasil Masjid tersebut dijadikan destinasi religi yang menyentuh kalbu.', 'https://goo.gl/maps/8uobSqyAmoLWkiMg7', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Masjid Raya Sabilal Muhtadin-DestinationImage-1649056262846.Masjid Raya Sabilal Muhtadin 1.jpg"]', 2, '2022-04-04 04:27:46', '2022-04-04 07:11:02'),
	(10, 'Tugu Digulis atau Tugu Bambu Runcing Pontianak', 'Monumen Sebelas Digulis Kalimantan Barat, disebut juga sebagai Tugu Digulis atau Tugu Bambu Runcing atau Tugu Bundaran Untan oleh warga setempat, merupakan sebuah monumen yang terletak di Bundaran Universitas Tanjungpura, Jalan Jend. Ahmad Yani, Kelurahan Bansir Laut, Kecamatan Pontianak Tenggara, Kota Pontianak. Monumen ini didirikan sebagai peringatan atas perjuangan sebelas tokoh Sarekat Islam di Kalimantan Barat, yang dibuang ke Boven Digoel, Irian Barat karena khawatir pergerakan mereka akan memicu pemberontakan terhadap pemerintah Hindia Belanda di Kalimantan. Tiga dari sebelas tokoh tersebut meninggal pada saat pembuangan di Boven Digoel dan lima di antaranya wafat dalam Peristiwa Mandor.', 'https://goo.gl/maps/vCi84fC3QALcHZfH7', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Tugu Digulis atau Tugu Bambu Runcing Pontianak-DestinationImage-1649056408354.Tugu Digulis Pontianak 1.jpg"]', 1, '2022-04-04 04:27:47', '2022-04-04 07:13:28'),
	(11, 'Depot Soto Bang Amat', 'Depot Soto Bang Amat merupakan rumah makan yang menyediakan menu spesial soto khas banjar, lokasinya di pinggiran sungai, jadi suasananya enak. Tempat kuliner yang bisa sekaligus untuk berwisata bahkan sambil makan sambil melihat Kapal bermesin ataupun tanpa mesin lewat melalui sungai tersebut. menu yang disediakan ada soto dan juga sate, tidak ketinggalan aneka menu minuman', 'https://goo.gl/maps/YK5u74pBPRDMtop8A', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Depot Soto Bang Amat-DestinationImage-1649055942167.soto banjar 1.jpg","uploads\\/destination_image\\/Depot Soto Bang Amat-DestinationImage-1649055942250.soto banjar 2.jpg"]', 3, '2022-04-04 04:27:48', '2022-04-04 07:05:42'),
	(12, 'Depot Sari Patin', 'Depot Sari Patin anda sehat kami bahagia merupakan salah satu restoran dengan menu khas banjar, dengan menu unggulan ikan bakar. tempatnya cukup bersih, dengan pelayanan bagus. jadi sangat cocok khan buat kulineran bersama keluarga atau orang terkasih saat berada di banjarmasin.Menu yang tersedia ada menu spesial patin sungai bakar/goreng, lais bakar/goreng, udang bakar/goreng, jelawat bakar/goreng, patin, pais patin, ikan pepuyu, haruan bakar/goreng, nila, ikan mas, gurame, bawal, aneka masakan ayam dan masih banyak menu lainnya.', 'https://g.page/saripatin?share', '29°C', '31°C', 4, '["uploads\\/destination_image\\/Depot Sari Patin-DestinationImage-1649055793123.depot sari patin 1.jpg","uploads\\/destination_image\\/Depot Sari Patin-DestinationImage-1649055793945.depot sari patin 2.jpg"]', 3, '2022-04-04 04:27:51', '2022-04-04 07:03:13'),
	(13, 'Warung Pa\' Ngah', 'Bila Anda mencari kudapan ringan dengan citara rasa terbaik di Pontianak cobalah hidangan bubur pedas. Masyarakat Pontianak sudah mengenal bubur pedas sebagai cita rasa khas dengan komposisi bahan terbaik. Meskipun punya arti bubur dengan rasa pedas, tetapi dari sisi rasa tidak terlalu pedas.Justru kudapan satu ini disajikan dengan paduan menu pendamping mulai dari kacang panjang, jagung merah, cambah, daging ayam, ikan teri, hingga jagung muda. Sedangkan bahan bubur terbuat dari olahan beras sangrai yang dipadukan dengan parutan kelapa tua. Jadi aroma dan rasa bubur pedas Pontianak ini terbilang unik dan hanya ada di Pontianak saja.', 'https://g.page/warong-pa-ngah?share', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Warung Pa\' Ngah-DestinationImage-1649055999825.bubur pedas 1.jpg","uploads\\/destination_image\\/Warung Pa\' Ngah-DestinationImage-1649055999361.bubur pedas 2.jpg"]', 3, '2022-04-04 04:29:00', '2022-04-04 07:06:39'),
	(14, 'Nasi Ayam Afu', 'Cukup banyak pecinta kuliner mencicipi hidangan khas Pontianak salah satunya nasi ayam afu. Namun, hidangan ini tidak halal karena terdapat toping daging babi panggang, dan babi manis.Namun Anda tak perlu kecewa, sebab hidangan ini bisa disajikan tanpa toping daging babi. Cukup dengan nasi campur daging ayam dan telur kecap saja sudah mewakili cita rasa nasi ayam afu. Hidangan ini biasanya disajikan bersama saus tauco yang membuat rasanya semakin nikmat.', 'https://goo.gl/maps/Crid2HPUW4WViGzb8', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Nasi Ayam Afu-DestinationImage-164905584450.nasi ayam afu 1.jpg","uploads\\/destination_image\\/Nasi Ayam Afu-DestinationImage-1649055844317.nasi ayam afu 2.jpg"]', 3, '2022-04-04 04:29:01', '2022-04-04 07:04:04'),
	(15, 'Warung Makan Ikan Bakar Haji Ijay', 'Warung makan yang menjual menu ikan tawar dan ikan laut yang dibakar. Tidak ketinggalan menu ayam bakar dan empal juga ada. Ikan bakar di warung ini terkenal sangat lezat di Samarinda. Buka di pukul 10.00-16.00 WITA dengan harga 20.000 saja', 'https://goo.gl/maps/LF5GYEH6Zx3hhde96', '29°C', '31°C', 5, '["uploads\\/destination_image\\/Warung Makan Ikan Bakar Haji Ijay-DestinationImage-1649055898952.warung makan h ijay 1.jpg"]', 3, '2022-04-04 04:29:04', '2022-04-04 07:04:58');
>>>>>>> hotel:tes_wisata.sql
/*!40000 ALTER TABLE `destinations` ENABLE KEYS */;

-- Dumping structure for table tes_wisata.destination_category
CREATE TABLE IF NOT EXISTS `destination_category` (
  `destination_category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `destination_category_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_category_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`destination_category_id`)
<<<<<<< HEAD:wisata_db.sql
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.destination_category: ~3 rows (approximately)
DELETE FROM `destination_category`;
=======
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.destination_category: ~3 rows (approximately)
>>>>>>> hotel:tes_wisata.sql
/*!40000 ALTER TABLE `destination_category` DISABLE KEYS */;
REPLACE INTO `destination_category` (`destination_category_id`, `destination_category_name`, `destination_category_image`, `created_at`, `updated_at`) VALUES
	(1, 'Alam', 'uploads/category_image/Alam-CategoryImage-1649017045911.alam.png', NULL, '2022-04-03 20:17:25'),
	(2, 'Kota', 'uploads/category_image/Kota-CategoryImage-1649017086116.kota.png', NULL, '2022-04-03 20:18:06'),
	(3, 'Kuliner', 'uploads/category_image/Kuliner-CategoryImage-1649017098315.kuliner.jpg', NULL, '2022-04-03 20:18:18');
/*!40000 ALTER TABLE `destination_category` ENABLE KEYS */;

-- Dumping structure for table tes_wisata.hotels
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hotel_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.hotels: ~7 rows (approximately)
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
REPLACE INTO `hotels` (`id`, `name`, `address`, `capacity`, `feature`, `price`, `created_at`, `updated_at`, `hotel_image`) VALUES
	(1, 'Zurich Hotel', 'Jl. Jend. Sudirman No. 321, Pusat Kota Balikpapan, Balikpapan, Kalimantan Timur, Indonesia, 76114', '2 Dewasa, 1 Kamar Tidur, 1 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Sarapan, Parkir 24 jam', 550000, NULL, NULL, 'uploads/hotel_image/zurichhotel.jpg'),
	(2, 'Swissbell Balikpapan', 'Balikpapan Ocean Square, Jl. Jenderal Sudirman, Klandasan Ilir, Kota Balikpapan, Kalimantan Timur', '2 Dewasa, 1 Kamar Tidur, 2 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Sarapan, Parkir 24 Jam', 430000, NULL, NULL, ''),
	(3, 'Whizprime Hotel', 'Jl. Jenderal Sudirman No.321, Damai, Kec. Balikpapan Kota, Kota Balikpapan, Kalimantan Timur 76114', '2 Dewasa, 1 Kamar Tidur, 2 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Sarapan, Parkir 24 Jam', 380000, NULL, NULL, NULL),
	(4, 'Golden Tulip Hotel', 'Jl. Jenderal Sudirman No.7, Klandasan Ilir, Kec. Balikpapan Kota, Kota Balikpapan, Kalimantan Timur 76114', '2 Dewasa, 1 Kamar Tidur, 1 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Sarapan, Parkir 24 Jam', 400000, NULL, NULL, NULL),
	(5, 'Blue Sky Hotel', 'Jl. Letjen Suprapto No.1, Marga Sari, Kec. Balikpapan Bar., Kota Balikpapan, Kalimantan Timur 76123', '2 Dewasa, 1 Kamar Tidur, 2 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Sarapan, Parkir 24 Jam', 625000, NULL, NULL, NULL),
	(6, 'Astara Hotel', 'Pentacity Shopping Mall, Jl. Jenderal Sudirman No.47, Superblock, Kecamatan Balikpapan Selatan, Kota Balikpapan, Kalimantan Timur 76114', '2 Dewasa, 1 Kamar Tidur, 1 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Sarapan, Parkir 24 Jam', 450000, NULL, NULL, NULL),
	(7, 'Hotel Neo+', 'Jl. Mayjend Sutoyo No.67, Gunungsari Ulu, Kec. Balikpapan Tengah, Kota Balikpapan, Kalimantan Timur 76122', '2 Dewasa, 1 Kamar Tidur, 2 Tempat Tidur, 1 Kamar Mandi', 'Wifi, Kolam Renang, Parkir 24 Jam', 330000, NULL, NULL, NULL);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;

-- Dumping structure for table tes_wisata.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(2, '2022_03_12_204300_create_destinations_table', 1),
	(3, '2022_03_12_204529_create_users_table', 1),
	(4, '2022_03_23_154713_create_destination_category_table', 1),
	(5, '2022_04_11_160615_create_hotels_table', 2),
	(6, '2022_04_11_161749_create_rooms_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table tes_wisata.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

<<<<<<< HEAD:wisata_db.sql
-- Dumping data for table tes_wisata.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
=======
-- Dumping data for table tes_wisata.personal_access_tokens: ~1 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
REPLACE INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 1, 'admin', 'cf40ecfc4534be2e23b97a7e383e34b929136634f8cf22bf6b4e9dbc84520af0', '["*"]', '2022-04-04 07:18:47', '2022-04-03 20:12:44', '2022-04-04 07:18:47');
>>>>>>> hotel:tes_wisata.sql
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table tes_wisata.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `id_room` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tes_wisata.rooms: ~1 rows (approximately)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
REPLACE INTO `rooms` (`id_room`, `name`, `capacity`, `feature`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'Deluxe', '2 Dewasa, 1 Kamar Tidur,  1 Tempat Tidur, 1 Kamar Mandi', 'WiFi, Kolam Renang, Sarapan, Check In 24 Jam', 550000, '2022-04-16 19:40:37', '2022-04-16 19:40:38');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

-- Dumping structure for table tes_wisata.users
CREATE TABLE IF NOT EXISTS `users` (
  `users_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`users_id`),
<<<<<<< HEAD:wisata_db.sql
  UNIQUE KEY `users_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
=======
  UNIQUE KEY `users_users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
>>>>>>> hotel:tes_wisata.sql

-- Dumping data for table tes_wisata.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
<<<<<<< HEAD:wisata_db.sql
INSERT INTO `users` (`users_id`, `users_first_name`, `users_last_name`, `email`, `password`, `users_role`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'admin@gmail.com', '$2a$10$sZVTDkm45VK5A31YBnUaUud.7QzR25.186xFvxtE9mhhUcL2mYvdK', 'admin', NULL, NULL),
	(2, 'tes', 'tes', 'tes@gmail.com', '$2y$10$8J2D8rCAp5nHZp0/FuxIDuaGT8v8an8CDP8pppy3ioukj/3.FlRQW', 'user', NULL, NULL),
	(3, 'tes', 'tes', 'testes@gmail.com', 'tes', 'user', '2022-04-17 23:07:33', '2022-04-17 23:07:33'),
	(4, 'rizky', 'firman', 'rizky@gmail.com', '$2y$10$ZapqRs9Xto8L8ySk7h1jL.QILYzAuC/VBOHI8cp8srUIKWAqhbnCq', 'user', '2022-04-26 04:06:36', '2022-04-26 04:06:36');
=======
REPLACE INTO `users` (`users_id`, `users_first_name`, `users_last_name`, `email`, `password`, `users_role`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$4Rw9en/5kxD.Xh.FVqZ6KOB80IgDInR1nxrvPzrWBrkJLyetoO02W', 'admin', NULL, NULL),
	(2, 'tes', 'tes', 'tes@gmail.com', '$2y$10$8J2D8rCAp5nHZp0/FuxIDuaGT8v8an8CDP8pppy3ioukj/3.FlRQW', 'user', NULL, NULL);
>>>>>>> hotel:tes_wisata.sql
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
