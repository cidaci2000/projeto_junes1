-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2023 às 02:00
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `junes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `data_evento` date NOT NULL,
  `horario_evento` time NOT NULL,
  `data_retirada` date DEFAULT NULL,
  `horario_retirada` time DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `horario_devolucao` time DEFAULT NULL,
  `atendente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `nome`, `email`, `telefone`, `data_evento`, `horario_evento`, `data_retirada`, `horario_retirada`, `data_devolucao`, `horario_devolucao`, `atendente`) VALUES
(1, 'PATI', 'aparecida@gmail.com', '455555', '2023-11-08', '00:00:00', '2023-11-26', '00:00:00', '2023-11-27', '00:00:00', ''),
(10, 'João da Silva', 'joao.silva@email.com', '(11) 99999-9999', '2023-12-25', '18:00:00', '2023-12-24', '10:00:00', '2023-12-26', '18:00:00', 'Maria do Carmo'),
(11, 'BATOM', 'PATI@GMAIL', '4555', '2023-11-01', '21:55:00', '2023-11-09', '22:54:00', '2023-11-30', '20:57:00', 'nao sei'),
(12, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(13, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(14, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(15, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(16, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(17, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(18, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(19, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(20, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(21, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(22, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(23, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(24, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(25, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(26, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(27, 'Aparecida ferreira', 'cidaci2000@gmail.com', '4555555', '2023-11-02', '20:58:00', '2023-11-23', '20:01:00', '2023-11-16', '20:00:00', 'claudia'),
(28, 'ali', 'aparecida@gmail.com', '45555555555', '2023-11-09', '21:11:00', '2023-11-15', '00:10:00', '2023-11-06', '23:10:00', 'claudia'),
(29, 'ali', 'aparecida@gmail.com', '45555555555', '2023-11-09', '21:11:00', '2023-11-15', '00:10:00', '2023-11-06', '23:10:00', 'claudia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `tipo` enum('infantil','masculino') NOT NULL,
  `data_nascimento` date NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `senha`, `email`, `telefone`, `tipo`, `data_nascimento`, `cidade`, `estado`, `endereco`) VALUES
(2, 'junes4122222', 'junes@gmail.com', '123456', '45555', '', '2023-11-01', 'Cascavel', 'PR', ',455555'),
(3, 'PATI', 'lololo', 'PATI1@GMAIL.com', '45555555555', 'masculino', '2023-11-08', 'csc', 'csc', '45555'),
(5, 'APARECIDA DA SILVA FERREIRA', '123', 'junes@gmail.com', '455555', 'masculino', '2023-11-23', 'Cascavel', 'PR', ', 392'),
(6, 'meu123456', '123456', 'meudeus@meudeus', '455555', 'masculino', '2023-11-01', 'Cascavel', 'PR', '9587');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `funcao` enum('atendente','gerente','outro') NOT NULL,
  `data_nascimento` date NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `senha`, `email`, `telefone`, `funcao`, `data_nascimento`, `cidade`, `estado`, `endereco`) VALUES
(3, 'APARECIDA', 'meudeus@meudeus', '123456', '45', 'atendente', '2023-11-03', 'Cascavel', 'PR', ',12222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `conteudo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `quantidade`, `cor`, `categoria`) VALUES
(1, 'PATI', 20, 1, 'azul', ''),
(4, 'terno preto', 1000, 100, 'preta', ''),
(6, 'saia', 20, 50, 'verde limã', ''),
(7, 'blusa', 100, 4000, 'vermelha', ''),
(8, 'terno menta', 1500, 10, 'menta', 'masculino');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
