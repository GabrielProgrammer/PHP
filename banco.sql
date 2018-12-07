-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2018 at 03:06 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `cod_aluno` varchar(10) DEFAULT NULL,
  `matricula` decimal(10,0) DEFAULT NULL,
  `boletim` varchar(200) DEFAULT NULL,
  `cod_projeto` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `nome` varchar(20) NOT NULL,
  `doacao` varchar(20) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `endereco`
--

CREATE TABLE `endereco` (
  `tipo-logadouro` varchar(20) DEFAULT NULL,
  `logadouro` longtext,
  `numero` decimal(5,0) DEFAULT NULL,
  `complemento` longtext,
  `bairro` longtext,
  `cidade` longtext,
  `cod_tel` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `escola`
--

CREATE TABLE `escola` (
  `cod_escola` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome_escola` longtext,
  `turmas` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `cod_post` varchar(10) NOT NULL,
  `tipo_foto` longblob,
  `tipo_text` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projeto`
--

CREATE TABLE `projeto` (
  `cod_proj` varchar(10) NOT NULL,
  `tipo_tec` varchar(1) DEFAULT NULL,
  `tipo_hum` varchar(1) DEFAULT NULL,
  `tipo_amb` varchar(1) DEFAULT NULL,
  `qtd_precisa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `telefone`
--

CREATE TABLE `telefone` (
  `ddd` decimal(2,0) DEFAULT NULL,
  `numero` decimal(9,0) DEFAULT NULL,
  `cod_telefone` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(8) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`email`, `senha`, `cidade`, `nome`, `iduser`, `username`) VALUES
('FKJDKD@GMAIL.COM', '123123', 'IFF', 'NDFKJNFJNF', 1, ''),
('dffggg@gmail.com', '123123', 'quissa', 'yhjjgh', 2, ''),
('Cadastro@gmail.com', '123123', 'quissa', 'Cadastro', 3, ''),
('funcionadisgraÃ§a@gmail.com', '1231231', 'quissama', 'kndckjdsnc', 15, ''),
('neinnein@gmail.com', '123123', 'quissama', 'nada', 14, ''),
('esrt', '123', 'dfdfrg', 'sdf', 16, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cod_tel`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`cod_escola`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`cod_post`);

--
-- Indexes for table `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`cod_proj`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`cod_telefone`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
