-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Abr-2019 às 14:49
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
-- Database: `trabalho1.3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `CPF` bigint(20) NOT NULL,
  `DataNascimento` date NOT NULL,
  `Tarefas` text NOT NULL,
  `CodSetor` bigint(20) NOT NULL,
  `FunçaoSetor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionariotarefa`
--

CREATE TABLE `funcionariotarefa` (
  `Codigo` bigint(20) NOT NULL,
  `CodFuncionario` bigint(20) NOT NULL,
  `CodTarefa` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `peça`
--

CREATE TABLE `peça` (
  `Codigo` bigint(20) NOT NULL,
  `Descriçao` text NOT NULL,
  `Preço` float NOT NULL,
  `CodSeçao` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `peçatipofuncionario`
--

CREATE TABLE `peçatipofuncionario` (
  `Codigo` bigint(20) NOT NULL,
  `CodPeca` bigint(20) NOT NULL,
  `CodTipoPeça` bigint(20) NOT NULL,
  `CodFuncionario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sigla` varchar(10) NOT NULL,
  `CodChefe` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seçao`
--

CREATE TABLE `seçao` (
  `Codigo` bigint(20) NOT NULL,
  `CodSetor` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sigla` int(10) NOT NULL,
  `Telefone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seçaotipo`
--

CREATE TABLE `seçaotipo` (
  `Codigo` bigint(20) NOT NULL,
  `CodSeçao` bigint(20) NOT NULL,
  `CodTipo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefa`
--

CREATE TABLE `tarefa` (
  `Codigo` bigint(20) NOT NULL,
  `Descriçao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipopeça`
--

CREATE TABLE `tipopeça` (
  `Codigo` bigint(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Descrição` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposeçao`
--

CREATE TABLE `tiposeçao` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodSetor`);

--
-- Indexes for table `funcionariotarefa`
--
ALTER TABLE `funcionariotarefa`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodFuncionario`),
  ADD KEY `Estrangeira2` (`CodTarefa`);

--
-- Indexes for table `peça`
--
ALTER TABLE `peça`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodSeçao`);

--
-- Indexes for table `peçatipofuncionario`
--
ALTER TABLE `peçatipofuncionario`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodPeca`),
  ADD KEY `Estrangeira2` (`CodTipoPeça`),
  ADD KEY `Estrangeira3` (`CodFuncionario`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodChefe`);

--
-- Indexes for table `seçao`
--
ALTER TABLE `seçao`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodSetor`);

--
-- Indexes for table `seçaotipo`
--
ALTER TABLE `seçaotipo`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodSeçao`),
  ADD KEY `Estrangeira2` (`CodTipo`);

--
-- Indexes for table `tarefa`
--
ALTER TABLE `tarefa`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `tipopeça`
--
ALTER TABLE `tipopeça`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `tiposeçao`
--
ALTER TABLE `tiposeçao`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionariotarefa`
--
ALTER TABLE `funcionariotarefa`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peça`
--
ALTER TABLE `peça`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peçatipofuncionario`
--
ALTER TABLE `peçatipofuncionario`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seçao`
--
ALTER TABLE `seçao`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seçaotipo`
--
ALTER TABLE `seçaotipo`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarefa`
--
ALTER TABLE `tarefa`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipopeça`
--
ALTER TABLE `tipopeça`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiposeçao`
--
ALTER TABLE `tiposeçao`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`CodSetor`) REFERENCES `setor` (`Codigo`);

--
-- Limitadores para a tabela `funcionariotarefa`
--
ALTER TABLE `funcionariotarefa`
  ADD CONSTRAINT `funcionariotarefa_ibfk_1` FOREIGN KEY (`CodFuncionario`) REFERENCES `funcionario` (`Codigo`),
  ADD CONSTRAINT `funcionariotarefa_ibfk_2` FOREIGN KEY (`CodTarefa`) REFERENCES `tarefa` (`Codigo`);

--
-- Limitadores para a tabela `peça`
--
ALTER TABLE `peça`
  ADD CONSTRAINT `peça_ibfk_1` FOREIGN KEY (`CodSeçao`) REFERENCES `seçao` (`Codigo`);

--
-- Limitadores para a tabela `peçatipofuncionario`
--
ALTER TABLE `peçatipofuncionario`
  ADD CONSTRAINT `peçatipofuncionario_ibfk_1` FOREIGN KEY (`CodPeca`) REFERENCES `peça` (`Codigo`),
  ADD CONSTRAINT `peçatipofuncionario_ibfk_2` FOREIGN KEY (`CodFuncionario`) REFERENCES `funcionario` (`Codigo`),
  ADD CONSTRAINT `peçatipofuncionario_ibfk_3` FOREIGN KEY (`CodTipoPeça`) REFERENCES `tipopeça` (`Codigo`);

--
-- Limitadores para a tabela `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setor_ibfk_1` FOREIGN KEY (`CodChefe`) REFERENCES `funcionario` (`Codigo`);

--
-- Limitadores para a tabela `seçao`
--
ALTER TABLE `seçao`
  ADD CONSTRAINT `seçao_ibfk_1` FOREIGN KEY (`CodSetor`) REFERENCES `setor` (`Codigo`);

--
-- Limitadores para a tabela `seçaotipo`
--
ALTER TABLE `seçaotipo`
  ADD CONSTRAINT `seçaotipo_ibfk_1` FOREIGN KEY (`CodSeçao`) REFERENCES `seçao` (`Codigo`),
  ADD CONSTRAINT `seçaotipo_ibfk_2` FOREIGN KEY (`CodTipo`) REFERENCES `tiposeçao` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
