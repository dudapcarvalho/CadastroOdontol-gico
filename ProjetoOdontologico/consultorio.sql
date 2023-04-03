-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 04-Jan-2023 às 18:35
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `consultorio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
CREATE TABLE IF NOT EXISTS `agendamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int NOT NULL,
  `id_dentista` int NOT NULL,
  `data_hora` varchar(60) NOT NULL,
  `procedimento` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id`, `id_paciente`, `id_dentista`, `data_hora`, `procedimento`) VALUES
(4, 20, 4, '2023-01-05T16:20', 'CLINICO_GERAL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dentista`
--

DROP TABLE IF EXISTS `dentista`;
CREATE TABLE IF NOT EXISTS `dentista` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(140) NOT NULL,
  `cro` varchar(14) NOT NULL,
  `email` varchar(140) NOT NULL,
  `celular` varchar(14) NOT NULL,
  `especialidade` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `dentista`
--

INSERT INTO `dentista` (`id`, `nome`, `cro`, `email`, `celular`, `especialidade`) VALUES
(5, '', '', '', '', 'AVALIACAO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(140) NOT NULL,
  `data_nasc` varchar(14) NOT NULL,
  `nome_pai` varchar(140) NOT NULL,
  `nome_mae` varchar(140) NOT NULL,
  `sexo` varchar(14) NOT NULL,
  `estado_civil` varchar(140) NOT NULL,
  `cidade` varchar(140) NOT NULL,
  `estado` varchar(14) NOT NULL,
  `endereco` varchar(140) NOT NULL,
  `bairro` varchar(140) NOT NULL,
  `cep` varchar(14) NOT NULL,
  `celular` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='pacientes';

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nasc`, `nome_pai`, `nome_mae`, `sexo`, `estado_civil`, `cidade`, `estado`, `endereco`, `bairro`, `cep`, `celular`, `email`, `cpf`) VALUES
(20, 'Eduarda Pereira', '2002-11-09', 'Clayton Carvalho', 'Cida Caixeta', 'F', 'SO', 'Luziânia', 'GO', 'Rua Peroba', 'Dalva 5', '72806090', '61995960237', '911eduardapereira@gmail.com', '08106133109');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
