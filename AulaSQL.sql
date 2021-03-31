-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 27/03/2019 às 15:00
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `AulaSQL`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Fornecedor`
--

CREATE TABLE IF NOT EXISTS `Fornecedor` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `Fornecedor`
--

INSERT INTO `Fornecedor` (`Codigo`, `Nome`, `Email`) VALUES
(1, 'Coca Cola Company', 'coca@cocacola.com'),
(3, 'Guarapan', 'guarapan@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Produto`
--

CREATE TABLE IF NOT EXISTS `Produto` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Preco` float NOT NULL,
  `Estoque` int(11) NOT NULL,
  `Validade` date NOT NULL,
  `CodFornecedor` bigint(20) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodFornecedor` (`CodFornecedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Fazendo dump de dados para tabela `Produto`
--

INSERT INTO `Produto` (`Codigo`, `Nome`, `Preco`, `Estoque`, `Validade`, `CodFornecedor`) VALUES
(1, 'Coca 220', 1.6, 800, '2031-10-19', 1),
(2, 'Pepsi 2L', 4, 40, '2020-04-07', 2),
(4, 'Guarapan 2L', 4, 50, '2024-02-25', 3),
(5, 'Guarapan 1L', 3, 38, '2017-05-10', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ProdutoVenda`
--

CREATE TABLE IF NOT EXISTS `ProdutoVenda` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `CodVenda` bigint(20) NOT NULL,
  `CodProduto` bigint(20) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodVenda` (`CodVenda`,`CodProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Venda`
--

CREATE TABLE IF NOT EXISTS `Venda` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Data` date NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
