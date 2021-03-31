-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 17-Maio-2019 às 14:27
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `Loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Produto`
--

CREATE TABLE IF NOT EXISTS `Produto` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Preco` double NOT NULL,
  `Estoque` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Validade` date NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `Produto`
--

INSERT INTO `Produto` (`Codigo`, `Preco`, `Estoque`, `Nome`, `Validade`) VALUES
(1, 2.9, 300, 'lapis', '2017-06-12'),
(2, 2, 400, 'borracha', '2017-06-12'),
(4, 2, 300, 'Caneta', '2017-06-12'),
(5, 10.9, 500, 'papel', '2017-06-12'),
(7, 9.9, 300, 'apontador', '2017-06-12'),
(9, 2.9, 500, 'cartolina', '2017-06-12'),
(10, 10.9, 500, 'feijao', '2017-06-12'),
(11, 6.87, 122, 'maionese', '2017-06-12'),
(13, 875, 200, 'Primer', '2017-06-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Venda`
--

CREATE TABLE IF NOT EXISTS `Venda` (
  `Codigo` int(11) NOT NULL,
  `Vendedor` varchar(255) NOT NULL DEFAULT 'nenhum vendedor',
  `Data` date NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Venda`
--

INSERT INTO `Venda` (`Codigo`, `Vendedor`, `Data`) VALUES
(0, 'Lucas', '2016-11-22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `VendaProduto`
--

CREATE TABLE IF NOT EXISTS `VendaProduto` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `CodVenda` int(11) NOT NULL,
  `CodProdudo` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodVenda` (`CodVenda`,`CodProdudo`),
  KEY `CodProdudo` (`CodProdudo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `VendaProduto`
--
ALTER TABLE `VendaProduto`
  ADD CONSTRAINT `VendaProduto_ibfk_1` FOREIGN KEY (`CodVenda`) REFERENCES `Venda` (`Codigo`),
  ADD CONSTRAINT `VendaProduto_ibfk_2` FOREIGN KEY (`CodProdudo`) REFERENCES `Produto` (`Codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
