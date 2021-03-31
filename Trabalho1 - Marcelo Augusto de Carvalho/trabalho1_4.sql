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
-- Database: `trabalho1.4`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Matricula` bigint(20) NOT NULL,
  `Endereço` varchar(100) NOT NULL,
  `Curso` varchar(30) NOT NULL,
  `CodTipo` bigint(20) NOT NULL,
  `CodCurso` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunodisciplina`
--

CREATE TABLE `alunodisciplina` (
  `Codigo` bigint(20) NOT NULL,
  `CodAluno` bigint(20) NOT NULL,
  `CodDisciplina` bigint(20) NOT NULL,
  `Ano` int(11) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sigla` varchar(10) NOT NULL,
  `Duraçao` varchar(15) NOT NULL,
  `CodPredio` bigint(20) NOT NULL,
  `CodChefe` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursodisciplina`
--

CREATE TABLE `cursodisciplina` (
  `Codigo` bigint(20) NOT NULL,
  `CodCurso` bigint(20) NOT NULL,
  `CodDisciplina` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `NumCreditos` int(11) NOT NULL,
  `CodProfessor` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `predio`
--

CREATE TABLE `predio` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sigla` varchar(10) NOT NULL,
  `Obervação` text NOT NULL,
  `CodTipoPredio` bigint(20) NOT NULL,
  `CodUniversidade` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Titulaçao` varchar(30) NOT NULL,
  `Disciplinas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoaluno`
--

CREATE TABLE `tipoaluno` (
  `Codigo` bigint(20) NOT NULL,
  `Tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipopredio`
--

CREATE TABLE `tipopredio` (
  `Codigo` bigint(20) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `NumSalas` int(11) DEFAULT NULL,
  `NumLabs` int(11) DEFAULT NULL,
  `NumQuartos` int(11) DEFAULT NULL,
  `Descriçao` text,
  `Tarefas` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `universidade`
--

CREATE TABLE `universidade` (
  `Codigo` bigint(20) NOT NULL,
  `Nome` int(11) NOT NULL,
  `Sigla` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Rua` varchar(30) NOT NULL,
  `Bairo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodTipo`),
  ADD KEY `Estrangeira2` (`CodCurso`);

--
-- Indexes for table `alunodisciplina`
--
ALTER TABLE `alunodisciplina`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodAluno`),
  ADD KEY `Estrangeira2` (`CodDisciplina`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodPredio`),
  ADD KEY `Estrangeira2` (`CodChefe`);

--
-- Indexes for table `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodCurso`),
  ADD KEY `Estrangeira2` (`CodDisciplina`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodProfessor`);

--
-- Indexes for table `predio`
--
ALTER TABLE `predio`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Estrangeira` (`CodTipoPredio`),
  ADD KEY `Estrangeira2` (`CodUniversidade`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `tipoaluno`
--
ALTER TABLE `tipoaluno`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `tipopredio`
--
ALTER TABLE `tipopredio`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `universidade`
--
ALTER TABLE `universidade`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alunodisciplina`
--
ALTER TABLE `alunodisciplina`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `predio`
--
ALTER TABLE `predio`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipoaluno`
--
ALTER TABLE `tipoaluno`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipopredio`
--
ALTER TABLE `tipopredio`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universidade`
--
ALTER TABLE `universidade`
  MODIFY `Codigo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`CodCurso`) REFERENCES `curso` (`Codigo`),
  ADD CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`CodTipo`) REFERENCES `tipoaluno` (`Codigo`);

--
-- Limitadores para a tabela `alunodisciplina`
--
ALTER TABLE `alunodisciplina`
  ADD CONSTRAINT `alunodisciplina_ibfk_1` FOREIGN KEY (`CodAluno`) REFERENCES `aluno` (`Codigo`),
  ADD CONSTRAINT `alunodisciplina_ibfk_2` FOREIGN KEY (`CodDisciplina`) REFERENCES `disciplina` (`Codigo`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`CodChefe`) REFERENCES `professor` (`Codigo`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`CodPredio`) REFERENCES `predio` (`Codigo`);

--
-- Limitadores para a tabela `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  ADD CONSTRAINT `cursodisciplina_ibfk_1` FOREIGN KEY (`CodCurso`) REFERENCES `curso` (`Codigo`),
  ADD CONSTRAINT `cursodisciplina_ibfk_2` FOREIGN KEY (`CodDisciplina`) REFERENCES `disciplina` (`Codigo`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`CodProfessor`) REFERENCES `professor` (`Codigo`);

--
-- Limitadores para a tabela `predio`
--
ALTER TABLE `predio`
  ADD CONSTRAINT `predio_ibfk_1` FOREIGN KEY (`CodUniversidade`) REFERENCES `universidade` (`Codigo`),
  ADD CONSTRAINT `predio_ibfk_2` FOREIGN KEY (`CodTipoPredio`) REFERENCES `tipopredio` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
