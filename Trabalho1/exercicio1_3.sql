-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Mar-2019 às 05:44
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercicio1.3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `antena`
--

CREATE TABLE `antena` (
  `Codigo` bigint(20) NOT NULL,
  `Potencia` bigint(20) NOT NULL,
  `CodCidade` bigint(20) NOT NULL,
  `Rua` varchar(50) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Complemento` varchar(50) NOT NULL,
  `Bairro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `NumHabitantes` int(11) NOT NULL,
  `CodEstado` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Codigo` bigint(20) NOT NULL,
  `NumCelular` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Rua` varchar(50) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `CodCidade` bigint(20) NOT NULL,
  `CodPlano` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sigla` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ligacao`
--

CREATE TABLE `ligacao` (
  `Codigo` bigint(20) NOT NULL,
  `Inicio` datetime NOT NULL,
  `Termino` datetime NOT NULL,
  `CodLigou` bigint(20) NOT NULL,
  `CodRecebeu` bigint(20) NOT NULL,
  `CodAntena` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano`
--

CREATE TABLE `plano` (
  `Codigo` bigint(20) NOT NULL,
  `Brinde` varchar(50) NOT NULL,
  `Termino` date NOT NULL,
  `Desconto` float NOT NULL,
  `TipoCelular` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Tarifa` float NOT NULL,
  `ValorMinimo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antena`
--
ALTER TABLE `antena`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCidade`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodEstado`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCidade`),
  ADD KEY `Estrangeira2` (`CodPlano`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `ligacao`
--
ALTER TABLE `ligacao`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodLigou`),
  ADD KEY `Estrangeira2` (`CodRecebeu`),
  ADD KEY `Estrangeira3` (`CodAntena`);

--
-- Indexes for table `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antena`
--
ALTER TABLE `antena`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ligacao`
--
ALTER TABLE `ligacao`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plano`
--
ALTER TABLE `plano`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
