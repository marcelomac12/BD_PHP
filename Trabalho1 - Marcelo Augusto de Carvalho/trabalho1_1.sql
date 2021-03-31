-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Abr-2019 às 14:48
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
-- Database: `trabalho1.1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fofoca`
--

CREATE TABLE `fofoca` (
  `Codigo` bigint(20) NOT NULL,
  `Descriçao` text NOT NULL,
  `Dia` date NOT NULL,
  `CodFofoqueiro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fofocalocal`
--

CREATE TABLE `fofocalocal` (
  `Codigo` bigint(20) NOT NULL,
  `CodFofoca` bigint(20) NOT NULL,
  `CodLocal` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fofocatipo`
--

CREATE TABLE `fofocatipo` (
  `Codigo` bigint(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Descriçao` text NOT NULL,
  `NomeAmante` varchar(50) DEFAULT NULL,
  `ValorDivida` float DEFAULT NULL,
  `CodVencedor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fofoqueiro`
--

CREATE TABLE `fofoqueiro` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Endereço` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `local`
--

CREATE TABLE `local` (
  `Codigo` bigint(20) NOT NULL,
  `Descriçao` text NOT NULL,
  `Endereço` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` int(50) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Endereço` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafofoca`
--

CREATE TABLE `pessoafofoca` (
  `Codigo` bigint(20) NOT NULL,
  `CodPessoa` bigint(20) NOT NULL,
  `CodFofoca` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fofoca`
--
ALTER TABLE `fofoca`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodFofoqueiro`);

--
-- Indexes for table `fofocalocal`
--
ALTER TABLE `fofocalocal`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodFofoca`),
  ADD KEY `Estrangeira2` (`CodLocal`);

--
-- Indexes for table `fofocatipo`
--
ALTER TABLE `fofocatipo`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodVencedor`);

--
-- Indexes for table `fofoqueiro`
--
ALTER TABLE `fofoqueiro`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `pessoafofoca`
--
ALTER TABLE `pessoafofoca`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodPessoa`),
  ADD KEY `Estrangeira2` (`CodFofoca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fofoca`
--
ALTER TABLE `fofoca`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fofocalocal`
--
ALTER TABLE `fofocalocal`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fofocatipo`
--
ALTER TABLE `fofocatipo`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fofoqueiro`
--
ALTER TABLE `fofoqueiro`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `local`
--
ALTER TABLE `local`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pessoafofoca`
--
ALTER TABLE `pessoafofoca`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `fofoca`
--
ALTER TABLE `fofoca`
  ADD CONSTRAINT `fofoca_ibfk_1` FOREIGN KEY (`CodFofoqueiro`) REFERENCES `fofoqueiro` (`Codigo`);

--
-- Limitadores para a tabela `fofocalocal`
--
ALTER TABLE `fofocalocal`
  ADD CONSTRAINT `fofocalocal_ibfk_1` FOREIGN KEY (`CodFofoca`) REFERENCES `fofoca` (`Codigo`),
  ADD CONSTRAINT `fofocalocal_ibfk_2` FOREIGN KEY (`CodLocal`) REFERENCES `local` (`Codigo`);

--
-- Limitadores para a tabela `fofocatipo`
--
ALTER TABLE `fofocatipo`
  ADD CONSTRAINT `fofocatipo_ibfk_1` FOREIGN KEY (`CodVencedor`) REFERENCES `pessoa` (`Codigo`);

--
-- Limitadores para a tabela `pessoafofoca`
--
ALTER TABLE `pessoafofoca`
  ADD CONSTRAINT `pessoafofoca_ibfk_1` FOREIGN KEY (`CodPessoa`) REFERENCES `local` (`Codigo`),
  ADD CONSTRAINT `pessoafofoca_ibfk_2` FOREIGN KEY (`CodFofoca`) REFERENCES `fofoca` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
