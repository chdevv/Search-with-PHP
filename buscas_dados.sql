-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_busca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `buscas_dados`
--

CREATE TABLE `buscas_dados` (
  `id` int NOT NULL,
  `titulo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `buscas_dados`
--

INSERT INTO `buscas_dados` (`id`, `titulo`) VALUES
(1, 'Brasil'),
(2, 'Estados Unidos'),
(3, 'Canadá'),
(4, 'França'),
(5, 'Japão'),
(6, 'Reino Unido'),
(7, 'Índia'),
(8, 'Rússia'),
(9, 'Coreia do Sul'),
(10, 'México'),
(11, 'Espanha'),
(12, 'Argentina'),
(13, 'Indonésia'),
(14, 'África do Sul'),
(15, 'Nigéria'),
(16, 'Turquia'),
(17, 'Suécia'),
(18, 'Suíça'),
(19, 'Portugal'),
(20, 'Vietnã'),
(21, 'Egito');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `buscas_dados`
--
ALTER TABLE `buscas_dados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `buscas_dados`
--
ALTER TABLE `buscas_dados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
