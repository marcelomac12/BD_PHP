-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 03/04/2019 às 14:41
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `AulaJoin`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Departamento`
--

CREATE TABLE IF NOT EXISTS `Departamento` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Sala` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `Departamento`
--

INSERT INTO `Departamento` (`Codigo`, `Nome`, `Sala`) VALUES
(1, 'Mecatronica', 1),
(2, 'Telecom', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Dependente`
--

CREATE TABLE IF NOT EXISTS `Dependente` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Nascimento` date NOT NULL,
  `Empregado_Matricula` bigint(20) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Empregado_Matricula` (`Empregado_Matricula`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `Dependente`
--

INSERT INTO `Dependente` (`Codigo`, `Nome`, `Nascimento`, `Empregado_Matricula`) VALUES
(1, 'José', '2031-03-10', 1),
(2, 'Maria', '2021-02-11', 2),
(3, 'Mane', '2011-05-18', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Empregado`
--

CREATE TABLE IF NOT EXISTS `Empregado` (
  `Matricula` bigint(20) NOT NULL AUTO_INCREMENT,
  `Telefone` varchar(15) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Salario` float NOT NULL,
  `Departamento_Codigo` bigint(20) NOT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `Departamento_Codigo` (`Departamento_Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `Empregado`
--

INSERT INTO `Empregado` (`Matricula`, `Telefone`, `Nome`, `Salario`, `Departamento_Codigo`) VALUES
(1, '', 'Rone', 12345, 1),
(2, '', 'Teixeira', 12354, 2),
(3, '', 'Leandro', 13245, 1),
(4, '', 'Ramom', 12564, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
