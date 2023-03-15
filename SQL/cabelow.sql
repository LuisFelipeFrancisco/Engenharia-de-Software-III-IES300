-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_cabelow
DROP DATABASE IF EXISTS `db_cabelow`;
CREATE DATABASE IF NOT EXISTS `db_cabelow` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_cabelow`;

-- Copiando estrutura para tabela db_cabelow.tb_agendamento
DROP TABLE IF EXISTS `tb_agendamento`;
CREATE TABLE IF NOT EXISTS `tb_agendamento` (
  `id_agendamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_cliente` int(10) unsigned NOT NULL,
  `fk_funcionario` int(10) unsigned NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_agendamento`),
  KEY `fk_pessoas_agendamento` (`fk_cliente`),
  KEY `fk_funcionario_agendamentos` (`fk_funcionario`),
  CONSTRAINT `fk_funcionario_agendamentos` FOREIGN KEY (`fk_funcionario`) REFERENCES `tb_funcionarios` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoas_agendamento` FOREIGN KEY (`fk_cliente`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_agendamento: ~0 rows (aproximadamente)
DELETE FROM `tb_agendamento`;

-- Copiando estrutura para tabela db_cabelow.tb_contas_a_pagar
DROP TABLE IF EXISTS `tb_contas_a_pagar`;
CREATE TABLE IF NOT EXISTS `tb_contas_a_pagar` (
  `id_contas_a_pagar` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor` float NOT NULL,
  `comprovante` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_contas_a_pagar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_contas_a_pagar: ~0 rows (aproximadamente)
DELETE FROM `tb_contas_a_pagar`;

-- Copiando estrutura para tabela db_cabelow.tb_contas_a_receber
DROP TABLE IF EXISTS `tb_contas_a_receber`;
CREATE TABLE IF NOT EXISTS `tb_contas_a_receber` (
  `id_contas_a_receber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_cliente` int(10) unsigned NOT NULL,
  `data_prevista` date DEFAULT NULL,
  `data_recebimento` date NOT NULL,
  `valor` float NOT NULL DEFAULT 0,
  `fk_tipo_pagamento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_contas_a_receber`),
  KEY `fk_contas_receber_cliente` (`fk_cliente`),
  KEY `fk_contas_receber_tipo_pagamento` (`fk_tipo_pagamento`),
  CONSTRAINT `fk_contas_receber_cliente` FOREIGN KEY (`fk_cliente`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contas_receber_tipo_pagamento` FOREIGN KEY (`fk_tipo_pagamento`) REFERENCES `tb_tipo_pagamento` (`id_tipo_pagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_contas_a_receber: ~0 rows (aproximadamente)
DELETE FROM `tb_contas_a_receber`;

-- Copiando estrutura para tabela db_cabelow.tb_fornecedores
DROP TABLE IF EXISTS `tb_fornecedores`;
CREATE TABLE IF NOT EXISTS `tb_fornecedores` (
  `id_fornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(14) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(11) NOT NULL,
  `nome_representante` varchar(100) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_fornecedores: ~0 rows (aproximadamente)
DELETE FROM `tb_fornecedores`;

-- Copiando estrutura para tabela db_cabelow.tb_funcionarios
DROP TABLE IF EXISTS `tb_funcionarios`;
CREATE TABLE IF NOT EXISTS `tb_funcionarios` (
  `id_funcionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_pessoa` int(10) unsigned NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `cargo` tinyint(4) NOT NULL DEFAULT 1,
  `contratacao` date NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `fk_pessoa_funcionario` (`fk_pessoa`),
  CONSTRAINT `fk_pessoa_funcionario` FOREIGN KEY (`fk_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_funcionarios: ~0 rows (aproximadamente)
DELETE FROM `tb_funcionarios`;

-- Copiando estrutura para tabela db_cabelow.tb_pessoa
DROP TABLE IF EXISTS `tb_pessoa`;
CREATE TABLE IF NOT EXISTS `tb_pessoa` (
  `id_pessoa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cpf_cnpj` varchar(14) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `obs` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_pessoa: ~0 rows (aproximadamente)
DELETE FROM `tb_pessoa`;
INSERT INTO `tb_pessoa` (`id_pessoa`, `nome`, `email`, `celular`, `logradouro`, `numero`, `bairro`, `cpf_cnpj`, `nascimento`, `obs`) VALUES
	(1, 'Luis Felipe', 'email@email.com.br', '14999999999', 'rua um', '2', 'bairo tres', '44444444444', '1994-01-31', 'observaçao');

-- Copiando estrutura para tabela db_cabelow.tb_produtos
DROP TABLE IF EXISTS `tb_produtos`;
CREATE TABLE IF NOT EXISTS `tb_produtos` (
  `id_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_fornecedor` int(10) unsigned NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `ultimo_custo` float DEFAULT NULL,
  `estoque_minimo` int(11) NOT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `fk_produtos_fornecedores` (`fk_fornecedor`),
  CONSTRAINT `fk_produtos_fornecedores` FOREIGN KEY (`fk_fornecedor`) REFERENCES `tb_fornecedores` (`id_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_produtos: ~0 rows (aproximadamente)
DELETE FROM `tb_produtos`;

-- Copiando estrutura para tabela db_cabelow.tb_servicos
DROP TABLE IF EXISTS `tb_servicos`;
CREATE TABLE IF NOT EXISTS `tb_servicos` (
  `id_servico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `duracao` int(11) NOT NULL,
  `valor` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_servicos: ~0 rows (aproximadamente)
DELETE FROM `tb_servicos`;

-- Copiando estrutura para tabela db_cabelow.tb_servicos_agendamentos
DROP TABLE IF EXISTS `tb_servicos_agendamentos`;
CREATE TABLE IF NOT EXISTS `tb_servicos_agendamentos` (
  `id_servicos_agendados` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_servico` int(10) unsigned NOT NULL,
  `fk_agendamento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_servicos_agendados`),
  KEY `fk_servicos_agendados_agendamento` (`fk_agendamento`),
  KEY `fk_servios_agendados_servicos` (`fk_servico`),
  CONSTRAINT `fk_servicos_agendados_agendamento` FOREIGN KEY (`fk_agendamento`) REFERENCES `tb_agendamento` (`id_agendamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servios_agendados_servicos` FOREIGN KEY (`fk_servico`) REFERENCES `tb_servicos` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_servicos_agendamentos: ~0 rows (aproximadamente)
DELETE FROM `tb_servicos_agendamentos`;

-- Copiando estrutura para tabela db_cabelow.tb_tipo_pagamento
DROP TABLE IF EXISTS `tb_tipo_pagamento`;
CREATE TABLE IF NOT EXISTS `tb_tipo_pagamento` (
  `id_tipo_pagamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela db_cabelow.tb_tipo_pagamento: ~0 rows (aproximadamente)
DELETE FROM `tb_tipo_pagamento`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
