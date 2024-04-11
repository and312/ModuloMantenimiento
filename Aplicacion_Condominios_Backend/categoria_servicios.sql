-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2024 a las 06:31:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modulo_5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_servicios`
--

CREATE TABLE `categoria_servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catnombre` varchar(255) NOT NULL,
  `catdescripcion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_servicios`
--

INSERT INTO `categoria_servicios` (`id`, `catnombre`, `catdescripcion`, `created_at`, `updated_at`) VALUES
(1, 'Electricidad', 'Mantenimiento relacionado con instalaciones eléctricas, como reparaciones de cables, cambios de interruptores, y revisión de sistemas de iluminación.', NULL, NULL),
(2, 'Fontanería', 'Incluye reparaciones y mantenimiento de tuberías, grifos, drenajes, y sistemas de agua caliente.', NULL, NULL),
(3, 'Climatización', 'Mantenimiento de sistemas de calefacción, ventilación, aire acondicionado, y control de temperatura.', NULL, NULL),
(4, 'Carpintería', 'Reparación y mantenimiento de puertas, ventanas, muebles de madera, y estructuras interiores.', NULL, NULL),
(5, 'Pintura', 'Tareas de mantenimiento relacionadas con la pintura de paredes, techos, y exteriores de edificios.', NULL, NULL),
(6, 'Telecomunicaciones', ' Incluye mantenimiento de sistemas de telefonía, redes de datos, internet, y dispositivos de comunicación.', NULL, NULL),
(7, 'todossss acutalizado', 'ningunoooooo actualizado', NULL, NULL),
(9, 'Pyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'TFSDFDSGSDASDFASDFASDos.', NULL, NULL);

--
-- Índices para tablas volcadas
--

INSERT INTO `categoria_servicios` ( `catnombre`, `catdescripcion`, `created_at`, `updated_at`) VALUES
('Electricidad', 'Mantenimiento relacionado con instalaciones eléctricas, como reparaciones de cables, cambios de interruptores, y revisión de sistemas de iluminación.', NULL, NULL),

--
-- Indices de la tabla `categoria_servicios`
--
ALTER TABLE `categoria_servicios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_servicios`
--
ALTER TABLE `categoria_servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
