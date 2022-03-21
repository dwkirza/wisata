-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for wpu_blog
CREATE DATABASE IF NOT EXISTS `wpu_blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wpu_blog`;

-- Dumping structure for table wpu_blog.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Kota', 'kota', '2022-03-14 18:26:48', '2022-03-14 18:26:48'),
	(2, 'Alam', 'alam', '2022-03-14 18:26:48', '2022-03-14 18:26:48');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table wpu_blog.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table wpu_blog.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_03_06_085317_create_posts_table', 1),
	(6, '2022_03_06_143944_create_categories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table wpu_blog.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table wpu_blog.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table wpu_blog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.posts: ~10 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 7, 'Sapiente totam ex.', 'omnis-laborum-et-molestiae-unde-non-omnis', 'Corporis ipsum eaque aperiam animi pariatur aut provident. Asperiores maxime similique deserunt. Voluptates voluptate quidem id labore incidunt sed voluptas. Dolorum inventore sequi distinctio id itaque earum iure. Et consequatur illo tempora qui porro distinctio.', '<p>Consequatur dolore consequatur laudantium ut voluptas optio. Sint blanditiis et earum reiciendis doloremque. Rerum ex ad culpa et eaque nihil.</p><p>Dolores reprehenderit cupiditate est id. Quibusdam pariatur iste dolores sunt eos fugit iste. Qui facilis at nam delectus quae similique pariatur. Et beatae enim distinctio iusto.</p><p>Eveniet itaque consequatur sint modi non. Quia aliquam iste necessitatibus. Rerum facilis voluptate sint repellendus cum. Modi officiis eaque commodi doloribus aut optio eligendi.</p><p>Alias adipisci fugiat consequuntur. Aut ipsa repellendus natus consequatur. Qui alias ut doloribus quo autem repellendus.</p><p>Voluptate rerum officia id cupiditate laborum. Ab sed est quaerat quis corporis quibusdam. Reprehenderit est doloribus natus sapiente debitis voluptate. Rerum perferendis deleniti quia tenetur nam recusandae. Est est aut est excepturi illum.</p><p>Voluptate tenetur qui alias illum. Modi totam animi veniam rerum est. Est non velit dolor consequatur eaque vero.</p><p>In repellat non voluptas ullam doloremque illo asperiores. Aut accusamus sapiente qui aut. Sed odio ducimus voluptas ut voluptate corporis. Perspiciatis cumque nihil quo aspernatur.</p><p>Perferendis occaecati earum assumenda omnis voluptatibus aut vero. Autem impedit dolore odio quisquam aut enim. Dolor sapiente eius voluptas a. Adipisci numquam est ad. Corrupti qui aliquid porro suscipit at.</p><p>Est quae nostrum qui at sit. Qui velit velit nihil aut. Qui odio aut voluptatum numquam. Sunt in reiciendis recusandae pariatur deleniti non et. Nostrum at non possimus animi consequatur.</p><p>Error harum ut quos exercitationem qui ex. In id voluptas et. Unde culpa et dignissimos repellendus recusandae ea at. Voluptatibus odio non et delectus error odio nihil.</p><p>Magnam qui qui dolorum molestiae quas qui quasi. A velit dignissimos cum nam. Deserunt ratione pariatur quidem beatae quaerat. Inventore repudiandae ipsam saepe repudiandae.</p><p>Neque magnam similique dolorum hic dolor sint. Ducimus dolor a natus eius vel fuga. Quia cum et distinctio qui ut ex voluptate.</p><p>Possimus quis omnis voluptatem vitae dolorem consequatur aspernatur. Inventore sunt eaque fuga. Odio et voluptates consequuntur accusamus.</p><p>Magnam itaque earum id aliquam quaerat. Velit voluptatem in pariatur corporis. Voluptatem et odit aperiam ipsum illum.</p><p>Non id vel quos sunt voluptas. Impedit aliquid dignissimos doloribus iste provident temporibus et. Consequatur aut quasi sed asperiores veritatis alias.</p><p>Dolore ut voluptatum adipisci quia libero facere temporibus. Sit eaque vel quidem autem necessitatibus itaque voluptas est. Nobis laudantium provident asperiores asperiores velit iste incidunt. Eveniet porro et eum tempora.</p><p>Ratione alias assumenda voluptatem sunt nobis. Voluptatem omnis minima dolorem qui. Voluptatem voluptatum quo neque neque voluptas qui aspernatur vero.</p><p>Omnis quia aut dolores dolor itaque. Impedit consectetur aut ut doloremque quasi. Illo suscipit dolores voluptates accusamus qui harum.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(2, 1, 9, 'Et fugit distinctio quae quam autem.', 'perferendis-aut-odit-at-et-commodi-a', 'Ipsum quaerat dignissimos rerum vel exercitationem voluptatum culpa. Quis velit nesciunt ratione tenetur consequatur libero odio. At at consequatur dolores.', '<p>Dolorem error inventore dolor et error voluptates mollitia. Porro quaerat et dolores ratione veniam. Beatae sed dolor nam unde. Quis ut assumenda laborum.</p><p>Assumenda nisi sunt sint deserunt doloremque. Voluptate ex nemo quos ab hic. Sint molestias praesentium autem laborum.</p><p>Dolores id provident quasi laudantium quia aliquid. Perferendis veritatis debitis deserunt ad molestiae. Dolorem dolor explicabo nesciunt ea.</p><p>Nemo voluptatum quasi ipsam voluptatem adipisci et rerum. Repellendus totam magni esse sunt ad. Maiores veniam non quo repudiandae alias totam.</p><p>Explicabo unde necessitatibus occaecati impedit earum iste et. Eum enim tempore voluptas aliquam dolore enim dolorum.</p><p>Unde magnam qui odit in pariatur. Ea sed maiores velit culpa hic. Explicabo quia enim sed et pariatur rem et. Voluptas a repellat asperiores molestias.</p><p>Quod aliquid nobis animi sapiente id sed quasi. Temporibus voluptatem temporibus aperiam corporis sed laudantium ut.</p><p>Error et quod aut et officia maiores. Optio cupiditate sit dolores id labore fugit eos molestiae. Id consequuntur aliquid placeat.</p><p>Consequatur at et commodi non repellendus eum quia. Officia assumenda perspiciatis quaerat id corrupti est rerum. Nam ea ut dignissimos in qui perferendis velit. Ducimus est architecto facilis incidunt qui explicabo. Debitis aut nostrum numquam.</p><p>Sit reiciendis tempora temporibus quis molestiae minima adipisci. Quod vel harum possimus tempore ab impedit quaerat. Ad quisquam reprehenderit explicabo et. Dolorum molestiae et nemo temporibus qui.</p><p>Pariatur doloremque sint illum earum et quis. Accusamus rerum omnis asperiores temporibus.</p><p>Molestiae ad optio ullam debitis. Iusto ullam eos illo nostrum unde voluptatum omnis. Sit fuga numquam ab ut laboriosam.</p><p>Sint dicta doloribus et nulla. Ut aut ipsam et praesentium. Eveniet totam omnis ut temporibus rerum explicabo est.</p><p>Laudantium est nisi quis animi iste quis. Dolores consequuntur magni voluptate omnis odit in adipisci. Non delectus ut voluptas expedita molestias ut sed. Dolores vitae dolorem quisquam consequatur dolores.</p><p>Vel qui ratione fugiat aspernatur. At autem tempora est rerum quam. Illum dolores quas quaerat debitis consequatur rem ipsam voluptas. Accusamus architecto qui non iste nemo quos aspernatur.</p><p>Ea asperiores exercitationem blanditiis sit quaerat qui minus. Ab cumque dolorem assumenda eaque. Temporibus voluptatem voluptas distinctio recusandae assumenda amet autem vitae. Alias sapiente perferendis nulla dolorum.</p><p>Enim veritatis est aut sequi a totam. Voluptatem commodi amet a velit sed. Alias nobis sint eos tenetur. Maxime tempore aliquam possimus similique eius consequatur incidunt omnis.</p><p>Eos voluptatem veniam perspiciatis quos. Fugiat quia optio perspiciatis mollitia at neque tempore. Possimus laudantium error ea nemo alias labore.</p><p>Rerum ab magni molestiae quis ut. Id reprehenderit qui ut similique. Fuga blanditiis distinctio sed ea nulla voluptatibus accusamus. Tempore veritatis aut et amet quia ut consequatur.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(3, 2, 7, 'Nam provident consequatur ducimus harum tenetur.', 'dignissimos-natus-ut-perferendis', 'Quod esse qui quidem dicta rerum cupiditate iure aut. Ut tenetur ratione dicta rerum expedita illo omnis doloribus. Est aut placeat et harum aperiam.', '<p>Aut facilis et et beatae. Impedit culpa placeat porro quae animi. Necessitatibus at saepe necessitatibus ut error.</p><p>Necessitatibus vitae inventore eius quia facilis. Facere voluptate perspiciatis aut aut sunt vel voluptatem. Nulla accusamus dignissimos aperiam optio quibusdam nihil nam. Libero laborum assumenda distinctio et iusto hic. Alias recusandae tempore occaecati architecto.</p><p>Commodi laboriosam numquam ut quo. Cumque amet hic omnis alias. Ullam quae illo illo non molestias doloremque facilis.</p><p>Id vel eos veritatis consequatur mollitia. Tenetur provident est asperiores sapiente. Omnis id sint expedita cumque.</p><p>Expedita in architecto cupiditate molestiae reprehenderit maiores et unde. Cumque at dolores saepe repudiandae. Occaecati architecto similique sunt iusto id.</p><p>Repellat commodi velit ab. Cumque aut temporibus voluptatem id quaerat. Laboriosam et molestiae vel ipsam fugiat animi. Consequatur et quod accusantium quam quia veniam.</p><p>Ex dolorem qui laboriosam nam impedit explicabo. Eius est praesentium amet soluta. Accusantium aspernatur tempora nihil eveniet iusto. Nulla quidem animi explicabo quod est non alias.</p><p>Itaque debitis eaque quae nisi occaecati culpa voluptatibus harum. Est qui optio quam blanditiis cupiditate et ipsa. Asperiores dolor quidem dolor quis.</p><p>Velit aliquam beatae est. Vel excepturi eum veniam et est non autem. Assumenda doloribus accusantium aut labore placeat quas quia.</p><p>Sapiente explicabo earum nihil doloremque et asperiores ut. Aliquam aut eos enim voluptatem. Aut esse necessitatibus labore hic aut consequatur et.</p><p>Consequatur dolor qui ipsum mollitia eos. Molestiae consequuntur omnis in dignissimos occaecati animi nemo. Et maiores qui rem ut debitis illum dolores expedita. Ipsa ea quia aut qui enim quis. Earum tempora cumque cum rerum odit et.</p><p>Occaecati laboriosam quasi accusantium placeat ab doloribus occaecati necessitatibus. Ratione dolor sequi aut qui ab harum et. Illo dolor accusamus aliquam.</p><p>Sint mollitia minima debitis dolores quasi et. Rerum qui quisquam ab esse. Fugiat ea similique atque qui dolorem.</p><p>Est nesciunt officia deserunt. Cupiditate qui fuga aliquid molestiae voluptas nulla nesciunt ipsam. Aut ratione praesentium dolorem omnis odit inventore.</p><p>Omnis accusamus delectus error qui sit repudiandae. Culpa facere magnam molestiae sed nesciunt quo. Tempore consequuntur qui quos rerum in atque.</p><p>Iste iure atque sequi dolorum facere architecto. Ut saepe nesciunt dignissimos voluptatum vel officia. Enim veniam temporibus ut perferendis voluptatem et. Illum molestiae qui sequi explicabo odio qui dolor consequatur.</p><p>Ut est veritatis corrupti ullam quisquam blanditiis inventore. Quis nihil rerum velit iusto. Labore sed vel ut ab. Voluptates quasi et quia velit nam dolor est. Quis assumenda et rerum dicta dolor exercitationem voluptates.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(4, 2, 1, 'Est quo tenetur aliquam vel mollitia ratione minus.', 'earum-id-sint-impedit-voluptates-voluptatum-ex-aliquam-vitae', 'Ab sit a dolor ut est. Quam molestiae est numquam eaque mollitia vero nemo. Deleniti fuga molestias voluptatibus sapiente.', '<p>Repellendus voluptatem sit numquam repellat. Omnis illum aliquid autem id tempora est non.</p><p>Praesentium asperiores sunt ab sapiente. Occaecati quia soluta nam perspiciatis. Molestias perspiciatis velit in dignissimos qui.</p><p>Dolores quidem aspernatur architecto eaque enim assumenda eum tempore. Ut harum animi voluptates numquam eligendi. Et quaerat consequatur quasi fugit magnam numquam id.</p><p>Rem et itaque nobis maxime labore. Beatae et quia commodi nihil optio quis temporibus. Suscipit sint corporis et harum. Assumenda molestiae ducimus quaerat labore.</p><p>Recusandae inventore ipsum libero corrupti esse enim fugit ducimus. Molestiae veniam non minima illum. Enim ut nam exercitationem optio quas. Voluptate sunt occaecati est repudiandae enim.</p><p>Nesciunt eos qui dolore et quis aut. Et a et odit. Beatae nesciunt et laudantium est. Aliquid voluptatem quas aut.</p><p>Earum vel debitis debitis voluptates aspernatur doloribus. Iure officia et nobis. Nemo accusamus magnam officiis et nemo consequatur. Quia iusto saepe dolores quos dicta. Et eum quas nihil aut quis rem eligendi.</p><p>Velit aliquid veniam aperiam autem. Eius nostrum expedita ex aperiam nobis ducimus. Quaerat voluptates possimus qui ea qui ex iure repudiandae.</p><p>Tenetur doloremque fugit et natus. Molestiae quia qui quis autem aliquid. Deleniti iste deserunt voluptate et perspiciatis qui. Occaecati dolores corrupti perferendis accusamus.</p><p>Voluptatem et non libero. Voluptatem maiores illum hic eius fugiat modi. Sit sequi quia incidunt voluptatem reiciendis sunt.</p><p>Facere sapiente velit quo nobis officiis delectus voluptatem. Nisi quidem unde quisquam modi. Qui sit magnam ipsum perspiciatis sit. Atque sint esse voluptas quisquam laudantium nemo quis.</p><p>Quasi reprehenderit quis cum voluptatum assumenda et enim. Ab natus aut repellat. Debitis aperiam dolore et quo molestias voluptatum. Et illo sed reprehenderit consectetur reprehenderit.</p><p>Ipsam nihil adipisci quia est nam quia eius. Qui itaque omnis omnis blanditiis architecto architecto quia. Non qui culpa exercitationem beatae ipsum nulla. Sit eaque voluptatem veniam expedita.</p><p>Nisi non dolor qui in cum consequatur. Numquam sed voluptate deserunt totam iure nisi qui. Enim id ratione et qui doloremque. Vel impedit ut recusandae architecto quos.</p><p>Quae non cum aut eligendi cum. Illo consectetur eius qui accusantium. Eum amet ipsum rerum voluptatem non.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(5, 1, 7, 'Voluptate suscipit illum.', 'provident-quis-vel-quibusdam-at-ea', 'Sit ipsum quis quo odit. Illum quia sapiente voluptas esse delectus quam facilis. Corrupti aut natus fugit voluptate. Ab ex ratione ad enim. Voluptas mollitia officia in occaecati.', '<p>Voluptatem fugit laborum velit. Est quia dolor et maiores voluptas ea. Praesentium harum aut reiciendis deleniti.</p><p>Consequatur minima sed consequatur qui fugit expedita accusamus. Laborum molestiae dicta quia corrupti dolorem. Dolorem eveniet sed voluptates omnis dolores enim.</p><p>Assumenda officia sint ullam natus. Est nam quo similique ex dolorem voluptatum dolorem ut. Eos voluptatum et deserunt sed fuga dolores. Consequatur quis voluptatem ipsum consequatur labore sapiente unde.</p><p>Nesciunt quibusdam aut aut omnis aut. Iusto et omnis facilis vel laboriosam velit et reiciendis. Cum id illum itaque nulla itaque. Commodi reprehenderit dolorum est consectetur consequatur.</p><p>Temporibus consequatur ea voluptatem corrupti saepe. Quia non atque doloribus suscipit. Sint qui sit nisi odio.</p><p>Eaque nihil hic eum ab in minima facere accusantium. Error tempora facilis laudantium et. Cum vel libero atque. Dignissimos cum quis eum cupiditate eaque iste.</p><p>Earum cupiditate dolores enim totam. Sed sed et repudiandae accusantium sed vel. Minus molestiae dolorem ducimus aliquam consequatur voluptates. Ex quia ea perferendis et.</p><p>Nobis cum eos exercitationem ipsum. Accusamus repellendus dolorem totam quis voluptatem voluptatibus quaerat. Distinctio consequatur aut ducimus hic architecto. Omnis unde blanditiis nihil perferendis pariatur. Doloribus est ipsam eos mollitia id ut sunt dolores.</p><p>Blanditiis et ipsam quis praesentium ad harum non. Excepturi laboriosam nulla est. Qui vero est enim. Voluptate nam minima omnis.</p><p>Et ipsum ullam error voluptatem dolor atque voluptatibus. Ab ratione recusandae inventore at error ut. Beatae maxime sint itaque laborum reiciendis sunt.</p><p>Et nam omnis placeat similique. Facere omnis corporis asperiores est cupiditate. Iusto dolores et quis eum.</p><p>Veniam corporis dolore magnam cupiditate ut voluptatem blanditiis. Cupiditate est consequatur minus. Culpa sint cum omnis. Recusandae soluta molestias dolor id quos porro.</p><p>Et sit facilis voluptatem dolorum. Natus autem esse dolore sint repellendus voluptatum. Impedit commodi ipsa voluptatem et ea impedit quaerat.</p><p>Quas cum animi inventore et provident sed. Dicta earum officiis porro esse ipsam voluptas eos.</p><p>Et qui dicta et dolorem accusantium nihil quas. Omnis et quia non ea non qui quo. Omnis repellat minus ut delectus. Assumenda dolor quaerat provident et atque quod.</p><p>Qui est similique voluptatem dolor. Et nostrum vel perspiciatis atque accusantium facere. Sed pariatur aut qui itaque minus consequatur. Soluta et modi laudantium amet molestiae itaque.</p><p>Deserunt aperiam eos eum assumenda ipsum voluptatem. Delectus a facere adipisci accusamus eos.</p><p>Ea perferendis et occaecati dolorum dicta repellendus recusandae et. Incidunt ipsam hic inventore est labore quia nihil nesciunt. Pariatur suscipit ut magni sit optio recusandae ea. Est excepturi nulla at dolorem.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(6, 2, 4, 'Sit voluptates ratione sed veritatis dolores molestiae qui voluptatibus.', 'repellendus-omnis-tempora-in-aut-et-quis-sint-culpa', 'Est nemo sit accusamus maiores rerum. Velit quo adipisci fugit reiciendis sed voluptates. Eum minus voluptatem eos quia aliquid.', '<p>Explicabo eius aut molestiae odit repellat. Eligendi eos suscipit voluptatum ut. Rerum repudiandae voluptas at dolores ab.</p><p>Delectus illum nemo qui quidem et. Et est sed similique reiciendis autem placeat. Fuga officiis ab aspernatur et eaque. Et qui sunt cum non.</p><p>Quia ea dolor doloribus quasi ea. Est autem quo neque et esse delectus quis. Quia quidem et tenetur quia ea.</p><p>Veniam modi sequi provident dolor eos. Aliquid maxime ipsam est doloremque hic a. Eligendi similique molestias hic tenetur magni aut autem.</p><p>Fugit id nihil aliquam ratione ut unde. Itaque ab vel ipsum unde molestiae delectus voluptatibus. Id sit voluptatibus minima sint dolorem aut minus. Et nemo vel sunt eos explicabo.</p><p>Assumenda laudantium quia maxime sit voluptatum occaecati. Dolores earum rerum reiciendis praesentium quo. Autem blanditiis perspiciatis rerum qui quia hic aut. Porro velit quis nemo optio nulla.</p><p>Qui sint fugiat quos quis repudiandae voluptatum velit. Exercitationem est optio ducimus. Est non officia assumenda qui.</p><p>Id maiores et commodi est eum qui. Quibusdam quia officiis consectetur et. Dolorum libero quae quos.</p><p>Omnis dicta inventore dolorem pariatur odio. Possimus placeat qui expedita voluptates aut. Et eos ut atque perspiciatis a excepturi molestiae esse. Deserunt rerum vitae soluta magnam.</p><p>Saepe illum officiis fugit voluptatem qui eum. Quis pariatur optio sit enim autem.</p><p>Libero quae facilis et eum ut fuga quasi. Officiis quam minima molestiae necessitatibus ab in provident. Quo at minima perspiciatis occaecati sunt nesciunt quod.</p><p>Nihil aliquid velit mollitia similique vero qui quam. Dignissimos saepe magni ipsa. Voluptates accusamus maxime ea.</p><p>Commodi ut ipsam et illum fuga autem. Voluptate et dicta ullam quibusdam aspernatur assumenda dolorem. Nulla quasi et soluta omnis commodi.</p><p>Ex id pariatur sunt vel vero minima veniam. Consequuntur perspiciatis labore voluptatem molestias assumenda repudiandae magnam.</p><p>Quo accusamus voluptatibus nisi. Velit nemo aut omnis. Qui omnis perspiciatis vero et. Necessitatibus itaque tempora eveniet dignissimos similique et corporis.</p><p>Sit aut maiores dolores reprehenderit est laborum ipsam. Laboriosam accusamus nostrum voluptatem porro est.</p><p>Alias debitis quis quas quibusdam. Nostrum repellat enim soluta. Et praesentium doloribus et quia error quos at odit.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(7, 1, 3, 'Nemo facere quas et ipsa minus consequuntur neque sint quo.', 'dignissimos-atque-magnam-omnis-molestiae-et-totam-incidunt', 'Est sint cupiditate qui itaque velit voluptatum aperiam. Aperiam illo non ea assumenda est et quas. Exercitationem praesentium ullam pariatur quas. Harum aut totam eum voluptatibus.', '<p>Officiis quasi quia recusandae iure praesentium. Aut ut doloremque est mollitia non molestias. Voluptatem recusandae maxime consequuntur beatae. Adipisci quam et doloremque dolorem rem quia culpa omnis. Molestias id nostrum iste esse deserunt.</p><p>Eligendi aliquam doloribus id voluptas rerum omnis. Eos dicta aliquam officia. Dolorem est et nihil eligendi accusantium dignissimos ut.</p><p>Dolores ullam aperiam vel nulla blanditiis ut. Aspernatur voluptatem molestias dignissimos enim omnis. Rerum velit quia aspernatur nemo dolor.</p><p>Pariatur qui ut itaque culpa ad. Beatae nostrum voluptas adipisci exercitationem illo. Est ea nemo saepe. Earum quis veniam vel et harum veniam enim sapiente.</p><p>Ut quia quia omnis dolor sed. Sit qui quam non quia illo. Nobis ullam et quas et.</p><p>Architecto maiores neque ut accusamus quod. Autem aut illo dicta animi. Totam asperiores natus in iusto ullam eveniet. Libero soluta consequatur qui qui quod doloribus maiores amet. Veniam hic soluta error.</p><p>Qui in amet saepe aut tempore. Accusamus incidunt quia omnis assumenda ipsa ut provident. Possimus quia ipsum occaecati voluptatem consequuntur culpa illo.</p><p>Maxime cupiditate voluptatem velit. Dolorem nam sit et consequatur. Possimus ducimus alias voluptatem impedit nostrum soluta est minima.</p><p>Consequuntur sint qui fuga ullam. Reprehenderit tempora rerum quis et ipsum. Expedita odio adipisci aliquid reprehenderit quis a. Harum porro dolores enim. Dolore illo quisquam impedit cupiditate eos itaque commodi et.</p><p>Veritatis veritatis ducimus ut adipisci veniam iusto porro. Exercitationem qui ipsam rerum. Est sit est accusantium voluptas. Eum quia non cumque ipsum et. Et cumque provident libero nisi.</p><p>Eaque est fugit doloremque voluptatum est. Voluptatem commodi et eveniet. Culpa voluptates dolor suscipit harum et expedita.</p><p>Laboriosam commodi illum placeat et quia. Fuga quidem impedit vero sequi. Voluptatibus quo porro cupiditate minus occaecati. Cum neque sint vitae iusto ducimus sit voluptatem.</p><p>Et alias sit maxime ut dignissimos quod. Sapiente cumque quod necessitatibus qui. Est quas sapiente eum.</p><p>Quae nisi ut est ut aspernatur excepturi. Ipsa ut quia laudantium qui modi nemo est.</p><p>Quos nam unde quis exercitationem exercitationem voluptas. Est officiis aut dolorum accusamus officiis consequatur. Laudantium nesciunt error provident reprehenderit et quia sunt corrupti. Dolor dolores praesentium in et.</p><p>Iure eos iste laudantium autem possimus animi sit. Est esse autem earum officia minima. Voluptatibus similique commodi voluptatem qui quis.</p><p>Ullam deserunt iste ut nemo voluptates nihil vel laudantium. Quo sed perspiciatis cumque corporis et aliquid esse. Reprehenderit id corrupti ut voluptatem dolore inventore culpa. Vero eaque et aspernatur. Aut odio omnis sapiente aperiam error voluptatem ut sed.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(8, 1, 2, 'Et dolor autem animi ut quos deserunt.', 'aut-dolores-temporibus-exercitationem', 'Adipisci nihil aliquid dolorem id omnis. In et doloribus esse. Error explicabo consequatur quasi minus nobis autem.', '<p>At ratione delectus minus optio ducimus hic omnis. Assumenda ea rerum ut est quisquam consequatur. Aperiam non est minima.</p><p>Minima accusantium dolore maiores qui voluptatem inventore sunt. A maiores iusto non sint officiis.</p><p>Non expedita qui dolores esse laudantium voluptatum eum. Quo voluptas quia ea est temporibus illum. Rerum earum ut ex et aut. Inventore voluptatibus molestias exercitationem saepe deleniti. Eos cum enim magnam soluta omnis voluptas.</p><p>Veritatis debitis et dolor. Iure voluptatem commodi quas praesentium consequatur. Animi magni iure ipsam odit hic voluptates earum.</p><p>Possimus laudantium aliquid eius saepe. Voluptas temporibus sit id qui aut porro ea voluptas. Dolorem dolores nemo ducimus dolore minima et rerum. Enim numquam qui ipsam velit ullam fugiat magni consequatur.</p><p>Harum omnis et vel assumenda. Amet maiores dolorem quia sed quis reprehenderit repudiandae.</p><p>Sed enim voluptatem ea. Quisquam sed inventore nemo beatae omnis illo cupiditate. Distinctio totam voluptas facere ut sit omnis dolorem. Eum porro sit inventore.</p><p>Quia hic ut sequi assumenda aliquam autem quia. Praesentium eveniet excepturi sit sed necessitatibus saepe dolores. Sequi velit doloremque autem. Illo tempora amet nobis magni nisi.</p><p>Quia quia eos animi quia. Molestiae rerum magni quam ut delectus possimus in quam. Asperiores est deserunt minus delectus.</p><p>Voluptatibus laudantium eum similique tempore iste sed. Facere sed iure qui aut. Rerum nobis recusandae minus sint autem rem repellendus. Eius esse sit quia consequatur doloribus quae ullam.</p><p>Commodi quae odio odio vel enim debitis. Ad quaerat quia occaecati aspernatur sed. Rerum officia est ea commodi quia dolor.</p><p>Quo fuga accusamus quam iste aliquid quis quibusdam. Corporis aliquid a veniam aut cum. Iure perferendis voluptatem molestias necessitatibus quis. Ducimus molestiae aut consectetur et.</p><p>Ea quisquam molestiae aut eum. Dolor ipsam labore quam repudiandae recusandae incidunt non. Officiis quidem voluptatum eius qui aut qui quo. Et velit sunt sapiente error sit.</p><p>Odio vero modi delectus sed sapiente minima sapiente. Dolorum quisquam qui nisi ut dolore. Recusandae voluptatibus sint cum ipsam repellat repudiandae. Quia qui nam magnam deleniti recusandae omnis.</p><p>Nostrum et a fuga reprehenderit non. Aperiam sed vero ipsa sapiente pariatur voluptatem porro. Impedit qui impedit quas neque doloribus debitis nemo. Velit sapiente non quidem veniam et.</p><p>Nihil nemo ratione maxime. Reiciendis voluptas possimus omnis saepe est accusantium. Nisi qui nihil velit aperiam voluptatum fugiat veritatis.</p>', NULL, '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(9, 1, 3, 'Id delectus consequatur quas excepturi temporibus.', 'unde-quasi-debitis-ut-sapiente-perspiciatis-minima-quas-mollitia', 'Recusandae deleniti quaerat expedita ea eos voluptatem quisquam. Aspernatur nobis distinctio commodi omnis. Quam provident nemo inventore sapiente. Quam sit voluptas porro ad nesciunt commodi. Sit voluptas fugiat praesentium vel dolore quidem ea.', '<p>Est maiores doloremque aut qui sed. Et maiores soluta odit quidem optio molestias modi commodi. Incidunt et sit nesciunt quod quia sunt.</p><p>Neque omnis est eos incidunt corrupti dolores. Et et cupiditate ut architecto quidem. Ratione impedit rerum enim animi illum.</p><p>Odit ad quidem eum accusantium nesciunt. Blanditiis ut eum non. Dolores architecto ipsa voluptatibus dicta debitis sed et cumque. Quisquam consequatur quia aut est qui sint qui porro.</p><p>Quis aut labore repellat nesciunt. Commodi maxime et repudiandae explicabo possimus eveniet iusto. Ea odit praesentium eos ut.</p><p>In et nihil repudiandae reprehenderit labore. Ipsum error soluta alias recusandae cumque. Numquam autem eum culpa ut. Beatae natus excepturi modi iste sunt.</p><p>Ea inventore eveniet aut recusandae corporis in. Dignissimos ipsam possimus veritatis quasi fugiat laudantium quo. Omnis qui unde optio animi consequatur dolorem.</p><p>Dignissimos ex dolores facere et iusto magni. In dolores magnam similique in. Enim aperiam id possimus.</p><p>Doloribus repellat quia eius quos. Deserunt dolor totam accusantium quisquam ut sit ea. Vitae ea quod non ut ducimus. Laborum dignissimos sint eos amet at magnam aspernatur exercitationem.</p><p>Officiis incidunt in hic et ut asperiores. Earum voluptate non similique. Sit nihil consequatur et eum voluptatem nihil itaque voluptas. Eligendi quam voluptatem aut repellat praesentium amet sint qui.</p><p>Tempora praesentium similique ducimus id velit. Repellat amet commodi omnis magnam dolorem ut. Sequi eveniet et porro reiciendis.</p><p>Corporis velit exercitationem minus architecto tenetur et sunt dolore. Qui non ea vitae eius. Voluptas et fugiat perspiciatis eos esse. Harum illum aspernatur nostrum et nihil officia iusto.</p><p>Molestiae magni mollitia doloremque. Tempora enim eligendi quaerat qui dolores corrupti molestiae. Vel provident dolorum assumenda natus voluptas corrupti natus.</p><p>Aliquid in eum est dolore quia. Rerum dolorum odit molestias sit nam. Beatae dolorem quo accusamus sapiente magni.</p><p>Ratione maiores soluta accusantium. Nemo quia temporibus distinctio explicabo fuga ab quidem. Tempore id fuga quos rerum.</p><p>Quisquam qui quo doloribus autem corporis sed id. Placeat tempore velit molestiae sunt quisquam. Doloribus ut quod in molestiae temporibus odio. Similique ducimus inventore voluptate ut.</p><p>Hic pariatur et officiis veniam sunt odit. Est deleniti autem nobis veritatis sit. Dicta quia asperiores officiis exercitationem porro perspiciatis recusandae eaque. Vero voluptatibus molestiae est error quibusdam consequatur. Cupiditate eaque voluptas temporibus omnis.</p><p>Autem officia tenetur repellat repellat veritatis sit nemo. Aut numquam quis quae a velit nesciunt eos perferendis. Voluptas est sit id deleniti quas placeat omnis et.</p><p>Beatae consequatur omnis voluptatem exercitationem non autem reprehenderit quidem. Sed tenetur sint corporis fugiat quo pariatur voluptates. Maxime quis et nesciunt consectetur.</p><p>Sequi repellat autem veritatis reprehenderit est non sunt. Eligendi quo est ea impedit cum blanditiis. Occaecati eos autem voluptatem tempora.</p>', NULL, '2022-03-14 18:26:48', '2022-03-14 18:26:48'),
	(10, 1, 1, 'Necessitatibus neque sed voluptatum ratione distinctio.', 'unde-voluptatem-id-fugit-consectetur-et-nemo', 'Consequuntur molestias quo laboriosam nihil fugiat. Odio officiis inventore consectetur ipsa omnis ab mollitia. Dolores officiis nisi iste est doloremque inventore.', '<p>Occaecati dolore ipsa odio et possimus nulla soluta ipsam. Consequatur sit aut reiciendis nostrum. Nostrum totam quo adipisci molestiae eos eos. Consequuntur tempore ea molestias cupiditate.</p><p>Nisi ipsum ut quod nesciunt voluptatem pariatur enim est. Tempora facilis ut praesentium commodi quia. Fugit quas enim sequi dolorem molestias.</p><p>Est rerum nulla voluptatem dolor. Vel qui cumque et rerum. Iure dolores repellendus pariatur quis vero optio consequuntur. Excepturi exercitationem et dignissimos atque modi.</p><p>Quas ut unde vitae reprehenderit ea et est. Quasi quo nam qui omnis. Iste est nihil sit.</p><p>Odit culpa dolor ea sunt sit. Et pariatur et aut. Velit porro odit quo inventore minima facere harum. Nihil cum sunt tenetur quia repellendus sint sit qui.</p><p>Enim perferendis corrupti dolor facere nam. Quas perspiciatis voluptatibus deleniti consectetur. Distinctio deleniti minima fugit voluptatem dolorem. Quisquam fugit ab quia voluptatem et.</p><p>Dolores qui nihil nobis natus repellat culpa rem. Ullam ut ut modi assumenda corrupti expedita. Ea veritatis sit non quisquam porro at et itaque. Quo vero qui qui magni nostrum debitis nemo dolore.</p><p>Ducimus doloremque doloremque fugit in repudiandae alias. Et quasi nam et quae rerum. In aliquam quis fuga quia id rerum. At et magnam expedita ut.</p><p>Perspiciatis eveniet assumenda et illo labore beatae. Architecto voluptatem nihil iure eos a repellendus vel.</p><p>Possimus temporibus amet ut nobis et. Ea veritatis temporibus autem. Repellat iusto sequi est rerum quos voluptatem. Alias omnis ut minima et quia alias eaque.</p><p>Vel rem facere ut voluptatibus non id. Consequuntur tempora dolores in dolor cupiditate amet dolore. Consectetur consectetur ut eveniet assumenda. Delectus fugiat eaque enim consequatur consectetur. Atque nemo consectetur non.</p><p>Earum a neque eos sunt quia eum. Similique quos quaerat beatae cupiditate labore. Eligendi facilis repudiandae nostrum ut aut est sed.</p><p>Est deserunt sunt molestias. Consequatur sunt in eveniet voluptatem nam unde. Optio ea est provident in. Velit voluptas deleniti aut.</p><p>Illo hic magnam ad repellendus. Eos pariatur omnis eos aliquid autem quia. Libero a ut magnam maiores. Necessitatibus et tenetur laboriosam voluptate eos.</p><p>Quidem dolorem iste repellendus voluptatibus unde assumenda. Voluptas autem aliquam earum quo esse et incidunt. Rerum est officia aspernatur. Ut quia deserunt amet fugiat optio magnam odit dolores. Eveniet magni ipsa sit et ex recusandae.</p><p>Facere cumque ut at qui quia et veritatis. Et id autem sed et.</p><p>Quia fuga saepe suscipit. Placeat id quae laudantium voluptates rerum sit.</p><p>Est aut possimus eos doloremque incidunt error nobis. Laboriosam magnam repudiandae totam expedita harum.</p>', NULL, '2022-03-14 18:26:48', '2022-03-14 18:26:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table wpu_blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wpu_blog.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Amalia Salsabila Widiastuti', 'tdongoran', 'banawi.winarsih@example.net', '2022-03-14 18:26:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Af7vz4Kx6', '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(2, 'Dinda Malika Halimah S.Kom', 'opradipta', 'galak55@example.org', '2022-03-14 18:26:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cP6mvjrKOx', '2022-03-14 18:26:47', '2022-03-14 18:26:47'),
	(3, 'Daryani Prasetya', 'kariman44', 'dadi.namaga@example.com', '2022-03-14 18:26:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OqLi6DlHQt', '2022-03-14 18:26:47', '2022-03-14 18:26:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;