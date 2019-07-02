-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 03-Jul-2019 às 01:00
-- Versão do servidor: 5.6.14
-- versão do PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `controle_manutencao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `quadro`
--

CREATE TABLE IF NOT EXISTS `quadro` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `local` varchar(20) DEFAULT NULL,
  `responsavel` varchar(25) DEFAULT NULL,
  `dt_inicio` varchar(10) DEFAULT NULL,
  `dt_fim` varchar(10) DEFAULT NULL,
  `observ` varchar(150) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Extraindo dados da tabela `quadro`
--

INSERT INTO `quadro` (`cod`, `descricao`, `status`, `local`, `responsavel`, `dt_inicio`, `dt_fim`, `observ`) VALUES
(6, 'arrumar tv', 'Agendado', '', '', '', '', ''),
(10, 'controle', 'Agendado', '789', 'luis', '', '', ''),
(11, 'arrumar tv', 'Agendado', '', '', '', '', ''),
(12, 'trocar lampada', 'Agendado', '', '', '', '', ''),
(13, 'controle', 'Agendado', '78945', 'luis', '', '', ''),
(14, 'controle', 'Agendado', '78945', 'luis', '', '', ''),
(15, 'controle', 'Agendado', '78945', 'luis', '', '', ''),
(16, 'controle', 'Agendado', '789', 'luis', '', '', ''),
(17, 'controle', 'Agendado', '789', 'luis', '', '', ''),
(18, 'controlen', 'Em andamento', '789', 'luisb', '', '', ''),
(19, 'controlen', 'Em andamento', '789', 'luisb', '', '', ''),
(20, 'controlen', 'Parado', '456', 'luisb', '', '', ''),
(21, 'vazamento', 'Em andamento', '456', 'Remilton', '', '', ''),
(22, 'vazamento', 'Em andamento', '456', 'Remilton', '', '', ''),
(23, 'controlen', 'Em andamento', '456', 'luisb', '', '', ''),
(24, 'controlen', 'Em andamento', '456', 'luisb', '', '', ''),
(25, 'controlen', 'Agendado', '8765', 'Lex', '', '', ''),
(26, 'controlen', 'Agendado', '8765', 'Lex', '', '', ''),
(27, 'controlen', 'Agendado', '8765', 'Lex2', '', '', ''),
(28, 'controlen', 'Agendado', '8765', 'Lex2', '', '', ''),
(29, 'controlen', 'Agendado', '8765', 'Lex2', '', '', ''),
(30, 'controlen', 'Agendado', '8765', 'Lex2', '', '', ''),
(31, 'Luz queimada', 'Agendado', '4568', 'Z', '2019-07-01', '2019-07-02', ''),
(32, 'Luz queimada', 'Agendado', '4568', 'Z', '2019-07-01', '2019-07-02', ''),
(33, 'iiii', 'Agendado', '456', 'bbb', '2019-07-01', '2019-07-01', ''),
(34, 'iiii', 'Agendado', '456', 'bbb', '2019-07-01', '2019-07-01', ''),
(35, 'iiii', 'Agendado', '456', 'bbb', '2019-07-01', '2019-07-01', 'vbnb'),
(36, 'iiii', 'Agendado', '456', 'bbb', '2019-07-01', '2019-07-01', 'vbnb'),
(37, 'iiii', 'Agendado', '456', 'bbb', '2019-07-01', '2019-07-01', 'vbnb'),
(38, 'iiii', 'Agendado', '456', 'bbb', '2019-07-01', '2019-07-01', 'vbnb'),
(39, 'controlen', 'Em andamento', '456', 'luisb', '2019-07-02', '2019-07-04', 'fghfgrty'),
(40, 'controlen', 'Em andamento', '456', 'luisb', '2019-07-02', '2019-07-04', 'fghfgrty');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
