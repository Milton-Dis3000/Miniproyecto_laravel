-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-09-2023 a las 15:41:07
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombres`, `apellidos`, `direccion`, `email`, `telefono`, `edad`, `created_at`, `updated_at`) VALUES
(1, 'Keara Schmitt', 'Windler', '684 Mercedes Expressway Suite 584\nMeaghantown, MS 06342-4109', 'laila.maggio@tillman.net', '1-520-351-3291', 38, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(2, 'Jaquan Johnston DVM', 'Bahringer', '88651 Hill Causeway Apt. 725\nKohlertown, IN 37887-2636', 'austyn.hills@hotmail.com', '1-570-565-2850', 22, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(3, 'Miss Lisa Nolan', 'Brekke', '302 Mohammed Forges\nHahnshire, MN 82772', 'yolanda.nicolas@gmail.com', '+1 (612) 865-9599', 18, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(4, 'Estrella Ratke', 'Monahan', '3504 Becker Pines\nShaniyahaven, HI 91111', 'effie08@borer.com', '302-270-6614', 26, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(5, 'Prof. Jerel Schulist', 'Cronin', '2327 Alejandra Islands\nNew Sydneystad, MT 83903', 'reynold17@nienow.com', '(929) 467-2927', 39, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(6, 'Marco Lebsack', 'VonRueden', '3715 Schmeler Way\nEast Berneicefort, AZ 59890', 'piper.weber@wilkinson.com', '903.849.7250', 37, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(7, 'Blake Spencer', 'Heathcote', '3546 Norwood Course\nBlanchetown, FL 03065-1132', 'cummerata.jesse@yahoo.com', '(650) 474-2069', 87, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(8, 'Ms. Martine Hackett Jr.', 'Wisozk', '348 Johnston Park\nWest Rosannafurt, PA 85792-8658', 'ngibson@donnelly.com', '(760) 272-0721', 16, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(9, 'Nella Schoen', 'Jones', '90591 Hilario Pines\nMylenechester, LA 88341', 'ehill@stanton.com', '+1.781.685.3902', 29, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(10, 'Mr. Guillermo Ebert', 'Casper', '63264 Zachary Square Suite 350\nZiemannmouth, OK 41732', 'nvonrueden@yahoo.com', '1-864-931-8928', 47, '2023-09-25 19:13:09', '2023-09-25 19:13:09');

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
(1, '', '', '', 1, 9, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(2, 'A', 'T', '', 1, 4, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(3, '', '', '', 9, 5, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(4, '', '', '', 3, 7, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(5, '', 'T', 'F', 3, 5, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(6, 'A', 'T', '', 3, 2, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(7, '', '', '', 1, 7, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(8, '', '', '', 6, 10, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(9, '', 'T', 'F', 4, 7, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(10, '', '', '', 4, 6, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(11, '-', '-', 'F', 1, 9, '2023-09-25 19:20:51', '2023-09-25 19:20:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre_curso`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Soluta quo non tempora sit rem.', 'Itaque quo ea vel.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(2, 'Dicta sit ipsa.', 'Laborum velit vitae ad.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(3, 'Id optio occaecati quia in.', 'Quidem porro ut et rerum.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(4, 'Nihil et et voluptas ipsa.', 'Odit ea a nemo unde nesciunt.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(5, 'Sint dolorem ut illum.', 'Quia dolor qui id velit quas.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(6, 'Voluptas doloremque reprehenderit.', 'Sed sint ut accusamus quod.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(7, 'Qui aut dolorem autem labore.', 'Sit id velit veritatis odit.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(8, 'Ea ad quae.', 'Id sunt asperiores quas.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(9, 'Labore aut vero magni cumque.', 'Quia sunt culpa odit vero.', '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(10, 'Matematica', 'Nuevo curso para las ciencias exacta', '2023-09-25 19:13:09', '2023-09-25 20:05:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombres`, `apellidos`, `direccion`, `email`, `telefono`, `edad`, `created_at`, `updated_at`) VALUES
(1, 'Willard Brakus III', 'Friesen', '6069 Ryan Port Suite 400\nWest Bernard, WI 26371', 'sokon@kemmer.com', '1-540-759-5086', 99, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(2, 'Prof. Demond Herzog', 'Nolan', '31253 Hackett Rapids Suite 162\nLake Herminiaborough, MS 48648-2047', 'abernathy.kane@runolfsson.net', '1-740-302-0096', 80, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(3, 'Kavon Bahringer DVM', 'Spencer', '2368 Dickinson Parks\nAbshirefurt, RI 21509-8242', 'colton.gibson@rippin.biz', '+1-707-353-8382', 35, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(4, 'Mr. Nash Ebert DVM', 'Green', '462 Colt Fork Apt. 129\nLake Janessa, NH 76460', 'condricka@yahoo.com', '339.723.4743', 21, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(5, 'Pamela Rowe', 'Borer', '1381 Kuphal Stravenue\nPort Marcelina, MI 38987-7093', 'kuhn.lucinda@rutherford.org', '601.934.6174', 78, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(6, 'Miss Emie Bergnaum PhD', 'Von', '961 Maye Drive Apt. 771\nDonnellyview, ME 81846-8580', 'vswift@gmail.com', '231.360.1180', 42, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(7, 'Grayce Hane', 'Kris', '8937 Jermaine Overpass Suite 248\nMargareteshire, GA 60917-1702', 'verla.nikolaus@yahoo.com', '1-941-457-0317', 93, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(8, 'Mrs. Cathrine Ernser DDS', 'Prosacco', '2784 Pauline Field\nNew Shaina, MD 74068-7025', 'rkuphal@gmail.com', '+16785829673', 30, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(9, 'Darian Larkin', 'Jakubowski', '3482 Sipes Fall\nWest Maria, CA 35452-4014', 'gloria50@hotmail.com', '863.216.8834', 8, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(10, 'Fermin Dickinson', 'Spinka', '59590 Bauch Corners Apt. 731\nNew Meaganburgh, ME 25419-6912', 'josephine.white@reynolds.org', '1-865-618-9090', 94, '2023-09-25 19:13:09', '2023-09-25 19:13:09');

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
(1, 'Et vitae non possimus.', 8, 1, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(2, 'Praesentium eos ut qui a.', 1, 7, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(3, 'Officia odit aliquam natus.', 4, 1, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(4, 'Rem laborum sed quia.', 5, 3, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(5, 'In delectus hic ut quas.', 3, 1, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(6, 'Eum ut ex ducimus omnis.', 5, 5, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(7, 'Est autem sint aut amet.', 1, 5, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(8, 'Et eos nulla quam magni.', 9, 2, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(9, 'Voluptas dolorem et magni.', 8, 9, '2023-09-25 19:13:09', '2023-09-25 19:13:09'),
(10, 'Saepe tenetur sunt ut.', 2, 5, '2023-09-25 19:13:09', '2023-09-25 19:13:09');

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
