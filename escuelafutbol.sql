-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2019 a las 21:27:45
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuelafutbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudiente`
--

CREATE TABLE `acudiente` (
  `Identificacion` int(11) NOT NULL,
  `Cod_Matricula` int(11) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Cod_Direccion` int(11) DEFAULT NULL,
  `Cod_Correo` int(11) DEFAULT NULL,
  `Cod_Telefono` int(11) DEFAULT NULL,
  `Cod_Barrio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Identificacion` int(11) NOT NULL,
  `Usu_Login` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Cod_Direccion` int(11) DEFAULT NULL,
  `Cod_Correo` int(11) DEFAULT NULL,
  `Cod_Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `Codigo` int(11) NOT NULL,
  `Cod_Departamento` int(11) DEFAULT NULL,
  `Nombre` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonato`
--

CREATE TABLE `campeonato` (
  `Codigo` int(11) NOT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Codigo` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo`
--

CREATE TABLE `correo` (
  `Codigo` int(11) NOT NULL,
  `Cod_Tip_Cor` int(11) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `Codigo` int(11) NOT NULL,
  `Cod_Ciudad` int(11) DEFAULT NULL,
  `Nombre` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `Codigo` int(11) NOT NULL,
  `Cod_Tip_Dir` int(11) DEFAULT NULL,
  `Direccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `Identificacion` int(11) NOT NULL,
  `Iden_Acu` int(11) DEFAULT NULL,
  `Cod_Categoria` int(11) DEFAULT NULL,
  `Iden_Tec` int(11) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Cod_Direccion` int(11) DEFAULT NULL,
  `Cod_Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `Usuario` varchar(50) NOT NULL,
  `Contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`Usuario`, `Contraseña`) VALUES
('LuisFrancisco', 'Luis1997');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `Codigo` int(11) NOT NULL,
  `Iden_Admin` int(11) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesualidad`
--

CREATE TABLE `mesualidad` (
  `Codigo` int(11) NOT NULL,
  `Iden_Juga` int(11) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operador`
--

CREATE TABLE `operador` (
  `Codigo` int(11) NOT NULL,
  `Tipo_Operador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operador`
--

INSERT INTO `operador` (`Codigo`, `Tipo_Operador`) VALUES
(1, 'Tigo'),
(2, 'Claro'),
(3, 'Movistar'),
(4, 'Avantel'),
(5, 'ETB'),
(6, 'Móvil Éxito'),
(7, 'Virgin Mobile'),
(8, 'Avantel'),
(9, 'Uffmovil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `Codigo` int(11) NOT NULL,
  `Cod_categoria` int(11) DEFAULT NULL,
  `Cod_Campeonato` int(11) DEFAULT NULL,
  `Lugar_Partido` varchar(100) DEFAULT NULL,
  `Fecha_Partido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `practica`
--

CREATE TABLE `practica` (
  `Codigo` int(11) NOT NULL,
  `Cod_Categoria` int(11) DEFAULT NULL,
  `Lugar_Practica` date DEFAULT NULL,
  `Fecha_Practica` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Codigo` int(11) NOT NULL,
  `Usu_Login` varchar(50) DEFAULT NULL,
  `Tipo_Rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Codigo`, `Usu_Login`, `Tipo_Rol`) VALUES
(1, 'LuisFrancisco', 'Tecnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `Identificacion` int(11) NOT NULL,
  `Usu_Login` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Cod_Direccion` int(11) DEFAULT NULL,
  `Cod_Correo` int(11) DEFAULT NULL,
  `Cod_Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `Codigo` int(11) NOT NULL,
  `Cod_Ope` int(11) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_correo`
--

CREATE TABLE `tipo_correo` (
  `Codigo` int(11) NOT NULL,
  `Tipo_Correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_correo`
--

INSERT INTO `tipo_correo` (`Codigo`, `Tipo_Correo`) VALUES
(1, 'Hotmail.com'),
(2, 'Hotmail.es'),
(3, 'Gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_direccion`
--

CREATE TABLE `tipo_direccion` (
  `Codigo` int(11) NOT NULL,
  `Tipo_Direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD PRIMARY KEY (`Identificacion`),
  ADD KEY `Cod_Barrio` (`Cod_Barrio`),
  ADD KEY `Cod_Matricula` (`Cod_Matricula`),
  ADD KEY `Cod_Direccion` (`Cod_Direccion`),
  ADD KEY `Cod_Telefono` (`Cod_Telefono`),
  ADD KEY `Cod_Correo` (`Cod_Correo`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Identificacion`),
  ADD KEY `Usu_Login` (`Usu_Login`),
  ADD KEY `Cod_Direccion` (`Cod_Direccion`),
  ADD KEY `Cod_Telefono` (`Cod_Telefono`),
  ADD KEY `Cod_Correo` (`Cod_Correo`);

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_Departamento` (`Cod_Departamento`);

--
-- Indices de la tabla `campeonato`
--
ALTER TABLE `campeonato`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `correo`
--
ALTER TABLE `correo`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_Tip_Cor` (`Cod_Tip_Cor`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_Ciudad` (`Cod_Ciudad`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_Tip_Dir` (`Cod_Tip_Dir`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`Identificacion`),
  ADD KEY `Cod_Categoria` (`Cod_Categoria`),
  ADD KEY `Iden_Tec` (`Iden_Tec`),
  ADD KEY `Cod_Direccion` (`Cod_Direccion`),
  ADD KEY `Cod_Telefono` (`Cod_Telefono`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Usuario`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Iden_Admin` (`Iden_Admin`);

--
-- Indices de la tabla `mesualidad`
--
ALTER TABLE `mesualidad`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Iden_Juga` (`Iden_Juga`);

--
-- Indices de la tabla `operador`
--
ALTER TABLE `operador`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_categoria` (`Cod_categoria`),
  ADD KEY `Cod_Campeonato` (`Cod_Campeonato`);

--
-- Indices de la tabla `practica`
--
ALTER TABLE `practica`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_Categoria` (`Cod_Categoria`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Usu_Login` (`Usu_Login`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`Identificacion`),
  ADD UNIQUE KEY `Cod_Direccion` (`Cod_Direccion`),
  ADD KEY `Usu_Login` (`Usu_Login`),
  ADD KEY `Cod_Telefono` (`Cod_Telefono`),
  ADD KEY `Cod_Correo` (`Cod_Correo`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Cod_Ope` (`Cod_Ope`);

--
-- Indices de la tabla `tipo_correo`
--
ALTER TABLE `tipo_correo`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `tipo_direccion`
--
ALTER TABLE `tipo_direccion`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `correo`
--
ALTER TABLE `correo`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `operador`
--
ALTER TABLE `operador`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_correo`
--
ALTER TABLE `tipo_correo`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD CONSTRAINT `acudiente_ibfk_1` FOREIGN KEY (`Cod_Barrio`) REFERENCES `barrio` (`Codigo`),
  ADD CONSTRAINT `acudiente_ibfk_2` FOREIGN KEY (`Cod_Matricula`) REFERENCES `matricula` (`Codigo`),
  ADD CONSTRAINT `acudiente_ibfk_3` FOREIGN KEY (`Cod_Direccion`) REFERENCES `direccion` (`Codigo`),
  ADD CONSTRAINT `acudiente_ibfk_4` FOREIGN KEY (`Cod_Telefono`) REFERENCES `telefono` (`Codigo`),
  ADD CONSTRAINT `acudiente_ibfk_5` FOREIGN KEY (`Cod_Correo`) REFERENCES `correo` (`Codigo`);

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Usu_Login`) REFERENCES `login` (`Usuario`),
  ADD CONSTRAINT `administrador_ibfk_2` FOREIGN KEY (`Cod_Direccion`) REFERENCES `direccion` (`Codigo`),
  ADD CONSTRAINT `administrador_ibfk_3` FOREIGN KEY (`Cod_Telefono`) REFERENCES `telefono` (`Codigo`),
  ADD CONSTRAINT `administrador_ibfk_4` FOREIGN KEY (`Cod_Correo`) REFERENCES `correo` (`Codigo`);

--
-- Filtros para la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `barrio_ibfk_1` FOREIGN KEY (`Cod_Departamento`) REFERENCES `departamento` (`Codigo`);

--
-- Filtros para la tabla `correo`
--
ALTER TABLE `correo`
  ADD CONSTRAINT `correo_ibfk_1` FOREIGN KEY (`Cod_Tip_Cor`) REFERENCES `tipo_correo` (`Codigo`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`Cod_Ciudad`) REFERENCES `ciudad` (`Codigo`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`Cod_Tip_Dir`) REFERENCES `tipo_direccion` (`Codigo`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`Cod_Categoria`) REFERENCES `categoria` (`Codigo`),
  ADD CONSTRAINT `jugador_ibfk_2` FOREIGN KEY (`Iden_Tec`) REFERENCES `tecnico` (`Identificacion`),
  ADD CONSTRAINT `jugador_ibfk_3` FOREIGN KEY (`Iden_Tec`) REFERENCES `acudiente` (`Identificacion`),
  ADD CONSTRAINT `jugador_ibfk_4` FOREIGN KEY (`Cod_Direccion`) REFERENCES `direccion` (`Codigo`),
  ADD CONSTRAINT `jugador_ibfk_5` FOREIGN KEY (`Cod_Telefono`) REFERENCES `telefono` (`Codigo`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`Iden_Admin`) REFERENCES `administrador` (`Identificacion`);

--
-- Filtros para la tabla `mesualidad`
--
ALTER TABLE `mesualidad`
  ADD CONSTRAINT `mesualidad_ibfk_1` FOREIGN KEY (`Iden_Juga`) REFERENCES `jugador` (`Identificacion`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`Cod_categoria`) REFERENCES `categoria` (`Codigo`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`Cod_Campeonato`) REFERENCES `campeonato` (`Codigo`);

--
-- Filtros para la tabla `practica`
--
ALTER TABLE `practica`
  ADD CONSTRAINT `practica_ibfk_1` FOREIGN KEY (`Cod_Categoria`) REFERENCES `categoria` (`Codigo`);

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`Usu_Login`) REFERENCES `login` (`Usuario`);

--
-- Filtros para la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD CONSTRAINT `tecnico_ibfk_1` FOREIGN KEY (`Usu_Login`) REFERENCES `login` (`Usuario`),
  ADD CONSTRAINT `tecnico_ibfk_2` FOREIGN KEY (`Cod_Telefono`) REFERENCES `telefono` (`Codigo`),
  ADD CONSTRAINT `tecnico_ibfk_3` FOREIGN KEY (`Cod_Correo`) REFERENCES `correo` (`Codigo`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`Cod_Ope`) REFERENCES `operador` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
