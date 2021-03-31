-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 13/03/2019 às 15:05
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `Aula1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Produto`
--

CREATE TABLE IF NOT EXISTS `Produto` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Estoque` double NOT NULL,
  `Validade` date NOT NULL,
  `CodFor` bigint(20) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodFor` (`CodFor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `Produto`
--

INSERT INTO `Produto` (`Codigo`, `Nome`, `Estoque`, `Validade`, `CodFor`) VALUES
(1, 'Coca 350 ml', 3, '2019-05-31', 1);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `Produto`
--
ALTER TABLE `Produto`
  ADD CONSTRAINT `Produto_ibfk_1` FOREIGN KEY (`CodFor`) REFERENCES `Fornecedor` (`Codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
