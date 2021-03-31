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
-- Estrutura para tabela `ProdutoVendido`
--

CREATE TABLE IF NOT EXISTS `ProdutoVendido` (
  `Codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `CodProduto` bigint(20) NOT NULL,
  `CodVenda` bigint(20) NOT NULL,
  `Quantidade` bigint(20) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodProduto` (`CodProduto`),
  KEY `CodVenda` (`CodVenda`),
  KEY `CodVenda_2` (`CodVenda`),
  KEY `CodVenda_3` (`CodVenda`),
  KEY `CodProduto_2` (`CodProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `ProdutoVendido`
--
ALTER TABLE `ProdutoVendido`
  ADD CONSTRAINT `ProdutoVendido_ibfk_2` FOREIGN KEY (`CodVenda`) REFERENCES `Venda` (`Codigo`),
  ADD CONSTRAINT `ProdutoVendido_ibfk_1` FOREIGN KEY (`CodProduto`) REFERENCES `Produto` (`Codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
