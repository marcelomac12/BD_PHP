-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 29-Maio-2019 às 14:47
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `TrabalhoBD`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Aluno`
--

CREATE TABLE IF NOT EXISTS `Aluno` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Curso` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Emprestimo`
--

CREATE TABLE IF NOT EXISTS `Emprestimo` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `CodAluno` bigint(20) NOT NULL,
  `CodUsuario` bigint(20) NOT NULL,
  `CodLivro` bigint(20) NOT NULL,
  `DataHora` date NOT NULL,
  `Devolvido` varchar(10) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodAluno` (`CodAluno`,`CodUsuario`,`CodLivro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Livro`
--

CREATE TABLE IF NOT EXISTS `Livro` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Edicao` varchar(10) NOT NULL,
  `Editora` varchar(20) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuario`
--

CREATE TABLE IF NOT EXISTS `Usuario` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Senha` bigint(20) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `Usuario`
--

INSERT INTO `Usuario` (`Codigo`, `Nome`, `Login`, `Senha`, `Telefone`) VALUES
(1, 'Homem de Letra', 'homemletra', 0, '31999999999'),
(2, 'moÃ§a da biblioteca', 'abc', 0, '31123456789');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
