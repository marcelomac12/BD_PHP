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
-- Database: `trabalho1.2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Coordenador` bigint(20) NOT NULL,
  `CodDepartamento` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursoprofessor`
--

CREATE TABLE `cursoprofessor` (
  `Codigo` bigint(20) NOT NULL,
  `CodCurso` bigint(20) NOT NULL,
  `CodProfessor` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sala` varchar(50) NOT NULL,
  `Chefe` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Formaçao` varchar(50) NOT NULL,
  `Telefone` varchar(20) NOT NULL,
  `Endereço` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prova`
--

CREATE TABLE `prova` (
  `Codigo` bigint(20) NOT NULL,
  `CodTurma` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `provaquestao`
--

CREATE TABLE `provaquestao` (
  `Codigo` int(11) NOT NULL,
  `CodProva` bigint(20) NOT NULL,
  `CodQuestao` bigint(20) NOT NULL,
  `Valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao`
--

CREATE TABLE `questao` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Pergunta` text NOT NULL,
  `GrauDificuldade` int(11) NOT NULL,
  `Fonte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questaotipo`
--

CREATE TABLE `questaotipo` (
  `Codigo` bigint(20) NOT NULL,
  `CodQuestao` bigint(20) NOT NULL,
  `CodTipo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `Codigo` bigint(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Resposta` text,
  `Extra` text,
  `Verdadeira` text,
  `Falsas` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `Codigo` bigint(20) NOT NULL,
  `Turno` varchar(15) NOT NULL,
  `DataIngresso` date NOT NULL,
  `Numero` bigint(20) NOT NULL,
  `CodCurso` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`Coordenador`),
  ADD KEY `Estrangeira2` (`CodDepartamento`);

--
-- Indexes for table `cursoprofessor`
--
ALTER TABLE `cursoprofessor`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCurso`),
  ADD KEY `Estrangeira2` (`CodProfessor`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`Chefe`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodTurma`);

--
-- Indexes for table `provaquestao`
--
ALTER TABLE `provaquestao`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodProva`),
  ADD KEY `Estrangeira2` (`CodQuestao`);

--
-- Indexes for table `questao`
--
ALTER TABLE `questao`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `questaotipo`
--
ALTER TABLE `questaotipo`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodQuestao`),
  ADD KEY `Estrangeira2` (`CodTipo`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCurso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cursoprofessor`
--
ALTER TABLE `cursoprofessor`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prova`
--
ALTER TABLE `prova`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provaquestao`
--
ALTER TABLE `provaquestao`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questao`
--
ALTER TABLE `questao`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questaotipo`
--
ALTER TABLE `questaotipo`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`Coordenador`) REFERENCES `professor` (`Codigo`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`CodDepartamento`) REFERENCES `departamento` (`Codigo`);

--
-- Limitadores para a tabela `cursoprofessor`
--
ALTER TABLE `cursoprofessor`
  ADD CONSTRAINT `cursoprofessor_ibfk_1` FOREIGN KEY (`CodCurso`) REFERENCES `curso` (`Codigo`),
  ADD CONSTRAINT `cursoprofessor_ibfk_2` FOREIGN KEY (`CodProfessor`) REFERENCES `professor` (`Codigo`);

--
-- Limitadores para a tabela `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`Chefe`) REFERENCES `professor` (`Codigo`);

--
-- Limitadores para a tabela `prova`
--
ALTER TABLE `prova`
  ADD CONSTRAINT `prova_ibfk_1` FOREIGN KEY (`CodTurma`) REFERENCES `turma` (`Codigo`);

--
-- Limitadores para a tabela `provaquestao`
--
ALTER TABLE `provaquestao`
  ADD CONSTRAINT `provaquestao_ibfk_1` FOREIGN KEY (`CodProva`) REFERENCES `prova` (`Codigo`),
  ADD CONSTRAINT `provaquestao_ibfk_2` FOREIGN KEY (`CodQuestao`) REFERENCES `questao` (`Codigo`);

--
-- Limitadores para a tabela `questaotipo`
--
ALTER TABLE `questaotipo`
  ADD CONSTRAINT `questaotipo_ibfk_1` FOREIGN KEY (`CodQuestao`) REFERENCES `questao` (`Codigo`),
  ADD CONSTRAINT `questaotipo_ibfk_2` FOREIGN KEY (`CodTipo`) REFERENCES `tipo` (`Codigo`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`CodCurso`) REFERENCES `curso` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
