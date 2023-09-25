-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-09-2023 a las 15:50:29
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miniproyecto_laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombres`, `apellidos`, `direccion`, `email`, `telefono`, `edad`, `created_at`, `updated_at`) VALUES
(1, 'Efren Kutch', 'Mayert', '86399 Terry Mission Suite 675\nEvertchester, SC 01093', 'aliya12@marquardt.net', '(747) 855-6149', 47, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(2, 'Ms. Amiya Baumbach', 'Mraz', '18864 Albin Garden Apt. 590\nLyricport, ND 87677', 'eve63@hahn.info', '+12763892593', 67, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(3, 'Vanessa Breitenberg', 'White', '63011 Obie Ridges\nEast Marcelinashire, HI 91539', 'cary79@homenick.info', '+1 (513) 953-3790', 98, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(4, 'Prof. Herbert Watsica PhD', 'O\'Reilly', '80381 Ziemann Trail\nJakobfurt, SC 58058', 'jerry.dicki@gmail.com', '619.550.2052', 8, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(5, 'Harley Wiegand MD', 'Cummings', '264 Marquardt Fields Suite 052\nNorth Chester, TX 96116', 'alia78@terry.com', '+1 (347) 934-0587', 35, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(6, 'Prof. Henry Okuneva DVM', 'Rowe', '7278 Kuhic Curve\nLake Marlenehaven, GA 97166-5768', 'ephraim.ziemann@nicolas.info', '+1 (864) 421-8863', 61, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(7, 'Ms. Molly Fritsch Sr.', 'Schuppe', '7005 Brayan Street Apt. 075\nPearlineborough, UT 73726', 'hilpert.hilario@corwin.info', '+17274140437', 52, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(8, 'Lyric Fahey', 'Little', '9342 Veum Well\nPort Katherinebury, LA 10216', 'norwood65@purdy.org', '+16783000785', 96, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(9, 'Margret Murray Jr.', 'Mosciski', '22899 Kilback Landing Apt. 368\nJamelport, FL 92134', 'etha50@gmail.com', '+1 (973) 738-3968', 15, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(10, 'Mr. Lisandro Prosacco DVM', 'Lemke', '6698 Kutch Lane\nWolfchester, NE 05085', 'econroy@hotmail.com', '+1 (907) 378-8067', 61, '2023-09-25 20:42:26', '2023-09-25 20:42:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE IF NOT EXISTS `asistencias` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `asistio_temprano` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `asistio_tarde` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T',
  `falto` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `id_docente` bigint UNSIGNED NOT NULL,
  `id_alumno` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asistencias_id_docente_foreign` (`id_docente`),
  KEY `asistencias_id_alumno_foreign` (`id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `asistio_temprano`, `asistio_tarde`, `falto`, `id_docente`, `id_alumno`, `created_at`, `updated_at`) VALUES
(1, '', 'T', 'F', 3, 7, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(2, 'A', 'T', 'F', 5, 1, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(3, 'A', '', '', 1, 8, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(4, 'A', 'T', '', 4, 8, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(5, 'A', 'T', 'F', 2, 2, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(6, '', '', '', 7, 9, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(7, '', '', 'F', 7, 1, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(8, 'A', '', '', 3, 10, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(9, '', '', 'F', 8, 1, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(10, '', 'T', 'F', 2, 2, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(11, '-', '-', 'F', 10, 10, '2023-09-25 20:49:38', '2023-09-25 20:49:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre_curso`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Expedita ex voluptas explicabo veritatis quae.', 'Qui qui unde ut itaque qui.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(2, 'Voluptas et ratione.', 'Quia laboriosam nam itaque.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(3, 'Quas odio dolorem.', 'Quia omnis qui minus.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(4, 'Aut iste numquam et consequatur enim.', 'Velit aut iste explicabo.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(5, 'Voluptas architecto suscipit.', 'Non corrupti voluptas natus.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(6, 'Reiciendis quas est et consequuntur sit.', 'Tenetur vel ab et.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(7, 'Reiciendis quo est aut rem.', 'Expedita sit est neque et.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(8, 'Sunt voluptates illo aut.', 'Illum ut in aliquid et sunt.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(9, 'Nostrum reprehenderit nemo accusamus dolorem id.', 'Est aut quas deleniti non.', '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(10, 'Repellendus ut earum temporibus.', 'Eum expedita voluptatem quia.', '2023-09-25 20:42:26', '2023-09-25 20:42:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

DROP TABLE IF EXISTS `docentes`;
CREATE TABLE IF NOT EXISTS `docentes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombres`, `apellidos`, `direccion`, `email`, `telefono`, `edad`, `created_at`, `updated_at`) VALUES
(1, 'Norval Nolan', 'Bergstrom', '10488 Lehner Glens Suite 578\nWatersburgh, NE 96753-5282', 'sophia.mann@fay.com', '1-757-939-5953', 70, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(2, 'Dr. Uriel Mills', 'Towne', '5874 Heaney Alley\nWillberg, AL 50243', 'ylesch@gleichner.net', '+1-586-491-6402', 93, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(3, 'Conner Dibbert', 'Collier', '8869 Eichmann Street\nAshleyfurt, AZ 76234', 'sylvester.von@rutherford.info', '+1.608.483.0010', 22, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(4, 'Bethany Schulist Sr.', 'Zieme', '437 Tristin Freeway\nMicahport, LA 01767', 'luettgen.cleve@yahoo.com', '+16502438595', 42, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(5, 'Miss Dortha Wolf', 'Lemke', '10404 Sawayn Loop\nLake Christelle, KY 82002-6483', 'robb00@roob.com', '959-541-2631', 33, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(6, 'Korey Kris', 'Green', '66891 Lakin Ports Suite 953\nJudgeville, MT 42444', 'carroll.bette@hotmail.com', '+1-283-478-0882', 12, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(7, 'Mrs. Michelle Zboncak Sr.', 'Bechtelar', '3550 Casper Square\nRosenbaumland, AR 02978-4969', 'rylee17@yahoo.com', '1-830-241-2550', 1, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(8, 'Terrill Rodriguez III', 'Kovacek', '45167 Ambrose Junctions Suite 037\nPort Vladimir, WY 95869', 'haylee57@hilpert.com', '260.676.1618', 50, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(9, 'Santa Hermiston', 'Kunze', '58597 Kessler Trafficway Suite 027\nNew Dariusport, IL 82478', 'huels.tyler@yahoo.com', '740.579.5467', 73, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(10, 'Dr. Morris Bergnaum DVM', 'Funk', '1965 Rippin Parkway Suite 673\nSouth Sage, WA 85083-3486', 'yadira.hartmann@gmail.com', '810-925-6518', 37, '2023-09-25 20:42:26', '2023-09-25 20:42:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE IF NOT EXISTS `matriculas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_curso` bigint UNSIGNED NOT NULL,
  `id_alumno` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matriculas_id_curso_foreign` (`id_curso`),
  KEY `matriculas_id_alumno_foreign` (`id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id`, `descripcion`, `id_curso`, `id_alumno`, `created_at`, `updated_at`) VALUES
(1, 'Iure laborum dolor vel.', 2, 4, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(2, 'Perferendis sit ab dolore.', 7, 10, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(3, 'Amet eos officia facilis sit.', 9, 7, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(4, 'Ut amet deserunt et tenetur.', 6, 6, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(5, 'Incidunt id eum et nobis.', 6, 4, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(6, 'Commodi rerum ea sit ducimus.', 6, 7, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(7, 'Nesciunt ut sint et.', 1, 5, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(8, 'Dolorem et ea quae.', 2, 2, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(9, 'Vel eius temporibus quo.', 7, 7, '2023-09-25 20:42:26', '2023-09-25 20:42:26'),
(10, 'Nobis quia eveniet molestias.', 7, 5, '2023-09-25 20:42:26', '2023-09-25 20:42:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_21_143904_create_docentes_table', 1),
(6, '2023_09_21_143940_create_alumnos_table', 1),
(7, '2023_09_22_013903_create_asistencias_table', 1),
(8, '2023_09_23_174144_create_cursos_table', 1),
(9, '2023_09_23_202410_create_matriculas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asistencias_id_docente_foreign` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matriculas_id_curso_foreign` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
