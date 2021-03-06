-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 08:02 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('jogador1@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '20221-06-03 16:56:00'),
('gustavo@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('thalia@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('rafaela@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Personal Home Page', '5b141d71485b9'),
('5b141d712647f', 'Private Home Page', '5b141d71485dc'),
('5b141d712647f', 'Pretext Hypertext Processor', '5b141d71485e0'),
('5b141d712647f', 'Preprocessor Home Page', '5b141d71485e4'),
('5b141d718f873', 'Rasmus Lerdorf', '5b141d71978be'),
('5b141d718f873', 'Willam Makepiece', '5b141d71978cc'),
('5b141d718f873', 'Drek Kolkevi', '5b141d71978d1'),
('5b141d718f873', 'List Barely', '5b141d71978d4'),
('5b141d71ddb46', '.html', '5b141d71e5f2b'),
('5b141d71ddb46', '.ph', '5b141d71e5f3c'),
('5b141d71ddb46', '.php', '5b141d71e5f43'),
('5b141d71ddb46', '.xml', '5b141d71e5f48'),
('5b141d721a738', 'for loop', '5b141d7222820'),
('5b141d721a738', 'do-while loop', '5b141d722282f'),
('5b141d721a738', 'foreach loop', '5b141d7222880'),
('5b141d721a738', 'All of the above', '5b141d7222884'),
('5b141d7260b7d', 'echo (???????Hello World???????);', '5b141d7268b8a'),
('5b141d7260b7d', 'print (???????Hello World???????);', '5b141d7268b95'),
('5b141d7260b7d', 'printf (???????Hello World???????);', '5b141d7268b98'),
('5b141d7260b7d', 'All of the above', '5b141d7268b9a'),
('5b141d72a6fa1', 'file()', '5b141d72aefcb'),
('5b141d72a6fa1', 'arr_file()', '5b141d72aefd8'),
('5b141d72a6fa1', 'arrfile()', '5b141d72aefdc'),
('5b141d72a6fa1', 'file_arr()', '5b141d72aefe0'),
('5b141d72d7a1c', 'Magic Function', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Inbuilt Function', '5b141d72dfa85'),
('5b141d72d7a1c', 'Default Function', '5b141d72dfa88'),
('5b141d72d7a1c', 'User Defined Function', '5b141d72dfa8b'),
('5b141d731429b', 'CREATE TABLE table_name (column_name column_type);', '5b141d731c234'),
('5b141d731429b', 'CREATE table_name (column_type column_name);', '5b141d731c242'),
('5b141d731429b', 'CREATE table_name (column_name column_type);', '5b141d731c248'),
('5b141d731429b', 'CREATE TABLE table_name (column_type column_name);', '5b141d731c24b'),
('5b141d7345176', 'get_array() and get_row()', '5b141d734cd10'),
('5b141d7345176', 'fetch_array() and fetch_row()', '5b141d734cd1b'),
('5b141d7345176', 'get_array() and get_column()', '5b141d734cd1d'),
('5b141d7345176', 'fetch_array() and fetch_column()', '5b141d734cd20'),
('5b141d737ddfc', 'explode()', '5b141d73858d0'),
('5b141d737ddfc', 'implode()', '5b141d73858df'),
('5b141d737ddfc', 'concat()', '5b141d73858e3'),
('5b141d737ddfc', 'concatenate()', '5b141d73858e8'),
('5b1422651fdde', 'Legenda', '5b1422654ab3a'),
('5b1422651fdde', 'Conto', '5b1422654ab48'),
('5b1422651fdde', 'Hist??ria', '5b1422654ab4d'),
('5b1422651fdde', 'Lenda', '5b1422654ab51'),
('5b14226574ed5', '8', '5b1422657d052'),
('5b14226574ed5', '10', '5b1422657d05f'),
('5b14226574ed5', '7', '5b1422657d064'),
('5b14226574ed5', '9', '5b1422657d069'),
('5b142265b5d08', 'Miguel de Cervantes, Greg??rio de Matos e Danthe Alighieri', '5b142265c09e3'),
('5b142265b5d08', 'Greg??rio de Matos, Bento Teixeira e Manuel Botelho de Oliveira', '5b142265c09f5'),
('5b142265b5d08', 'Padre Ant??nio Vieira, Padre Manuel de Melo e Greg??rio de Matos', '5b142265c09fa'),
('5b142265b5d08', 'Castro Alves, Bento Teixeira e Manuel Botelho de Oliveira', '5b142265c09ff'),
('5b1422661d93f', 'Independ??ncia do Brasil e Dia da Bandeira', '5b14226635df5'),
('5b1422661d93f', 'Dia de Finados e Dia Nacional do Livro', '5b14226635e04'),
('5b1422661d93f', 'Dia do M??dico e Dia de S??o Lucas', '5b14226635e09'),
('5b1422661d93f', 'Proclama????o da Rep??blica e Dia Nacional da Consci??ncia Negra', '5b14226635e0d'),
('5b14226663cf4', ' Pablo Picasso', '5b1422666bf2b'),
('5b14226663cf4', 'Paul C??zanne', '5b1422666bf39'),
('5b14226663cf4', 'Diego Rivera', '5b1422666bf3e'),
('5b14226663cf4', 'Tarsila do Amaral', '5b1422666bf42'),
('5b1422669481b', '12 minutos', '5b1422669c8dc'),
('5b1422669481b', '8 minutos', '5b1422669c8ea'),
('5b1422669481b', '12 horas', '5b1422669c8ef'),
('5b1422669481b', '5 segundos', '5b1422669c8f3'),
('5b142266c525c', 'Fabiano coseu seu palet?? antes de sair', '5b142266cd353'),
('5b142266c525c', 'Fabiano fechou o saco antes de sair', '5b142266cd361'),
('5b142266c525c', 'Fabiano cortou o saco antes de cair', '5b142266cd365'),
('5b142266c525c', 'Fabiano pegou seu palet?? antes de sair', '5b142266cd369'),
('5b14226711d91', 'Boliviana', '5b14226719fa0'),
('5b14226711d91', 'Argentina', '5b14226719fb1'),
('5b14226711d91', 'Panamenha', '5b14226719fb7'),
('5b14226711d91', 'Cubana', '5b14226719fbb'),
('5b1422674286d', 'Hiena, urso branco e lobo cinzento', '5b1422674a9ee'),
('5b1422674286d', 'Tubar??o branco, crocodilo e sucuri', '5b1422674aa01'),
('5b1422674286d', 'Tigre, gavi??o e orca', '5b1422674aa06'),
('5b1422674286d', 'Orca, on??a e tar??ntula', '5b1422674aa0b'),
('5b1422677371f', '2,4 para ambos', '5b1422677b3e9'),
('5b1422677371f', '2,5 m e 2,0 m', '5b1422677b3f7'),
('5b1422677371f', ' 2,43 m e 2,24 m', '5b1422677b3fc'),
('5b1422677371f', '1,8 m e 1,5 m', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'Normalmente, quantos litros de sangue uma pessoa tem? Em m??dia, quantos s??o retirados numa doa????o de sangue?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'De quem ?? a famosa frase ???Penso, logo existo?????', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'De onde ?? a inven????o do chuveiro el??trico?', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Quais o menor e o maior pa??s do mundo?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Qual o nome do presidente do Brasil que ficou conhecido como Jango?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Qual o grupo em que todas as palavras foram escritas corretamente?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'Qual o livro mais vendido no mundo a seguir ?? B??blia?', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Quantas casas decimais tem o n??mero pi?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Atualmente, quantos elementos qu??micos a tabela peri??dica possui?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Quais os pa??ses que t??m a maior e a menor expectativa de vida do mundo?', 4, 10),


('5b141f1e8399e', '5b1422651fdde', 'O que a palavra legend significa em portugu??s?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Qual o n??mero m??nimo de jogadores numa partida de futebol?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Quais os principais autores do Barroco no Brasil?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Quais as duas datas que s??o comemoradas em novembro?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'Quem pintou "Guernica"?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Quanto tempo a luz do Sol demora para chegar ?? Terra?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'Qual a tradu????o da frase ???Fabiano cogi?? su saco antes de salir????', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'Qual a nacionalidade de Che Guevara?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'Quais s??o os tr??s predadores do reino animal reconhecidos pela habilidade de ca??ar em grupo, se camuflar para surpreender as presas e possuir sentidos apurados, respectivamente:', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'Qual a altura da rede de v??lei nos jogos masculino e feminino?', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Perguntas Gerais', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'Perguntas gerais', 3, 1, 10, '2018-06-03 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('gustavo@gmail.com', 30, '2018-06-03 16:57:45'),
('thalia@gmail.com', 22, '2018-06-03 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Gustavo', 'IFC', 'gustavo@gmail.com', '12345'),
('Thalia', 'AM', 'thalia@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
