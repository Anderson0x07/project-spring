-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-11-2022 a las 03:56:49
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodyhealth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `documento` int(11) NOT NULL,
  `tipodocumento` varchar(50) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`documento`, `tipodocumento`, `nombre`, `apellido`, `telefono`, `fecha_nacimiento`, `email`, `password`) VALUES
(9999, 'CC', 'Admin', 'Uno', '1234', '2003-07-07', 'admin@bodyhealth.com', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `documento` int(15) NOT NULL,
  `tipo_documento` varchar(15) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fechaN` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `jornada` varchar(50) DEFAULT NULL,
  `id_datos` int(11) DEFAULT NULL,
  `id_detalle_plan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`documento`, `tipo_documento`, `nombre`, `apellido`, `telefono`, `fechaN`, `email`, `password`, `foto`, `jornada`, `id_datos`, `id_detalle_plan`) VALUES
(9999, 'CC', 'Miguel', 'Perez', '3219238493', '2022-10-11', 'miguel@gmail.com', 'miguel', 'https://jsfksdkfd', 'Mañana', 222, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_rutina`
--

CREATE TABLE `cliente_rutina` (
  `documentoC` int(15) NOT NULL,
  `id_rutina` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente_rutina`
--

INSERT INTO `cliente_rutina` (`documentoC`, `id_rutina`) VALUES
(9999, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_metodopago` int(15) DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_cliente`, `id_metodopago`, `fecha_compra`) VALUES
(8585, 9999, 2, '2022-10-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_cliente`
--

CREATE TABLE `datos_cliente` (
  `documento` int(11) NOT NULL,
  `peso` double DEFAULT NULL,
  `estatura` double DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos_cliente`
--

INSERT INTO `datos_cliente` (`documento`, `peso`, `estatura`, `fecha`) VALUES
(222, 70, 170, '2022-10-23'),
(1004926016, 80, 180, '2022-10-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `id_tiempo` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id_detalle`, `id_plan`, `precio`, `id_tiempo`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, 40000, 1, '2022-10-23', '2022-11-23'),
(2, 4, 400000, 3, '2022-10-23', '2023-04-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias_semana`
--

CREATE TABLE `dias_semana` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dias_semana`
--

INSERT INTO `dias_semana` (`ID`, `descripcion`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `id_ejercicio` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `series` varchar(50) DEFAULT NULL,
  `repeticiones` int(2) DEFAULT NULL,
  `url_video` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`id_ejercicio`, `descripcion`, `series`, `repeticiones`, `url_video`) VALUES
(1, 'Martillo cruzado con mancuernas', '4', 12, 'video'),
(2, 'Curl bíceps inclinado con barra', '4', 15, 'video2'),
(3, 'Rotación externa de hombro con banda elástica', '4', 12, 'V'),
(4, 'Elevaciones laterales y rotación interna con mancuernas', '4', 15, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio_musculo`
--

CREATE TABLE `ejercicio_musculo` (
  `ID` int(11) NOT NULL,
  `id_musculo` int(15) NOT NULL,
  `id_ejercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicio_musculo`
--

INSERT INTO `ejercicio_musculo` (`ID`, `id_musculo`, `id_ejercicio`) VALUES
(100, 1, 1),
(100, 1, 2),
(200, 3, 3),
(200, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `documento` int(15) NOT NULL,
  `tipo_documento` varchar(30) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fechaN` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `experiencia` varchar(15) DEFAULT NULL,
  `id_datos` int(11) DEFAULT NULL,
  `hoja_vida` varchar(100) DEFAULT NULL,
  `titulo_académico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`documento`, `tipo_documento`, `nombre`, `apellido`, `telefono`, `fechaN`, `email`, `password`, `experiencia`, `id_datos`, `hoja_vida`, `titulo_académico`) VALUES
(222, 'CC', 'Entrenador', 'Dos', '2222222222', '2022-10-04', 'entrenadordos@bodyhealth.com', 'entrenadordos', '3', 222, NULL, 'Profesional'),
(1004926016, 'CC', 'Entrenador', 'Uno', '3023219564', '2003-10-15', 'entrenadoruno@bodyhealth.com', 'entrenadoruno', '4', 1004926016, NULL, 'Profesional en educación física');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `ID` int(11) NOT NULL,
  `jornada` varchar(50) DEFAULT NULL,
  `id_diasemana` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`ID`, `jornada`, `id_diasemana`) VALUES
(1, 'Mañana', 1),
(2, 'Mañana', 2),
(3, 'Mañana', 3),
(4, 'Mañana', 4),
(5, 'Mañana', 5),
(6, 'Mañana', 6),
(7, 'Tarde', 1),
(8, 'Tarde', 2),
(9, 'Tarde', 3),
(10, 'Tarde', 4),
(11, 'Tarde', 5),
(12, 'Tarde', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_entrenador`
--

CREATE TABLE `horario_entrenador` (
  `documentoE` int(15) NOT NULL,
  `id_horario` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_entrenador`
--

INSERT INTO `horario_entrenador` (`documentoE`, `id_horario`) VALUES
(1004926016, 1),
(1004926016, 2),
(1004926016, 3),
(222, 7),
(222, 8),
(222, 9),
(222, 10),
(1004926016, 10),
(222, 11),
(1004926016, 11),
(222, 12),
(1004926016, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_entrenadorcliente`
--

CREATE TABLE `h_entrenadorcliente` (
  `documentoE` int(15) NOT NULL,
  `documentoC` int(15) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `h_entrenadorcliente`
--

INSERT INTO `h_entrenadorcliente` (`documentoE`, `documentoC`, `id_horario`) VALUES
(222, 9999, 222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquina`
--

CREATE TABLE `maquina` (
  `id_maquina` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maquina`
--

INSERT INTO `maquina` (`id_maquina`, `nombre`, `estado`, `observacion`, `id_proveedor`) VALUES
(1, 'Cinta de Correr', 'Bueno', 'N/A', 2),
(2, 'Bicicleta Vertical', 'Bueno', 'N/A', 2),
(3, 'Elíptica', 'Mal', 'Portapie desgastado', 2),
(4, 'Estepper ', 'Bueno', 'N/A', 2),
(5, 'Remo', 'Bueno', 'N/A', 1),
(6, 'Banco Olímpico', 'Bueno', 'N/A', 1),
(7, 'Prensa de Piernas', 'Bueno', 'N/A', 1),
(8, 'Banco de abdominales y dominadas', 'Bueno', 'N/A', 1),
(9, 'Air Bike', 'Bueno', 'N/A', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo de pago`
--

CREATE TABLE `metodo de pago` (
  `id_metodopago` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `metodo de pago`
--

INSERT INTO `metodo de pago` (`id_metodopago`, `descripcion`) VALUES
(1, 'PSE'),
(2, 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musculo`
--

CREATE TABLE `musculo` (
  `ID` int(15) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `musculo`
--

INSERT INTO `musculo` (`ID`, `descripcion`) VALUES
(1, 'Biceps'),
(2, 'Triceps'),
(3, 'Hombro'),
(4, 'Pecho'),
(5, 'Trapecio'),
(6, 'Abdomen'),
(7, 'Espalda'),
(8, 'Glúteos'),
(9, 'Cuadriceps'),
(10, 'Femoral'),
(11, 'Pantorrilla'),
(12, 'Aductores'),
(13, 'Funcional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_producto`, `id_compra`, `cantidad`, `subtotal`) VALUES
(1234, 1, 8585, 3, 150000),
(1234, 2, 8585, 2, 120000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `email`, `telefono`, `saldo`) VALUES
(19, 'Anderson', 'Orozco', 'anderson07rolon@gmail.com', '3219238493', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`ID`, `descripcion`) VALUES
(1, 'Plan Nutricional'),
(2, 'Plan Basico'),
(3, 'Plan Intermedio'),
(4, 'Plan Avanzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `stock` int(4) DEFAULT NULL,
  `precio` int(15) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `stock`, `precio`, `id_proveedor`) VALUES
(1, 'Acido Arachidonic', 50, 50000, 2),
(2, 'Adrenal Core', 23, 60000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_empresa`, `telefono`, `direccion`) VALUES
(1, 'MaquinariasPesadas', '3222323232', 'Av 3A #12-22 La Playa'),
(2, 'CardioFit', '3152545654', 'Av. 1E #17-48 Caobos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `id_usuario`) VALUES
(1, 'ROLE_ADMIN', 1),
(2, 'ROLE_USER', 1),
(3, 'ROLE_USER', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

CREATE TABLE `rutina` (
  `ID` int(15) NOT NULL,
  `id_ejerciciomusculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutina`
--

INSERT INTO `rutina` (`ID`, `id_ejerciciomusculo`) VALUES
(10, 100),
(10, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo`
--

CREATE TABLE `tiempo` (
  `ID` int(11) NOT NULL,
  `duracion` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiempo`
--

INSERT INTO `tiempo` (`ID`, `duracion`) VALUES
(1, 1),
(2, 3),
(3, 6),
(4, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`) VALUES
(1, 'admin', '$2a$10$zi9./gge4mH5EOpkovyC9.fD22kBV2uJOWTBnXRm1RgAd6IcxAdH2'),
(2, 'user', '$2a$10$DhmuaRNCXDoWNuP9MNuPBulc9N7KLuNq6Zm..2tYA10lSg9GSxp3W');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`documento`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_detalle_plan` (`id_detalle_plan`),
  ADD KEY `id_datos` (`id_datos`);

--
-- Indices de la tabla `cliente_rutina`
--
ALTER TABLE `cliente_rutina`
  ADD PRIMARY KEY (`documentoC`,`id_rutina`),
  ADD KEY `cliente_rutina_ibfk_2` (`id_rutina`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_metodopago` (`id_metodopago`);

--
-- Indices de la tabla `datos_cliente`
--
ALTER TABLE `datos_cliente`
  ADD PRIMARY KEY (`documento`,`fecha`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_tiempo` (`id_tiempo`);

--
-- Indices de la tabla `dias_semana`
--
ALTER TABLE `dias_semana`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`id_ejercicio`);

--
-- Indices de la tabla `ejercicio_musculo`
--
ALTER TABLE `ejercicio_musculo`
  ADD PRIMARY KEY (`ID`,`id_musculo`,`id_ejercicio`),
  ADD KEY `emusculo_ibfk1` (`id_ejercicio`),
  ADD KEY `id_musculo` (`id_musculo`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_datos` (`id_datos`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_diasemana` (`id_diasemana`);

--
-- Indices de la tabla `horario_entrenador`
--
ALTER TABLE `horario_entrenador`
  ADD PRIMARY KEY (`documentoE`,`id_horario`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `h_entrenadorcliente`
--
ALTER TABLE `h_entrenadorcliente`
  ADD PRIMARY KEY (`documentoE`,`documentoC`,`id_horario`),
  ADD KEY `documentoC` (`documentoC`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id_maquina`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `metodo de pago`
--
ALTER TABLE `metodo de pago`
  ADD PRIMARY KEY (`id_metodopago`);

--
-- Indices de la tabla `musculo`
--
ALTER TABLE `musculo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`,`id_producto`,`id_compra`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD PRIMARY KEY (`ID`,`id_ejerciciomusculo`) USING BTREE,
  ADD KEY `id_ejericiciomusculo` (`id_ejerciciomusculo`);

--
-- Indices de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_detalle_plan`) REFERENCES `detalle` (`id_detalle`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_datos`) REFERENCES `datos_cliente` (`documento`);

--
-- Filtros para la tabla `cliente_rutina`
--
ALTER TABLE `cliente_rutina`
  ADD CONSTRAINT `cliente_rutina_ibfk_1` FOREIGN KEY (`documentoC`) REFERENCES `cliente` (`documento`),
  ADD CONSTRAINT `cliente_rutina_ibfk_2` FOREIGN KEY (`id_rutina`) REFERENCES `rutina` (`ID`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`documento`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_metodopago`) REFERENCES `metodo de pago` (`id_metodopago`);

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`ID`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`id_tiempo`) REFERENCES `tiempo` (`ID`);

--
-- Filtros para la tabla `ejercicio_musculo`
--
ALTER TABLE `ejercicio_musculo`
  ADD CONSTRAINT `emusculo_ibfk1` FOREIGN KEY (`id_ejercicio`) REFERENCES `ejercicio` (`id_ejercicio`),
  ADD CONSTRAINT `emusculo_ibfk2` FOREIGN KEY (`id_musculo`) REFERENCES `musculo` (`ID`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`id_datos`) REFERENCES `datos_cliente` (`documento`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_diasemana`) REFERENCES `dias_semana` (`ID`);

--
-- Filtros para la tabla `horario_entrenador`
--
ALTER TABLE `horario_entrenador`
  ADD CONSTRAINT `horario_entrenador_ibfk_1` FOREIGN KEY (`documentoE`) REFERENCES `entrenador` (`documento`),
  ADD CONSTRAINT `horario_entrenador_ibfk_2` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`ID`);

--
-- Filtros para la tabla `h_entrenadorcliente`
--
ALTER TABLE `h_entrenadorcliente`
  ADD CONSTRAINT `h_entrenadorcliente_ibfk_1` FOREIGN KEY (`documentoE`) REFERENCES `entrenador` (`documento`),
  ADD CONSTRAINT `h_entrenadorcliente_ibfk_2` FOREIGN KEY (`documentoC`) REFERENCES `cliente` (`documento`),
  ADD CONSTRAINT `h_entrenadorcliente_ibfk_3` FOREIGN KEY (`id_horario`) REFERENCES `horario_entrenador` (`documentoE`);

--
-- Filtros para la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD CONSTRAINT `maquina_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `rol_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD CONSTRAINT `rutina_ejerciciomusculo_ibfk1` FOREIGN KEY (`id_ejerciciomusculo`) REFERENCES `ejercicio_musculo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
