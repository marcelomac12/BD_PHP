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
-- Database: `exercicio1.2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cd`
--

CREATE TABLE `cd` (
  `Codigo` bigint(20) NOT NULL,
  `Espaco` int(11) NOT NULL,
  `Classificacao` varchar(50) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `CodMorador` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cdmusica`
--

CREATE TABLE `cdmusica` (
  `Codigo` bigint(20) NOT NULL,
  `CodMusica` bigint(20) NOT NULL,
  `CodCD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `Codigo` bigint(20) NOT NULL,
  `CodCD` bigint(20) NOT NULL,
  `NomeAmigo` varchar(50) NOT NULL,
  `DiaEmprestimo` date NOT NULL,
  `Devolvido` tinyint(1) NOT NULL,
  `DiaDevolucao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador`
--

CREATE TABLE `morador` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Celular` bigint(20) NOT NULL,
  `Apelido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `musica`
--

CREATE TABLE `musica` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Duracao` int(11) NOT NULL,
  `Interprete` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `programas`
--

CREATE TABLE `programas` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Descricao` int(100) NOT NULL,
  `CodCD` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodMorador`);

--
-- Indexes for table `cdmusica`
--
ALTER TABLE `cdmusica`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodMusica`),
  ADD KEY `Estrangeira2` (`CodCD`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCD`);

--
-- Indexes for table `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cd`
--
ALTER TABLE `cd`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cdmusica`
--
ALTER TABLE `cdmusica`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `morador`
--
ALTER TABLE `morador`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `musica`
--
ALTER TABLE `musica`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programas`
--
ALTER TABLE `programas`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
