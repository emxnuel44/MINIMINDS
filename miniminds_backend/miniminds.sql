-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2025 a las 20:27:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miniminds`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `sonido` varchar(255) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `emoji` varchar(10) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `ruta` varchar(100) DEFAULT NULL,
  `orden` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `sonido`, `slug`, `emoji`, `icon_url`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Números', '', 'numbers', '🔢', NULL, '/numbers', 2, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(2, 'Animales', '', 'animals', '🐶', NULL, '/animals', 3, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(3, 'Colores', '', 'colors', '🎨', NULL, '/colors', 4, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(4, 'Cuerpo', '', 'body', '🧍', NULL, '/body', 5, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(5, 'Comida', '', 'food', '🍎', NULL, '/food', 6, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(6, 'Letras', '', 'letters', '🔤', NULL, '/letters', 0, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(7, 'Sílabas', '', 'syllables', '🔤', NULL, '/syllables', 7, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(8, 'Partes del Hogar', '', 'home', '🏠', NULL, '/home', 8, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(9, 'Objetos', '', 'objects', '📦', NULL, '/objects', 9, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(10, 'Miembros de la Familia', '', 'family', '👨‍👩‍👧‍👦', NULL, '/family', 10, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(11, 'Climas', '', 'weather', '🌤️', NULL, '/weather', 11, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(12, 'Horas', '', 'time', '🕐', NULL, '/time', 12, '2025-10-28 17:06:46', '2025-10-28 17:06:46'),
(13, 'Buenos Modales', '', 'manners', '🙏', NULL, '/manners', 13, '2025-10-28 17:06:46', '2025-10-28 17:06:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos`
--

CREATE TABLE `elementos` (
  `id` int(11) NOT NULL,
  `id_categorías` int(11) NOT NULL,
  `icono` varchar(10) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `sonido` varchar(255) DEFAULT NULL,
  `fondo` varchar(255) DEFAULT NULL,
  `nombre_ingles` varchar(100) DEFAULT NULL,
  `nombre_aleman` varchar(100) DEFAULT NULL,
  `categoria_nombre` varchar(100) DEFAULT NULL,
  `categoria_slug` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `elementos`
--

INSERT INTO `elementos` (`id`, `id_categorías`, `icono`, `nombre`, `sonido`, `fondo`, `nombre_ingles`, `nombre_aleman`, `categoria_nombre`, `categoria_slug`, `created_at`, `updated_at`) VALUES
(1, 6, '🔤', 'A', 'letra_a.mp3', 'fondo_azul.jpg', 'A', 'A', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(2, 6, '🔤', 'B', 'letra_b.mp3', 'fondo_verde.jpg', 'B', 'B', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(3, 6, '🔤', 'C', 'letra_c.mp3', 'fondo_rojo.jpg', 'C', 'C', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(4, 6, '🔤', 'D', 'letra_d.mp3', 'fondo_amarillo.jpg', 'D', 'D', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(5, 6, '🔤', 'E', 'letra_e.mp3', 'fondo_naranja.jpg', 'E', 'E', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(6, 6, '🔤', 'F', 'letra_f.mp3', 'fondo_morado.jpg', 'F', 'F', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(7, 6, '🔤', 'G', 'letra_g.mp3', 'fondo_rosa.jpg', 'G', 'G', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(8, 6, '🔤', 'H', 'letra_h.mp3', 'fondo_celeste.jpg', 'H', 'H', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(9, 6, '🔤', 'I', 'letra_i.mp3', 'fondo_verde_claro.jpg', 'I', 'I', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(10, 6, '🔤', 'J', 'letra_j.mp3', 'fondo_azul_claro.jpg', 'J', 'J', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(11, 6, '🔤', 'K', 'letra_k.mp3', 'fondo_rojo_claro.jpg', 'K', 'K', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(12, 6, '🔤', 'L', 'letra_l.mp3', 'fondo_amarillo_claro.jpg', 'L', 'L', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(13, 6, '🔤', 'M', 'letra_m.mp3', 'fondo_naranja_claro.jpg', 'M', 'M', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(14, 6, '🔤', 'N', 'letra_n.mp3', 'fondo_morado_claro.jpg', 'N', 'N', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(15, 6, '🔤', 'O', 'letra_o.mp3', 'fondo_rosa_claro.jpg', 'O', 'O', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(16, 6, '🔤', 'P', 'letra_p.mp3', 'fondo_celeste_claro.jpg', 'P', 'P', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(17, 6, '🔤', 'Q', 'letra_q.mp3', 'fondo_verde_oscuro.jpg', 'Q', 'Q', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(18, 6, '🔤', 'R', 'letra_r.mp3', 'fondo_azul_oscuro.jpg', 'R', 'R', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(19, 6, '🔤', 'S', 'letra_s.mp3', 'fondo_rojo_oscuro.jpg', 'S', 'S', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(20, 6, '🔤', 'T', 'letra_t.mp3', 'fondo_amarillo_oscuro.jpg', 'T', 'T', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(21, 6, '🔤', 'U', 'letra_u.mp3', 'fondo_naranja_oscuro.jpg', 'U', 'U', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(22, 6, '🔤', 'V', 'letra_v.mp3', 'fondo_morado_oscuro.jpg', 'V', 'V', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(23, 6, '🔤', 'W', 'letra_w.mp3', 'fondo_rosa_oscuro.jpg', 'W', 'W', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(24, 6, '🔤', 'X', 'letra_x.mp3', 'fondo_celeste_oscuro.jpg', 'X', 'X', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(25, 6, '🔤', 'Y', 'letra_y.mp3', 'fondo_gris.jpg', 'Y', 'Y', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(26, 6, '🔤', 'Z', 'letra_z.mp3', 'fondo_dorado.jpg', 'Z', 'Z', 'Letras', 'letters', '2025-10-28 17:07:22', '2025-10-28 17:07:22'),
(27, 1, '🔢', '1', 'numero_1.mp3', 'fondo_verde.jpg', 'One', 'Eins', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(28, 1, '🔢', '2', 'numero_2.mp3', 'fondo_rojo.jpg', 'Two', 'Zwei', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(29, 1, '🔢', '3', 'numero_3.mp3', 'fondo_amarillo.jpg', 'Three', 'Drei', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(30, 1, '🔢', '4', 'numero_4.mp3', 'fondo_naranja.jpg', 'Four', 'Vier', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(31, 1, '🔢', '5', 'numero_5.mp3', 'fondo_morado.jpg', 'Five', 'Fünf', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(32, 1, '🔢', '6', 'numero_6.mp3', 'fondo_rosa.jpg', 'Six', 'Sechs', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(33, 1, '🔢', '7', 'numero_7.mp3', 'fondo_celeste.jpg', 'Seven', 'Sieben', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(34, 1, '🔢', '8', 'numero_8.mp3', 'fondo_verde_claro.jpg', 'Eight', 'Acht', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(35, 1, '🔢', '9', 'numero_9.mp3', 'fondo_azul_claro.jpg', 'Nine', 'Neun', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(36, 1, '🔢', '10', 'numero_10.mp3', 'fondo_rojo_claro.jpg', 'Ten', 'Zehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(37, 1, '🔢', '11', 'numero_11.mp3', 'fondo_amarillo_claro.jpg', 'Eleven', 'Elf', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(38, 1, '🔢', '12', 'numero_12.mp3', 'fondo_naranja_claro.jpg', 'Twelve', 'Zwölf', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(39, 1, '🔢', '13', 'numero_13.mp3', 'fondo_morado_claro.jpg', 'Thirteen', 'Dreizehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(40, 1, '🔢', '14', 'numero_14.mp3', 'fondo_rosa_claro.jpg', 'Fourteen', 'Vierzehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(41, 1, '🔢', '15', 'numero_15.mp3', 'fondo_celeste_claro.jpg', 'Fifteen', 'Fünfzehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(42, 1, '🔢', '16', 'numero_16.mp3', 'fondo_verde_oscuro.jpg', 'Sixteen', 'Sechzehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(43, 1, '🔢', '17', 'numero_17.mp3', 'fondo_azul_oscuro.jpg', 'Seventeen', 'Siebzehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(44, 1, '🔢', '18', 'numero_18.mp3', 'fondo_rojo_oscuro.jpg', 'Eighteen', 'Achtzehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(45, 1, '🔢', '19', 'numero_19.mp3', 'fondo_amarillo_oscuro.jpg', 'Nineteen', 'Neunzehn', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(46, 1, '🔢', '20', 'numero_20.mp3', 'fondo_naranja_oscuro.jpg', 'Twenty', 'Zwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(47, 1, '🔢', '21', 'numero_21.mp3', 'fondo_morado_oscuro.jpg', 'Twenty-One', 'EinsundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(48, 1, '🔢', '22', 'numero_22.mp3', 'fondo_rosa_oscuro.jpg', 'Twenty-Two', 'ZweiundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(49, 1, '🔢', '23', 'numero_23.mp3', 'fondo_celeste_oscuro.jpg', 'Twenty-Three', 'DreiundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(50, 1, '🔢', '24', 'numero_24.mp3', 'fondo_gris.jpg', 'Twenty-Four', 'VierundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(51, 1, '🔢', '25', 'numero_25.mp3', 'fondo_dorado.jpg', 'Twenty-Five', 'FünfundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(52, 1, '🔢', '26', 'numero_26.mp3', 'fondo_azul.jpg', 'Twenty-Six', 'SechsundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(53, 1, '🔢', '27', 'numero_27.mp3', 'fondo_verde.jpg', 'Twenty-Seven', 'SiebenundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(54, 1, '🔢', '28', 'numero_28.mp3', 'fondo_rojo.jpg', 'Twenty-Eight', 'AchtundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(55, 1, '🔢', '29', 'numero_29.mp3', 'fondo_amarillo.jpg', 'Twenty-Nine', 'NeunundZwanzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(56, 1, '🔢', '30', 'numero_30.mp3', 'fondo_naranja.jpg', 'Thirty', 'Dreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(57, 1, '🔢', '31', 'numero_31.mp3', 'fondo_morado.jpg', 'Thirty-One', 'EinsundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(58, 1, '🔢', '32', 'numero_32.mp3', 'fondo_rosa.jpg', 'Thirty-Two', 'ZweiundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(59, 1, '🔢', '33', 'numero_33.mp3', 'fondo_celeste.jpg', 'Thirty-Three', 'DreiundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(60, 1, '🔢', '34', 'numero_34.mp3', 'fondo_verde_claro.jpg', 'Thirty-Four', 'VierundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(61, 1, '🔢', '35', 'numero_35.mp3', 'fondo_azul_claro.jpg', 'Thirty-Five', 'FünfundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(62, 1, '🔢', '36', 'numero_36.mp3', 'fondo_rojo_claro.jpg', 'Thirty-Six', 'SechsundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(63, 1, '🔢', '37', 'numero_37.mp3', 'fondo_amarillo_claro.jpg', 'Thirty-Seven', 'SiebenundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(64, 1, '🔢', '38', 'numero_38.mp3', 'fondo_naranja_claro.jpg', 'Thirty-Eight', 'AchtundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(65, 1, '🔢', '39', 'numero_39.mp3', 'fondo_morado_claro.jpg', 'Thirty-Nine', 'NeunundDreißig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(66, 1, '🔢', '40', 'numero_40.mp3', 'fondo_rosa_claro.jpg', 'Forty', 'Vierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(67, 1, '🔢', '41', 'numero_41.mp3', 'fondo_celeste_claro.jpg', 'Forty-One', 'EinsundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(68, 1, '🔢', '42', 'numero_42.mp3', 'fondo_verde_oscuro.jpg', 'Forty-Two', 'ZweiundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(69, 1, '🔢', '43', 'numero_43.mp3', 'fondo_azul_oscuro.jpg', 'Forty-Three', 'DreiundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(70, 1, '🔢', '44', 'numero_44.mp3', 'fondo_rojo_oscuro.jpg', 'Forty-Four', 'VierundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(71, 1, '🔢', '45', 'numero_45.mp3', 'fondo_amarillo_oscuro.jpg', 'Forty-Five', 'FünfundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(72, 1, '🔢', '46', 'numero_46.mp3', 'fondo_naranja_oscuro.jpg', 'Forty-Six', 'SechsundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(73, 1, '🔢', '47', 'numero_47.mp3', 'fondo_morado_oscuro.jpg', 'Forty-Seven', 'SiebenundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(74, 1, '🔢', '48', 'numero_48.mp3', 'fondo_rosa_oscuro.jpg', 'Forty-Eight', 'AchtundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(75, 1, '🔢', '49', 'numero_49.mp3', 'fondo_celeste_oscuro.jpg', 'Forty-Nine', 'NeunundVierzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(76, 1, '🔢', '50', 'numero_50.mp3', 'fondo_gris.jpg', 'Fifty', 'Fünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(77, 1, '🔢', '51', 'numero_51.mp3', 'fondo_dorado.jpg', 'Fifty-One', 'EinsundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(78, 1, '🔢', '52', 'numero_52.mp3', 'fondo_azul.jpg', 'Fifty-Two', 'ZweiundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(79, 1, '🔢', '53', 'numero_53.mp3', 'fondo_verde.jpg', 'Fifty-Three', 'DreiundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(80, 1, '🔢', '54', 'numero_54.mp3', 'fondo_rojo.jpg', 'Fifty-Four', 'VierundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(81, 1, '🔢', '55', 'numero_55.mp3', 'fondo_amarillo.jpg', 'Fifty-Five', 'FünfundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(82, 1, '🔢', '56', 'numero_56.mp3', 'fondo_naranja.jpg', 'Fifty-Six', 'SechsundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(83, 1, '🔢', '57', 'numero_57.mp3', 'fondo_morado.jpg', 'Fifty-Seven', 'SiebenundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(84, 1, '🔢', '58', 'numero_58.mp3', 'fondo_rosa.jpg', 'Fifty-Eight', 'AchtundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(85, 1, '🔢', '59', 'numero_59.mp3', 'fondo_celeste.jpg', 'Fifty-Nine', 'NeunundFünfzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(86, 1, '🔢', '60', 'numero_60.mp3', 'fondo_verde_claro.jpg', 'Sixty', 'Sechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(87, 1, '🔢', '61', 'numero_61.mp3', 'fondo_azul_claro.jpg', 'Sixty-One', 'EinsundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(88, 1, '🔢', '62', 'numero_62.mp3', 'fondo_rojo_claro.jpg', 'Sixty-Two', 'ZweiundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(89, 1, '🔢', '63', 'numero_63.mp3', 'fondo_amarillo_claro.jpg', 'Sixty-Three', 'DreiundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(90, 1, '🔢', '64', 'numero_64.mp3', 'fondo_naranja_claro.jpg', 'Sixty-Four', 'VierundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(91, 1, '🔢', '65', 'numero_65.mp3', 'fondo_morado_claro.jpg', 'Sixty-Five', 'FünfundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(92, 1, '🔢', '66', 'numero_66.mp3', 'fondo_rosa_claro.jpg', 'Sixty-Six', 'SechsundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(93, 1, '🔢', '67', 'numero_67.mp3', 'fondo_celeste_claro.jpg', 'Sixty-Seven', 'SiebenundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(94, 1, '🔢', '68', 'numero_68.mp3', 'fondo_verde_oscuro.jpg', 'Sixty-Eight', 'AchtundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(95, 1, '🔢', '69', 'numero_69.mp3', 'fondo_azul_oscuro.jpg', 'Sixty-Nine', 'NeunundSechzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(96, 1, '🔢', '70', 'numero_70.mp3', 'fondo_rojo_oscuro.jpg', 'Seventy', 'Siebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(97, 1, '🔢', '71', 'numero_71.mp3', 'fondo_amarillo_oscuro.jpg', 'Seventy-One', 'EinsundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(98, 1, '🔢', '72', 'numero_72.mp3', 'fondo_naranja_oscuro.jpg', 'Seventy-Two', 'ZweiundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(99, 1, '🔢', '73', 'numero_73.mp3', 'fondo_morado_oscuro.jpg', 'Seventy-Three', 'DreiundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(100, 1, '🔢', '74', 'numero_74.mp3', 'fondo_rosa_oscuro.jpg', 'Seventy-Four', 'VierundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(101, 1, '🔢', '75', 'numero_75.mp3', 'fondo_celeste_oscuro.jpg', 'Seventy-Five', 'FünfundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(102, 1, '🔢', '76', 'numero_76.mp3', 'fondo_gris.jpg', 'Seventy-Six', 'SechsundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(103, 1, '🔢', '77', 'numero_77.mp3', 'fondo_dorado.jpg', 'Seventy-Seven', 'SiebenundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(104, 1, '🔢', '78', 'numero_78.mp3', 'fondo_azul.jpg', 'Seventy-Eight', 'AchtundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(105, 1, '🔢', '79', 'numero_79.mp3', 'fondo_verde.jpg', 'Seventy-Nine', 'NeunundSiebzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(106, 1, '🔢', '80', 'numero_80.mp3', 'fondo_rojo.jpg', 'Eighty', 'Achtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(107, 1, '🔢', '81', 'numero_81.mp3', 'fondo_amarillo.jpg', 'Eighty-One', 'EinsundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(108, 1, '🔢', '82', 'numero_82.mp3', 'fondo_naranja.jpg', 'Eighty-Two', 'ZweiundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(109, 1, '🔢', '83', 'numero_83.mp3', 'fondo_morado.jpg', 'Eighty-Three', 'DreiundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(110, 1, '🔢', '84', 'numero_84.mp3', 'fondo_rosa.jpg', 'Eighty-Four', 'VierundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(111, 1, '🔢', '85', 'numero_85.mp3', 'fondo_celeste.jpg', 'Eighty-Five', 'FünfundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(112, 1, '🔢', '86', 'numero_86.mp3', 'fondo_verde_claro.jpg', 'Eighty-Six', 'SechsundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(113, 1, '🔢', '87', 'numero_87.mp3', 'fondo_azul_claro.jpg', 'Eighty-Seven', 'SiebenundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(114, 1, '🔢', '88', 'numero_88.mp3', 'fondo_rojo_claro.jpg', 'Eighty-Eight', 'AchtundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(115, 1, '🔢', '89', 'numero_89.mp3', 'fondo_amarillo_claro.jpg', 'Eighty-Nine', 'NeunundAchtzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(116, 1, '🔢', '90', 'numero_90.mp3', 'fondo_naranja_claro.jpg', 'Ninety', 'Neunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(117, 1, '🔢', '91', 'numero_91.mp3', 'fondo_morado_claro.jpg', 'Ninety-One', 'EinsundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(118, 1, '🔢', '92', 'numero_92.mp3', 'fondo_rosa_claro.jpg', 'Ninety-Two', 'ZweiundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(119, 1, '🔢', '93', 'numero_93.mp3', 'fondo_celeste_claro.jpg', 'Ninety-Three', 'DreiundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(120, 1, '🔢', '94', 'numero_94.mp3', 'fondo_verde_oscuro.jpg', 'Ninety-Four', 'VierundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(121, 1, '🔢', '95', 'numero_95.mp3', 'fondo_azul_oscuro.jpg', 'Ninety-Five', 'FünfundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(122, 1, '🔢', '96', 'numero_96.mp3', 'fondo_rojo_oscuro.jpg', 'Ninety-Six', 'SechsundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(123, 1, '🔢', '97', 'numero_97.mp3', 'fondo_amarillo_oscuro.jpg', 'Ninety-Seven', 'SiebenundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(124, 1, '🔢', '98', 'numero_98.mp3', 'fondo_naranja_oscuro.jpg', 'Ninety-Eight', 'AchtundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(125, 1, '🔢', '99', 'numero_99.mp3', 'fondo_morado_oscuro.jpg', 'Ninety-Nine', 'NeunundNeunzig', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(126, 1, '🔢', '100', 'numero_100.mp3', 'fondo_rosa_oscuro.jpg', 'One Hundred', 'Einhundert', 'Números', 'numbers', '2025-10-28 17:10:39', '2025-10-28 17:10:39'),
(127, 1, '🔢', '1', 'numero_1.mp3', 'fondo_verde.jpg', 'One', 'Eins', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(128, 1, '🔢', '2', 'numero_2.mp3', 'fondo_rojo.jpg', 'Two', 'Zwei', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(129, 1, '🔢', '3', 'numero_3.mp3', 'fondo_amarillo.jpg', 'Three', 'Drei', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(130, 1, '🔢', '4', 'numero_4.mp3', 'fondo_naranja.jpg', 'Four', 'Vier', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(131, 1, '🔢', '5', 'numero_5.mp3', 'fondo_morado.jpg', 'Five', 'Fünf', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(132, 1, '🔢', '6', 'numero_6.mp3', 'fondo_rosa.jpg', 'Six', 'Sechs', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(133, 1, '🔢', '7', 'numero_7.mp3', 'fondo_celeste.jpg', 'Seven', 'Sieben', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(134, 1, '🔢', '8', 'numero_8.mp3', 'fondo_verde_claro.jpg', 'Eight', 'Acht', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(135, 1, '🔢', '9', 'numero_9.mp3', 'fondo_azul_claro.jpg', 'Nine', 'Neun', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(136, 1, '🔢', '10', 'numero_10.mp3', 'fondo_rojo_claro.jpg', 'Ten', 'Zehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(137, 1, '🔢', '11', 'numero_11.mp3', 'fondo_amarillo_claro.jpg', 'Eleven', 'Elf', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(138, 1, '🔢', '12', 'numero_12.mp3', 'fondo_naranja_claro.jpg', 'Twelve', 'Zwölf', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(139, 1, '🔢', '13', 'numero_13.mp3', 'fondo_morado_claro.jpg', 'Thirteen', 'Dreizehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(140, 1, '🔢', '14', 'numero_14.mp3', 'fondo_rosa_claro.jpg', 'Fourteen', 'Vierzehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(141, 1, '🔢', '15', 'numero_15.mp3', 'fondo_celeste_claro.jpg', 'Fifteen', 'Fünfzehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(142, 1, '🔢', '16', 'numero_16.mp3', 'fondo_verde_oscuro.jpg', 'Sixteen', 'Sechzehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(143, 1, '🔢', '17', 'numero_17.mp3', 'fondo_azul_oscuro.jpg', 'Seventeen', 'Siebzehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(144, 1, '🔢', '18', 'numero_18.mp3', 'fondo_rojo_oscuro.jpg', 'Eighteen', 'Achtzehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(145, 1, '🔢', '19', 'numero_19.mp3', 'fondo_amarillo_oscuro.jpg', 'Nineteen', 'Neunzehn', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(146, 1, '🔢', '20', 'numero_20.mp3', 'fondo_naranja_oscuro.jpg', 'Twenty', 'Zwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(147, 1, '🔢', '21', 'numero_21.mp3', 'fondo_morado_oscuro.jpg', 'Twenty-One', 'EinsundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(148, 1, '🔢', '22', 'numero_22.mp3', 'fondo_rosa_oscuro.jpg', 'Twenty-Two', 'ZweiundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(149, 1, '🔢', '23', 'numero_23.mp3', 'fondo_celeste_oscuro.jpg', 'Twenty-Three', 'DreiundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(150, 1, '🔢', '24', 'numero_24.mp3', 'fondo_gris.jpg', 'Twenty-Four', 'VierundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(151, 1, '🔢', '25', 'numero_25.mp3', 'fondo_dorado.jpg', 'Twenty-Five', 'FünfundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(152, 1, '🔢', '26', 'numero_26.mp3', 'fondo_azul.jpg', 'Twenty-Six', 'SechsundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(153, 1, '🔢', '27', 'numero_27.mp3', 'fondo_verde.jpg', 'Twenty-Seven', 'SiebenundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(154, 1, '🔢', '28', 'numero_28.mp3', 'fondo_rojo.jpg', 'Twenty-Eight', 'AchtundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(155, 1, '🔢', '29', 'numero_29.mp3', 'fondo_amarillo.jpg', 'Twenty-Nine', 'NeunundZwanzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(156, 1, '🔢', '30', 'numero_30.mp3', 'fondo_naranja.jpg', 'Thirty', 'Dreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(157, 1, '🔢', '31', 'numero_31.mp3', 'fondo_morado.jpg', 'Thirty-One', 'EinsundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(158, 1, '🔢', '32', 'numero_32.mp3', 'fondo_rosa.jpg', 'Thirty-Two', 'ZweiundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(159, 1, '🔢', '33', 'numero_33.mp3', 'fondo_celeste.jpg', 'Thirty-Three', 'DreiundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(160, 1, '🔢', '34', 'numero_34.mp3', 'fondo_verde_claro.jpg', 'Thirty-Four', 'VierundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(161, 1, '🔢', '35', 'numero_35.mp3', 'fondo_azul_claro.jpg', 'Thirty-Five', 'FünfundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(162, 1, '🔢', '36', 'numero_36.mp3', 'fondo_rojo_claro.jpg', 'Thirty-Six', 'SechsundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(163, 1, '🔢', '37', 'numero_37.mp3', 'fondo_amarillo_claro.jpg', 'Thirty-Seven', 'SiebenundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(164, 1, '🔢', '38', 'numero_38.mp3', 'fondo_naranja_claro.jpg', 'Thirty-Eight', 'AchtundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(165, 1, '🔢', '39', 'numero_39.mp3', 'fondo_morado_claro.jpg', 'Thirty-Nine', 'NeunundDreißig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(166, 1, '🔢', '40', 'numero_40.mp3', 'fondo_rosa_claro.jpg', 'Forty', 'Vierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(167, 1, '🔢', '41', 'numero_41.mp3', 'fondo_celeste_claro.jpg', 'Forty-One', 'EinsundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(168, 1, '🔢', '42', 'numero_42.mp3', 'fondo_verde_oscuro.jpg', 'Forty-Two', 'ZweiundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(169, 1, '🔢', '43', 'numero_43.mp3', 'fondo_azul_oscuro.jpg', 'Forty-Three', 'DreiundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(170, 1, '🔢', '44', 'numero_44.mp3', 'fondo_rojo_oscuro.jpg', 'Forty-Four', 'VierundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(171, 1, '🔢', '45', 'numero_45.mp3', 'fondo_amarillo_oscuro.jpg', 'Forty-Five', 'FünfundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(172, 1, '🔢', '46', 'numero_46.mp3', 'fondo_naranja_oscuro.jpg', 'Forty-Six', 'SechsundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(173, 1, '🔢', '47', 'numero_47.mp3', 'fondo_morado_oscuro.jpg', 'Forty-Seven', 'SiebenundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(174, 1, '🔢', '48', 'numero_48.mp3', 'fondo_rosa_oscuro.jpg', 'Forty-Eight', 'AchtundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(175, 1, '🔢', '49', 'numero_49.mp3', 'fondo_celeste_oscuro.jpg', 'Forty-Nine', 'NeunundVierzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(176, 1, '🔢', '50', 'numero_50.mp3', 'fondo_gris.jpg', 'Fifty', 'Fünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(177, 1, '🔢', '51', 'numero_51.mp3', 'fondo_dorado.jpg', 'Fifty-One', 'EinsundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(178, 1, '🔢', '52', 'numero_52.mp3', 'fondo_azul.jpg', 'Fifty-Two', 'ZweiundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(179, 1, '🔢', '53', 'numero_53.mp3', 'fondo_verde.jpg', 'Fifty-Three', 'DreiundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(180, 1, '🔢', '54', 'numero_54.mp3', 'fondo_rojo.jpg', 'Fifty-Four', 'VierundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(181, 1, '🔢', '55', 'numero_55.mp3', 'fondo_amarillo.jpg', 'Fifty-Five', 'FünfundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(182, 1, '🔢', '56', 'numero_56.mp3', 'fondo_naranja.jpg', 'Fifty-Six', 'SechsundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(183, 1, '🔢', '57', 'numero_57.mp3', 'fondo_morado.jpg', 'Fifty-Seven', 'SiebenundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(184, 1, '🔢', '58', 'numero_58.mp3', 'fondo_rosa.jpg', 'Fifty-Eight', 'AchtundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(185, 1, '🔢', '59', 'numero_59.mp3', 'fondo_celeste.jpg', 'Fifty-Nine', 'NeunundFünfzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(186, 1, '🔢', '60', 'numero_60.mp3', 'fondo_verde_claro.jpg', 'Sixty', 'Sechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(187, 1, '🔢', '61', 'numero_61.mp3', 'fondo_azul_claro.jpg', 'Sixty-One', 'EinsundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(188, 1, '🔢', '62', 'numero_62.mp3', 'fondo_rojo_claro.jpg', 'Sixty-Two', 'ZweiundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(189, 1, '🔢', '63', 'numero_63.mp3', 'fondo_amarillo_claro.jpg', 'Sixty-Three', 'DreiundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(190, 1, '🔢', '64', 'numero_64.mp3', 'fondo_naranja_claro.jpg', 'Sixty-Four', 'VierundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(191, 1, '🔢', '65', 'numero_65.mp3', 'fondo_morado_claro.jpg', 'Sixty-Five', 'FünfundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(192, 1, '🔢', '66', 'numero_66.mp3', 'fondo_rosa_claro.jpg', 'Sixty-Six', 'SechsundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(193, 1, '🔢', '67', 'numero_67.mp3', 'fondo_celeste_claro.jpg', 'Sixty-Seven', 'SiebenundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(194, 1, '🔢', '68', 'numero_68.mp3', 'fondo_verde_oscuro.jpg', 'Sixty-Eight', 'AchtundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(195, 1, '🔢', '69', 'numero_69.mp3', 'fondo_azul_oscuro.jpg', 'Sixty-Nine', 'NeunundSechzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(196, 1, '🔢', '70', 'numero_70.mp3', 'fondo_rojo_oscuro.jpg', 'Seventy', 'Siebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(197, 1, '🔢', '71', 'numero_71.mp3', 'fondo_amarillo_oscuro.jpg', 'Seventy-One', 'EinsundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(198, 1, '🔢', '72', 'numero_72.mp3', 'fondo_naranja_oscuro.jpg', 'Seventy-Two', 'ZweiundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(199, 1, '🔢', '73', 'numero_73.mp3', 'fondo_morado_oscuro.jpg', 'Seventy-Three', 'DreiundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(200, 1, '🔢', '74', 'numero_74.mp3', 'fondo_rosa_oscuro.jpg', 'Seventy-Four', 'VierundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(201, 1, '🔢', '75', 'numero_75.mp3', 'fondo_celeste_oscuro.jpg', 'Seventy-Five', 'FünfundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(202, 1, '🔢', '76', 'numero_76.mp3', 'fondo_gris.jpg', 'Seventy-Six', 'SechsundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(203, 1, '🔢', '77', 'numero_77.mp3', 'fondo_dorado.jpg', 'Seventy-Seven', 'SiebenundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(204, 1, '🔢', '78', 'numero_78.mp3', 'fondo_azul.jpg', 'Seventy-Eight', 'AchtundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(205, 1, '🔢', '79', 'numero_79.mp3', 'fondo_verde.jpg', 'Seventy-Nine', 'NeunundSiebzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(206, 1, '🔢', '80', 'numero_80.mp3', 'fondo_rojo.jpg', 'Eighty', 'Achtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(207, 1, '🔢', '81', 'numero_81.mp3', 'fondo_amarillo.jpg', 'Eighty-One', 'EinsundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(208, 1, '🔢', '82', 'numero_82.mp3', 'fondo_naranja.jpg', 'Eighty-Two', 'ZweiundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(209, 1, '🔢', '83', 'numero_83.mp3', 'fondo_morado.jpg', 'Eighty-Three', 'DreiundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(210, 1, '🔢', '84', 'numero_84.mp3', 'fondo_rosa.jpg', 'Eighty-Four', 'VierundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(211, 1, '🔢', '85', 'numero_85.mp3', 'fondo_celeste.jpg', 'Eighty-Five', 'FünfundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(212, 1, '🔢', '86', 'numero_86.mp3', 'fondo_verde_claro.jpg', 'Eighty-Six', 'SechsundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(213, 1, '🔢', '87', 'numero_87.mp3', 'fondo_azul_claro.jpg', 'Eighty-Seven', 'SiebenundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(214, 1, '🔢', '88', 'numero_88.mp3', 'fondo_rojo_claro.jpg', 'Eighty-Eight', 'AchtundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(215, 1, '🔢', '89', 'numero_89.mp3', 'fondo_amarillo_claro.jpg', 'Eighty-Nine', 'NeunundAchtzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(216, 1, '🔢', '90', 'numero_90.mp3', 'fondo_naranja_claro.jpg', 'Ninety', 'Neunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(217, 1, '🔢', '91', 'numero_91.mp3', 'fondo_morado_claro.jpg', 'Ninety-One', 'EinsundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(218, 1, '🔢', '92', 'numero_92.mp3', 'fondo_rosa_claro.jpg', 'Ninety-Two', 'ZweiundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(219, 1, '🔢', '93', 'numero_93.mp3', 'fondo_celeste_claro.jpg', 'Ninety-Three', 'DreiundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(220, 1, '🔢', '94', 'numero_94.mp3', 'fondo_verde_oscuro.jpg', 'Ninety-Four', 'VierundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(221, 1, '🔢', '95', 'numero_95.mp3', 'fondo_azul_oscuro.jpg', 'Ninety-Five', 'FünfundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(222, 1, '🔢', '96', 'numero_96.mp3', 'fondo_rojo_oscuro.jpg', 'Ninety-Six', 'SechsundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(223, 1, '🔢', '97', 'numero_97.mp3', 'fondo_amarillo_oscuro.jpg', 'Ninety-Seven', 'SiebenundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(224, 1, '🔢', '98', 'numero_98.mp3', 'fondo_naranja_oscuro.jpg', 'Ninety-Eight', 'AchtundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(225, 1, '🔢', '99', 'numero_99.mp3', 'fondo_morado_oscuro.jpg', 'Ninety-Nine', 'NeunundNeunzig', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(226, 1, '🔢', '100', 'numero_100.mp3', 'fondo_rosa_oscuro.jpg', 'One Hundred', 'Einhundert', 'Números', 'numbers', '2025-10-28 17:11:05', '2025-10-28 17:11:05'),
(227, 3, '🔴', 'Rojo', 'rojo.mp3', 'fondo_rojo.jpg', 'Red', 'Rot', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(228, 3, '🟢', 'Verde', 'verde.mp3', 'fondo_verde.jpg', 'Green', 'Grün', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(229, 3, '🔵', 'Azul', 'azul.mp3', 'fondo_azul.jpg', 'Blue', 'Blau', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(230, 3, '🟡', 'Amarillo', 'amarillo.mp3', 'fondo_amarillo.jpg', 'Yellow', 'Gelb', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(231, 3, '🟠', 'Naranja', 'naranja.mp3', 'fondo_naranja.jpg', 'Orange', 'Orange', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(232, 3, '🟣', 'Morado', 'morado.mp3', 'fondo_morado.jpg', 'Purple', 'Lila', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(233, 3, '🟤', 'Marrón', 'marrón.mp3', 'fondo_marrón.jpg', 'Brown', 'Braun', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(234, 3, '⚫', 'Negro', 'negro.mp3', 'fondo_negro.jpg', 'Black', 'Schwarz', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(235, 3, '⚪', 'Blanco', 'blanco.mp3', 'fondo_blanco.jpg', 'White', 'Weiß', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(236, 3, '🩷', 'Rosa', 'rosa.mp3', 'fondo_rosa.jpg', 'Pink', 'Rosa', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(237, 3, '🔵', 'Azul Claro', 'azul_claro.mp3', 'fondo_azul_claro.jpg', 'Light Blue', 'Hellblau', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(238, 3, '🔴', 'Rojo Claro', 'rojo_claro.mp3', 'fondo_rojo_claro.jpg', 'Light Red', 'Hellrot', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(239, 3, '🟢', 'Verde Claro', 'verde_claro.mp3', 'fondo_verde_claro.jpg', 'Light Green', 'Hellgrün', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(240, 3, '🟡', 'Amarillo Claro', 'amarillo_claro.mp3', 'fondo_amarillo_claro.jpg', 'Light Yellow', 'Hellgelb', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(241, 3, '🟠', 'Naranja Claro', 'naranja_claro.mp3', 'fondo_naranja_claro.jpg', 'Light Orange', 'Hellorange', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(242, 3, '🟣', 'Morado Claro', 'morado_claro.mp3', 'fondo_morado_claro.jpg', 'Light Purple', 'Helllila', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(243, 3, '🟤', 'Marrón Claro', 'marrón_claro.mp3', 'fondo_marrón_claro.jpg', 'Light Brown', 'Hellbraun', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(244, 3, '⚫', 'Gris', 'gris.mp3', 'fondo_gris.jpg', 'Gray', 'Grau', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(245, 3, '🔵', 'Azul Marino', 'azul_marino.mp3', 'fondo_azul_marino.jpg', 'Navy Blue', 'Marineblau', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(246, 3, '🟢', 'Verde Oscuro', 'verde_oscuro.mp3', 'fondo_verde_oscuro.jpg', 'Dark Green', 'Dunkelgrün', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(247, 3, '🔴', 'Rojo Oscuro', 'rojo_oscuro.mp3', 'fondo_rojo_oscuro.jpg', 'Dark Red', 'Dunkelrot', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(248, 3, '🔵', 'Azul Oscuro', 'azul_oscuro.mp3', 'fondo_azul_oscuro.jpg', 'Dark Blue', 'Dunkelblau', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(249, 3, '🟡', 'Amarillo Dorado', 'amarillo_dorado.mp3', 'fondo_amarillo_dorado.jpg', 'Golden Yellow', 'Goldgelb', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(250, 3, '🟠', 'Naranja Dorado', 'naranja_dorado.mp3', 'fondo_naranja_dorado.jpg', 'Golden Orange', 'Goldorange', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(251, 3, '🟣', 'Violeta', 'violeta.mp3', 'fondo_violeta.jpg', 'Violet', 'Violett', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(252, 3, '🟤', 'Beige', 'beige.mp3', 'fondo_beige.jpg', 'Beige', 'Beige', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(253, 3, '🔵', 'Turquesa', 'turquesa.mp3', 'fondo_turquesa.jpg', 'Turquoise', 'Türkis', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(254, 3, '🟢', 'Lima', 'lima.mp3', 'fondo_lima.jpg', 'Lime', 'Limette', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(255, 3, '🟡', 'Dorado', 'dorado.mp3', 'fondo_dorado.jpg', 'Gold', 'Gold', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(256, 3, '⚪', 'Plateado', 'plateado.mp3', 'fondo_plateado.jpg', 'Silver', 'Silber', 'Colores', 'colors', '2025-10-28 17:12:20', '2025-10-28 17:12:20'),
(257, 2, '🐶', 'Perro', 'perro.mp3', 'fondo_verde.jpg', 'Dog', 'Hund', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(258, 2, '🐱', 'Gato', 'gato.mp3', 'fondo_azul.jpg', 'Cat', 'Katze', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(259, 2, '🐰', 'Conejo', 'conejo.mp3', 'fondo_rosa.jpg', 'Rabbit', 'Hase', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(260, 2, '🦁', 'León', 'leon.mp3', 'fondo_amarillo.jpg', 'Lion', 'Löwe', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(261, 2, '🐮', 'Vaca', 'vaca.mp3', 'fondo_verde_claro.jpg', 'Cow', 'Kuh', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(262, 2, '🐶', 'Perro', 'perro.mp3', 'fondo_perro.jpg', 'Dog', 'Hund', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(263, 2, '🐱', 'Gato', 'gato.mp3', 'fondo_gato.jpg', 'Cat', 'Katze', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(264, 2, '🐰', 'Conejo', 'conejo.mp3', 'fondo_conejo.jpg', 'Rabbit', 'Hase', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(265, 2, '🦁', 'León', 'león.mp3', 'fondo_león.jpg', 'Lion', 'Löwe', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(266, 2, '🐮', 'Vaca', 'vaca.mp3', 'fondo_vaca.jpg', 'Cow', 'Kuh', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(267, 2, '🐴', 'Caballo', 'caballo.mp3', 'fondo_caballo.jpg', 'Horse', 'Pferd', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(268, 2, '🐑', 'Oveja', 'oveja.mp3', 'fondo_oveja.jpg', 'Sheep', 'Schaf', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(269, 2, '🐷', 'Cerdo', 'cerdo.mp3', 'fondo_cerdo.jpg', 'Pig', 'Schwein', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(270, 2, '🐔', 'Pollo', 'pollo.mp3', 'fondo_pollo.jpg', 'Chicken', 'Huhn', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(271, 2, '🦆', 'Pato', 'pato.mp3', 'fondo_pato.jpg', 'Duck', 'Ente', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(272, 2, '🐘', 'Elefante', 'elefante.mp3', 'fondo_elefante.jpg', 'Elephant', 'Elefant', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(273, 2, '🦒', 'Jirafa', 'jirafa.mp3', 'fondo_jirafa.jpg', 'Giraffe', 'Giraffe', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(274, 2, '🐵', 'Mono', 'mono.mp3', 'fondo_mono.jpg', 'Monkey', 'Affe', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(275, 2, '🐅', 'Tigre', 'tigre.mp3', 'fondo_tigre.jpg', 'Tiger', 'Tiger', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(276, 2, '🐻', 'Oso', 'oso.mp3', 'fondo_oso.jpg', 'Bear', 'Bär', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(277, 2, '🐼', 'Panda', 'panda.mp3', 'fondo_panda.jpg', 'Panda', 'Panda', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(278, 2, '🐧', 'Pingüino', 'pingüino.mp3', 'fondo_pingüino.jpg', 'Penguin', 'Pinguin', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(279, 2, '🐬', 'Delfín', 'delfín.mp3', 'fondo_delfín.jpg', 'Dolphin', 'Delfin', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(280, 2, '🐋', 'Ballena', 'ballena.mp3', 'fondo_ballena.jpg', 'Whale', 'Wal', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(281, 2, '🦋', 'Mariposa', 'mariposa.mp3', 'fondo_mariposa.jpg', 'Butterfly', 'Schmetterling', 'Animales', 'animals', '2025-10-28 17:13:12', '2025-10-28 17:13:12'),
(282, 4, '👁️', 'Ojo', 'ojo.mp3', 'fondo_azul.jpg', 'Eye', 'Auge', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(283, 4, '👂', 'Oreja', 'oreja.mp3', 'fondo_rosa.jpg', 'Ear', 'Ohr', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(284, 4, '👃', 'Nariz', 'nariz.mp3', 'fondo_amarillo.jpg', 'Nose', 'Nase', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(285, 4, '👄', 'Boca', 'boca.mp3', 'fondo_rojo.jpg', 'Mouth', 'Mund', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(286, 4, '🤚', 'Mano', 'mano.mp3', 'fondo_marron_claro.jpg', 'Hand', 'Hand', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(287, 4, '👁️', 'Ojo', 'ojo.mp3', 'fondo_ojo.jpg', 'Eye', 'Auge', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(288, 4, '👂', 'Oreja', 'oreja.mp3', 'fondo_oreja.jpg', 'Ear', 'Ohr', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(289, 4, '👃', 'Nariz', 'nariz.mp3', 'fondo_nariz.jpg', 'Nose', 'Nase', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(290, 4, '👄', 'Boca', 'boca.mp3', 'fondo_boca.jpg', 'Mouth', 'Mund', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(291, 4, '🤚', 'Mano', 'mano.mp3', 'fondo_mano.jpg', 'Hand', 'Hand', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(292, 4, '🦶', 'Pie', 'pie.mp3', 'fondo_pie.jpg', 'Foot', 'Fuß', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(293, 4, '💪', 'Brazo', 'brazo.mp3', 'fondo_brazo.jpg', 'Arm', 'Arm', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(294, 4, '🦵', 'Pierna', 'pierna.mp3', 'fondo_pierna.jpg', 'Leg', 'Bein', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(295, 4, '👤', 'Cabeza', 'cabeza.mp3', 'fondo_cabeza.jpg', 'Head', 'Kopf', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(296, 4, '🦴', 'Cuello', 'cuello.mp3', 'fondo_cuello.jpg', 'Neck', 'Hals', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(297, 4, '🦴', 'Hombro', 'hombro.mp3', 'fondo_hombro.jpg', 'Shoulder', 'Schulter', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(298, 4, '🦴', 'Codo', 'codo.mp3', 'fondo_codo.jpg', 'Elbow', 'Ellbogen', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(299, 4, '🦴', 'Muñeca', 'muñeca.mp3', 'fondo_muñeca.jpg', 'Wrist', 'Handgelenk', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(300, 4, '👆', 'Dedo', 'dedo.mp3', 'fondo_dedo.jpg', 'Finger', 'Finger', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(301, 4, '🦷', 'Diente', 'diente.mp3', 'fondo_diente.jpg', 'Tooth', 'Zahn', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(302, 4, '👅', 'Lengua', 'lengua.mp3', 'fondo_lengua.jpg', 'Tongue', 'Zunge', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(303, 4, '🤨', 'Cejas', 'cejas.mp3', 'fondo_cejas.jpg', 'Eyebrows', 'Augenbrauen', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(304, 4, '👁️', 'Pestañas', 'pestañas.mp3', 'fondo_pestañas.jpg', 'Eyelashes', 'Wimpern', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(305, 4, '👤', 'Barbilla', 'barbilla.mp3', 'fondo_barbilla.jpg', 'Chin', 'Kinn', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(306, 4, '😊', 'Mejilla', 'mejilla.mp3', 'fondo_mejilla.jpg', 'Cheek', 'Wange', 'Cuerpo', 'body', '2025-10-28 17:13:22', '2025-10-28 17:13:22'),
(307, 5, '🍎', 'Manzana', 'manzana.mp3', 'fondo_rojo.jpg', 'Apple', 'Apfel', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(308, 5, '🍌', 'Plátano', 'platano.mp3', 'fondo_amarillo.jpg', 'Banana', 'Banane', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(309, 5, '🍊', 'Naranja', 'naranja_fruta.mp3', 'fondo_naranja.jpg', 'Orange', 'Orange', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(310, 5, '🍇', 'Uva', 'uva.mp3', 'fondo_morado.jpg', 'Grape', 'Traube', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(311, 5, '🍞', 'Pan', 'pan.mp3', 'fondo_amarillo_claro.jpg', 'Bread', 'Brot', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(312, 5, '🍎', 'Manzana', 'manzana.mp3', 'fondo_manzana.jpg', 'Apple', 'Apfel', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(313, 5, '🍌', 'Plátano', 'plátano.mp3', 'fondo_plátano.jpg', 'Banana', 'Banane', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(314, 5, '🍊', 'Naranja', 'naranja.mp3', 'fondo_naranja.jpg', 'Orange', 'Orange', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(315, 5, '🍇', 'Uva', 'uva.mp3', 'fondo_uva.jpg', 'Grape', 'Traube', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(316, 5, '🍞', 'Pan', 'pan.mp3', 'fondo_pan.jpg', 'Bread', 'Brot', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(317, 5, '🥛', 'Leche', 'leche.mp3', 'fondo_leche.jpg', 'Milk', 'Milch', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(318, 5, '🧀', 'Queso', 'queso.mp3', 'fondo_queso.jpg', 'Cheese', 'Käse', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(319, 5, '🥚', 'Huevo', 'huevo.mp3', 'fondo_huevo.jpg', 'Egg', 'Ei', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(320, 5, '🥩', 'Carne', 'carne.mp3', 'fondo_carne.jpg', 'Meat', 'Fleisch', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(321, 5, '🐟', 'Pescado', 'pescado.mp3', 'fondo_pescado.jpg', 'Fish', 'Fisch', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(322, 5, '🍗', 'Pollo', 'pollo.mp3', 'fondo_pollo.jpg', 'Chicken', 'Hähnchen', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(323, 5, '🍚', 'Arroz', 'arroz.mp3', 'fondo_arroz.jpg', 'Rice', 'Reis', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(324, 5, '🍝', 'Pasta', 'pasta.mp3', 'fondo_pasta.jpg', 'Pasta', 'Pasta', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(325, 5, '🍕', 'Pizza', 'pizza.mp3', 'fondo_pizza.jpg', 'Pizza', 'Pizza', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(326, 5, '🍔', 'Hamburguesa', 'hamburguesa.mp3', 'fondo_hamburguesa.jpg', 'Hamburger', 'Hamburger', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(327, 5, '🥕', 'Zanahoria', 'zanahoria.mp3', 'fondo_zanahoria.jpg', 'Carrot', 'Karotte', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(328, 5, '🍅', 'Tomate', 'tomate.mp3', 'fondo_tomate.jpg', 'Tomato', 'Tomate', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(329, 5, '🥬', 'Lechuga', 'lechuga.mp3', 'fondo_lechuga.jpg', 'Lettuce', 'Salat', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(330, 5, '🥔', 'Patata', 'patata.mp3', 'fondo_patata.jpg', 'Potato', 'Kartoffel', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33');
INSERT INTO `elementos` (`id`, `id_categorías`, `icono`, `nombre`, `sonido`, `fondo`, `nombre_ingles`, `nombre_aleman`, `categoria_nombre`, `categoria_slug`, `created_at`, `updated_at`) VALUES
(331, 5, '🧅', 'Cebolla', 'cebolla.mp3', 'fondo_cebolla.jpg', 'Onion', 'Zwiebel', 'Comida', 'food', '2025-10-28 17:13:33', '2025-10-28 17:13:33'),
(332, 7, '🔤', 'MA', 'silaba_ma.mp3', 'fondo_ma.jpg', 'MA', 'MA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(333, 7, '🔤', 'PA', 'silaba_pa.mp3', 'fondo_pa.jpg', 'PA', 'PA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(334, 7, '🔤', 'SA', 'silaba_sa.mp3', 'fondo_sa.jpg', 'SA', 'SA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(335, 7, '🔤', 'LA', 'silaba_la.mp3', 'fondo_la.jpg', 'LA', 'LA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(336, 7, '🔤', 'TA', 'silaba_ta.mp3', 'fondo_ta.jpg', 'TA', 'TA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(337, 7, '🔤', 'NA', 'silaba_na.mp3', 'fondo_na.jpg', 'NA', 'NA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(338, 7, '🔤', 'CA', 'silaba_ca.mp3', 'fondo_ca.jpg', 'CA', 'CA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(339, 7, '🔤', 'BA', 'silaba_ba.mp3', 'fondo_ba.jpg', 'BA', 'BA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(340, 7, '🔤', 'DA', 'silaba_da.mp3', 'fondo_da.jpg', 'DA', 'DA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(341, 7, '🔤', 'GA', 'silaba_ga.mp3', 'fondo_ga.jpg', 'GA', 'GA', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(342, 7, '🔤', 'ME', 'silaba_me.mp3', 'fondo_me.jpg', 'ME', 'ME', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(343, 7, '🔤', 'PE', 'silaba_pe.mp3', 'fondo_pe.jpg', 'PE', 'PE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(344, 7, '🔤', 'SE', 'silaba_se.mp3', 'fondo_se.jpg', 'SE', 'SE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(345, 7, '🔤', 'LE', 'silaba_le.mp3', 'fondo_le.jpg', 'LE', 'LE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(346, 7, '🔤', 'TE', 'silaba_te.mp3', 'fondo_te.jpg', 'TE', 'TE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(347, 7, '🔤', 'NE', 'silaba_ne.mp3', 'fondo_ne.jpg', 'NE', 'NE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(348, 7, '🔤', 'CE', 'silaba_ce.mp3', 'fondo_ce.jpg', 'CE', 'CE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(349, 7, '🔤', 'BE', 'silaba_be.mp3', 'fondo_be.jpg', 'BE', 'BE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(350, 7, '🔤', 'DE', 'silaba_de.mp3', 'fondo_de.jpg', 'DE', 'DE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(351, 7, '🔤', 'GE', 'silaba_ge.mp3', 'fondo_ge.jpg', 'GE', 'GE', 'Sílabas', 'syllables', '2025-10-28 17:13:43', '2025-10-28 17:13:43'),
(352, 8, '🍳', 'Cocina', 'cocina.mp3', 'fondo_cocina.jpg', 'Kitchen', 'Küche', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(353, 8, '🛋️', 'Sala', 'sala.mp3', 'fondo_sala.jpg', 'Living Room', 'Wohnzimmer', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(354, 8, '🛏️', 'Dormitorio', 'dormitorio.mp3', 'fondo_dormitorio.jpg', 'Bedroom', 'Schlafzimmer', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(355, 8, '🚿', 'Baño', 'baño.mp3', 'fondo_baño.jpg', 'Bathroom', 'Badezimmer', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(356, 8, '🌱', 'Jardín', 'jardín.mp3', 'fondo_jardín.jpg', 'Garden', 'Garten', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(357, 8, '🚗', 'Garaje', 'garaje.mp3', 'fondo_garaje.jpg', 'Garage', 'Garage', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(358, 8, '🏠', 'Sótano', 'sótano.mp3', 'fondo_sótano.jpg', 'Basement', 'Keller', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(359, 8, '🏠', 'Ático', 'ático.mp3', 'fondo_ático.jpg', 'Attic', 'Dachboden', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(360, 8, '🌅', 'Balcón', 'balcón.mp3', 'fondo_balcón.jpg', 'Balcony', 'Balkon', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(361, 8, '🌞', 'Terraza', 'terraza.mp3', 'fondo_terraza.jpg', 'Terrace', 'Terrasse', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(362, 8, '🍽️', 'Comedor', 'comedor.mp3', 'fondo_comedor.jpg', 'Dining Room', 'Esszimmer', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(363, 8, '🥫', 'Despensa', 'despensa.mp3', 'fondo_despensa.jpg', 'Pantry', 'Speisekammer', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(364, 8, '🧺', 'Lavandería', 'lavandería.mp3', 'fondo_lavandería.jpg', 'Laundry Room', 'Waschküche', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(365, 8, '💼', 'Oficina', 'oficina.mp3', 'fondo_oficina.jpg', 'Office', 'Büro', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(366, 8, '🎮', 'Sala de Juegos', 'sala_de_juegos.mp3', 'fondo_sala_de_juegos.jpg', 'Playroom', 'Spielzimmer', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(367, 8, '🚪', 'Vestíbulo', 'vestíbulo.mp3', 'fondo_vestíbulo.jpg', 'Hallway', 'Flur', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(368, 8, '🪜', 'Escaleras', 'escaleras.mp3', 'fondo_escaleras.jpg', 'Stairs', 'Treppe', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(369, 8, '🚪', 'Puerta', 'puerta.mp3', 'fondo_puerta.jpg', 'Door', 'Tür', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(370, 8, '🪟', 'Ventana', 'ventana.mp3', 'fondo_ventana.jpg', 'Window', 'Fenster', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(371, 8, '🏠', 'Techo', 'techo.mp3', 'fondo_techo.jpg', 'Ceiling', 'Decke', 'Partes del Hogar', 'home', '2025-10-28 17:13:55', '2025-10-28 17:13:55'),
(372, 9, '🪑', 'Mesa', 'mesa.mp3', 'fondo_mesa.jpg', 'Table', 'Tisch', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(373, 9, '🪑', 'Silla', 'silla.mp3', 'fondo_silla.jpg', 'Chair', 'Stuhl', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(374, 9, '🛏️', 'Cama', 'cama.mp3', 'fondo_cama.jpg', 'Bed', 'Bett', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(375, 9, '💡', 'Lámpara', 'lámpara.mp3', 'fondo_lámpara.jpg', 'Lamp', 'Lampe', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(376, 9, '📺', 'Televisión', 'televisión.mp3', 'fondo_televisión.jpg', 'Television', 'Fernseher', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(377, 9, '📱', 'Teléfono', 'teléfono.mp3', 'fondo_teléfono.jpg', 'Phone', 'Telefon', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(378, 9, '📚', 'Libro', 'libro.mp3', 'fondo_libro.jpg', 'Book', 'Buch', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(379, 9, '🧸', 'Juguete', 'juguete.mp3', 'fondo_juguete.jpg', 'Toy', 'Spielzeug', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(380, 9, '⚽', 'Pelota', 'pelota.mp3', 'fondo_pelota.jpg', 'Ball', 'Ball', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(381, 9, '👸', 'Muñeca', 'muñeca.mp3', 'fondo_muñeca.jpg', 'Doll', 'Puppe', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(382, 9, '🚗', 'Coche', 'coche.mp3', 'fondo_coche.jpg', 'Car', 'Auto', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(383, 9, '✈️', 'Avión', 'avión.mp3', 'fondo_avión.jpg', 'Airplane', 'Flugzeug', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(384, 9, '🚤', 'Barco', 'barco.mp3', 'fondo_barco.jpg', 'Boat', 'Boot', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(385, 9, '🚲', 'Bicicleta', 'bicicleta.mp3', 'fondo_bicicleta.jpg', 'Bicycle', 'Fahrrad', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(386, 9, '🚂', 'Tren', 'tren.mp3', 'fondo_tren.jpg', 'Train', 'Zug', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(387, 9, '🏠', 'Casa', 'casa.mp3', 'fondo_casa.jpg', 'House', 'Haus', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(388, 9, '🏫', 'Escuela', 'escuela.mp3', 'fondo_escuela.jpg', 'School', 'Schule', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(389, 9, '🏥', 'Hospital', 'hospital.mp3', 'fondo_hospital.jpg', 'Hospital', 'Krankenhaus', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(390, 9, '🌳', 'Parque', 'parque.mp3', 'fondo_parque.jpg', 'Park', 'Park', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(391, 9, '🏪', 'Tienda', 'tienda.mp3', 'fondo_tienda.jpg', 'Store', 'Laden', 'Objetos', 'objects', '2025-10-28 17:14:07', '2025-10-28 17:14:07'),
(392, 10, '👩', 'Mamá', 'mamá.mp3', 'fondo_mamá.jpg', 'Mom', 'Mama', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(393, 10, '👨', 'Papá', 'papá.mp3', 'fondo_papá.jpg', 'Dad', 'Papa', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(394, 10, '👧', 'Hermana', 'hermana.mp3', 'fondo_hermana.jpg', 'Sister', 'Schwester', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(395, 10, '👦', 'Hermano', 'hermano.mp3', 'fondo_hermano.jpg', 'Brother', 'Bruder', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(396, 10, '👵', 'Abuela', 'abuela.mp3', 'fondo_abuela.jpg', 'Grandmother', 'Oma', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(397, 10, '👴', 'Abuelo', 'abuelo.mp3', 'fondo_abuelo.jpg', 'Grandfather', 'Opa', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(398, 10, '👩', 'Tía', 'tía.mp3', 'fondo_tía.jpg', 'Aunt', 'Tante', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(399, 10, '👨', 'Tío', 'tío.mp3', 'fondo_tío.jpg', 'Uncle', 'Onkel', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(400, 10, '👧', 'Prima', 'prima.mp3', 'fondo_prima.jpg', 'Cousin (female)', 'Cousine', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(401, 10, '👦', 'Primo', 'primo.mp3', 'fondo_primo.jpg', 'Cousin (male)', 'Cousin', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(402, 10, '👶', 'Bebé', 'bebé.mp3', 'fondo_bebé.jpg', 'Baby', 'Baby', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(403, 10, '👵', 'Bisabuela', 'bisabuela.mp3', 'fondo_bisabuela.jpg', 'Great-grandmother', 'Urgroßmutter', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(404, 10, '👴', 'Bisabuelo', 'bisabuelo.mp3', 'fondo_bisabuelo.jpg', 'Great-grandfather', 'Urgroßvater', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(405, 10, '👧', 'Sobrina', 'sobrina.mp3', 'fondo_sobrina.jpg', 'Niece', 'Nichte', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(406, 10, '👦', 'Sobrino', 'sobrino.mp3', 'fondo_sobrino.jpg', 'Nephew', 'Neffe', 'Miembros de la Familia', 'family', '2025-10-28 17:14:16', '2025-10-28 17:14:16'),
(407, 11, '☀️', 'Soleado', 'soleado.mp3', 'fondo_soleado.jpg', 'Sunny', 'Sonnig', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(408, 11, '☁️', 'Nublado', 'nublado.mp3', 'fondo_nublado.jpg', 'Cloudy', 'Bewölkt', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(409, 11, '🌧️', 'Lluvioso', 'lluvioso.mp3', 'fondo_lluvioso.jpg', 'Rainy', 'Regnerisch', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(410, 11, '❄️', 'Nevando', 'nevando.mp3', 'fondo_nevando.jpg', 'Snowing', 'Schneit', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(411, 11, '💨', 'Ventoso', 'ventoso.mp3', 'fondo_ventoso.jpg', 'Windy', 'Windig', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(412, 11, '⛈️', 'Tormenta', 'tormenta.mp3', 'fondo_tormenta.jpg', 'Storm', 'Sturm', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(413, 11, '🌫️', 'Niebla', 'niebla.mp3', 'fondo_niebla.jpg', 'Foggy', 'Neblig', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(414, 11, '🌡️', 'Caluroso', 'caluroso.mp3', 'fondo_caluroso.jpg', 'Hot', 'Heiß', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(415, 11, '🧊', 'Frío', 'frío.mp3', 'fondo_frío.jpg', 'Cold', 'Kalt', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(416, 11, '🌤️', 'Templado', 'templado.mp3', 'fondo_templado.jpg', 'Mild', 'Mild', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(417, 11, '💧', 'Húmedo', 'húmedo.mp3', 'fondo_húmedo.jpg', 'Humid', 'Feucht', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(418, 11, '🏜️', 'Seco', 'seco.mp3', 'fondo_seco.jpg', 'Dry', 'Trocken', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(419, 11, '🍃', 'Fresco', 'fresco.mp3', 'fondo_fresco.jpg', 'Cool', 'Kühl', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(420, 11, '🌞', 'Cálido', 'cálido.mp3', 'fondo_cálido.jpg', 'Warm', 'Warm', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(421, 11, '🧊', 'Helado', 'helado.mp3', 'fondo_helado.jpg', 'Freezing', 'Eiskalt', 'Climas', 'weather', '2025-10-28 17:14:25', '2025-10-28 17:14:25'),
(422, 13, '🙏', 'Por favor', 'por_favor.mp3', 'fondo_por_favor.jpg', 'Please', 'Bitte', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(423, 13, '😊', 'Gracias', 'gracias.mp3', 'fondo_gracias.jpg', 'Thank you', 'Danke', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(424, 13, '😌', 'De nada', 'de_nada.mp3', 'fondo_de_nada.jpg', 'You are welcome', 'Bitte schön', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(425, 13, '😅', 'Perdón', 'perdón.mp3', 'fondo_perdón.jpg', 'Excuse me', 'Entschuldigung', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(426, 13, '😔', 'Lo siento', 'lo_siento.mp3', 'fondo_lo_siento.jpg', 'I am sorry', 'Es tut mir leid', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(427, 13, '🌅', 'Buenos días', 'buenos_días.mp3', 'fondo_buenos_días.jpg', 'Good morning', 'Guten Morgen', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(428, 13, '☀️', 'Buenas tardes', 'buenas_tardes.mp3', 'fondo_buenas_tardes.jpg', 'Good afternoon', 'Guten Tag', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(429, 13, '🌙', 'Buenas noches', 'buenas_noches.mp3', 'fondo_buenas_noches.jpg', 'Good evening', 'Guten Abend', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(430, 13, '👋', 'Hola', 'hola.mp3', 'fondo_hola.jpg', 'Hello', 'Hallo', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(431, 13, '👋', 'Adiós', 'adiós.mp3', 'fondo_adiós.jpg', 'Goodbye', 'Auf Wiedersehen', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(432, 13, '🤝', 'Con permiso', 'con_permiso.mp3', 'fondo_con_permiso.jpg', 'Excuse me', 'Entschuldigung', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(433, 13, '🙏', 'Disculpe', 'disculpe.mp3', 'fondo_disculpe.jpg', 'Pardon me', 'Verzeihung', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(434, 13, '🎉', 'Felicidades', 'felicidades.mp3', 'fondo_felicidades.jpg', 'Congratulations', 'Herzlichen Glückwunsch', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(435, 13, '🤗', 'Bienvenido', 'bienvenido.mp3', 'fondo_bienvenido.jpg', 'Welcome', 'Willkommen', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(436, 13, '😊', 'Que tengas buen día', 'que_tengas_buen_día.mp3', 'fondo_que_tengas_buen_día.jpg', 'Have a nice day', 'Schönen Tag noch', 'Buenos Modales', 'manners', '2025-10-28 17:15:34', '2025-10-28 17:15:34'),
(437, 12, '🕐', '1:00', 'hora_1_00.mp3', 'fondo_1_00.jpg', 'One o\'clock', 'Ein Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(438, 12, '🕑', '2:00', 'hora_2_00.mp3', 'fondo_2_00.jpg', 'Two o\'clock', 'Zwei Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(439, 12, '🕒', '3:00', 'hora_3_00.mp3', 'fondo_3_00.jpg', 'Three o\'clock', 'Drei Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(440, 12, '🕓', '4:00', 'hora_4_00.mp3', 'fondo_4_00.jpg', 'Four o\'clock', 'Vier Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(441, 12, '🕔', '5:00', 'hora_5_00.mp3', 'fondo_5_00.jpg', 'Five o\'clock', 'Fünf Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(442, 12, '🕕', '6:00', 'hora_6_00.mp3', 'fondo_6_00.jpg', 'Six o\'clock', 'Sechs Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(443, 12, '🕖', '7:00', 'hora_7_00.mp3', 'fondo_7_00.jpg', 'Seven o\'clock', 'Sieben Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(444, 12, '🕗', '8:00', 'hora_8_00.mp3', 'fondo_8_00.jpg', 'Eight o\'clock', 'Acht Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(445, 12, '🕘', '9:00', 'hora_9_00.mp3', 'fondo_9_00.jpg', 'Nine o\'clock', 'Neun Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(446, 12, '🕙', '10:00', 'hora_10_00.mp3', 'fondo_10_00.jpg', 'Ten o\'clock', 'Zehn Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(447, 12, '🕚', '11:00', 'hora_11_00.mp3', 'fondo_11_00.jpg', 'Eleven o\'clock', 'Elf Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36'),
(448, 12, '🕛', '12:00', 'hora_12_00.mp3', 'fondo_12_00.jpg', 'Twelve o\'clock', 'Zwölf Uhr', 'Horas', 'time', '2025-10-28 17:16:36', '2025-10-28 17:16:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`, `telefono`, `fecha_creacion`, `created_at`, `updated_at`) VALUES
(1, 'Usuario Test', 'test@miniminds.com', '1234', 1234567890, '2025-01-01', '2025-10-28 17:06:28', '2025-10-28 17:06:28'),
(2, 'Abadia', 'abadia@gmail.com', '1234', 2121345678, '2025-09-30', '2025-10-28 17:06:28', '2025-10-28 17:06:28'),
(3, 'Usuario Demo', 'demo@miniminds.com', 'demo123', 9876543210, '2025-01-15', '2025-10-28 17:06:28', '2025-10-28 17:06:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_elementos`
--

CREATE TABLE `usuarios_elementos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_elementos` int(11) NOT NULL,
  `veces_visto` int(11) DEFAULT 0,
  `aprendido` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_categorias_slug` (`slug`),
  ADD KEY `idx_categorias_orden` (`orden`);

--
-- Indices de la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_elementos_categoria` (`id_categorías`),
  ADD KEY `idx_elementos_slug` (`categoria_slug`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `idx_usuarios_correo` (`correo`);

--
-- Indices de la tabla `usuarios_elementos`
--
ALTER TABLE `usuarios_elementos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_element` (`id_usuario`,`id_elementos`),
  ADD KEY `idx_usuarios_elementos_usuario` (`id_usuario`),
  ADD KEY `idx_usuarios_elementos_elemento` (`id_elementos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `elementos`
--
ALTER TABLE `elementos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_elementos`
--
ALTER TABLE `usuarios_elementos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD CONSTRAINT `elementos_ibfk_1` FOREIGN KEY (`id_categorías`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios_elementos`
--
ALTER TABLE `usuarios_elementos`
  ADD CONSTRAINT `usuarios_elementos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_elementos_ibfk_2` FOREIGN KEY (`id_elementos`) REFERENCES `elementos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
