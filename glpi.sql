-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Mar-2022 às 22:39
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `glpi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
CREATE TABLE IF NOT EXISTS `atendimento` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `chamado` varchar(20) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`ID`, `chamado`, `titulo`, `data`, `descricao`, `responsavel`) VALUES
(6, '2113001686', 'Defeito na pasta Expediente do PJe', '2022-02-03', ' Defeito na pasta Expediente do PJe\r\n\r\n1 - Vem ocorrendo defeito na sessão expediente, pois aparece informações sobre o expediente mas não aparece na aba para que você possa visualizar e clicar no botão vermelho para dar ciência.\r\n\r\n2 - Sem prazo por exemplo aparece que há 1 processo par responder, mas não há como, pois não aparece o ícone de resposta.\r\n\r\n3 - Na aba pendente de ciência ou de resposta - Comarca Campo Maior verifica-se que há dois expedientes, mas não tem como visualizar para dar ciência. \r\n\r\n4 - Segue imagem para análise.\r\n\r\n\r\n\r\n\r\n\r\n', 'Wilker'),
(7, '2113002018', 'Enviar para conclusão\", mas não aparece a tarefa', '2022-02-03', 'Tarefa (se PJe): \"Enviar para conclusão\", mas não aparece a tarefa\r\n\r\nMensagem de erro: Só aparece \"Tarefas pendentes do processo 0800224-71.2021.8.18.0104\", mas não aparece a tarefa. \r\n\r\nAdicione a descrição do problema abaixo:\r\n\r\nSó aparece \"Tarefas pendentes do processo 0800224-71.2021.8.18.0104\", mas não aparece a tarefa. \r\n\r\nCaptura de tela, colocar em anexo.\r\n\r\n', 'wilker'),
(8, '2113001916', 'TAREFA PENDENTES DO PROCESSO', '2022-02-03', 'Tarefa pendente\r\n\r\nSeguem dados mínimos para abertura do chamado. Caso o sistema em questão, apresente algum dos dados solicitados, favor informar:\r\n\r\nTelefones para contato:89999886012\r\n\r\nNúmero do processo: 0801007-16.2021.8.18.0152\r\n\r\nTarefa (se PJe):TAREFA PENDENTES DO PROCESSO\r\n\r\nMensagem de erro: TAREFA PENDENTES DO PROCESSO\r\n\r\nAdicione a descrição do problema abaixo:', 'Wilker'),
(10, '2113001797', 'AUDIÊNCIAS DIGITAIS - PJE MIDIAS', '2022-02-05', 'Seguem dados mínimos para abertura do chamado. Caso o sistema em questão, apresente algum dos dados solicitados, favor informar:\r\n\r\nTelefones para contato: 31 99866-1892\r\n\r\nNúmero do processo:\r\n\r\nTarefa (se PJe): AUDIÊNCIA DIGITAIS - PJE MIDIAS\r\n\r\nMensagem de erro: NÃO ABRE NO MEU NOOTBOOK\r\n\r\nAdicione a descrição do problema abaixo:\r\n\r\nBAIXEI O SISTEMA DE AUDIÊNCIA DIGITAIS/PJE MIDIAS NO MEU PC E ELE NÃO ABRE QDO CLICO.\r\n\r\nBAIXEI TBM O JAVA SOLICITADO, LIMPEI A MEMORIA DELE, LIGUEI, REINICEI E NADA. PRECISO DA AJUDA DE VCS.\r\n\r\n\r\n\r\nNÃO TEM FOTO DISSO.\r\n\r\n\r\n\r\nATENCIOSAMENTE,\r\n\r\nMONICA RESENDE\r\n\r\nCaptura de tela, colocar em anexo.\r\n\r\n\r\nOBS:\r\n\r\nO chamado deve ser acompanhado diariamente pelo requerente, acessando o GLPI ou pelo email, pois dados adicionais podem ser requeridos;\r\nApós 5 dias sem resposta chamado fechado.', 'Wilker'),
(11, '2113002169', 'Processo não aparece em nenhuma Tarefa', '2022-02-07', 'Requerente: Manuela Lima de Jesus\r\n\r\nTelefone: 8699921-1310\r\n\r\nDescrição: o processo 0800135-35.2021.8.18.0076 não está aparecendo em nenhuma tarefa e quero fazer o mesmo concluso, quando aparece é na caixa aguarda audiência e quando retiro desta caixa o mesmo some e não consigo fazer concluso.', 'Wilker'),
(12, '2113002177', 'Processo não aparece em nenhuma Tarefa para expedir ofício', '2022-02-07', 'Requerente: Manuela Lima de Jesus\r\n\r\nTelefone: 8699921-1310\r\n\r\nDescrição: o processo 0801220-90.2020.8.18.0076 não aparece em nenhuma tarefa para expedição de ofício quando aparece é na caixa analisa manifestação parcial e quando movimento o mesmo nesta caixa ele desaparece.', 'Wilker'),
(13, '2113002275', 'Francisco Arcanjo Filho	', '2022-02-07', 'Seguem dados mínimos para abertura do chamado. Caso o sistema em questão, apresente algum dos dados solicitados, favor informar:\r\n\r\nTelefones para contato:86 9 99892068\r\n\r\nNúmero do processo: 08011323920218180069\r\n\r\nTarefa (se PJe):\r\n\r\nMensagem de erro: processo redistribuido para Amarante, já foi movimentado em Amarante e agora não aparece a tarefa a ser realizada, nem sequer conseguimos consultar o mesmo\r\n\r\nAdicione a descrição do problema abaixo:\r\n\r\n \r\nCaptura de tela, colocar em anexo.\r\n\r\nOBS:\r\n\r\nO chamado deve ser acompanhado diariamente pelo requerente, acessando o GLPI ou pelo email, pois dados adicionais podem ser requeridos;\r\nApós 5 dias sem resposta chamado fechado.', 'Wilker'),
(14, '2113003852', 'A ASSINATURA DIGITAL NÃO ESTÁ FUNCIONANDO', '2022-02-22', 'Seguem dados mínimos para abertura do chamado. Caso o sistema em questão, apresente algum dos dados solicitados, favor informar:\r\n\r\nTelefones para contato: 86 9 98048649\r\n\r\nNúmero do processo: 0831504-49.2021.8.18.0140\r\n\r\nTarefa (se PJe): Audiência realizada sem sentença\r\n\r\nMensagem de erro: \"Algum dos documentos não foi assinado ou quantidade de assinatura não confere!\"\r\n\r\nAdicione a descrição do problema abaixo:\r\n\r\nTentei inserir uma certidão no processo várias vezes, mas não consigo assinar com meu token.\r\n\r\nCaptura de tela, colocar em anexo.', ' Yane Lima Dias'),
(15, '2113004234', 'PJE SEM ACESSO', '2022-02-25', 'PJE SEM ACESSO\r\n\r\nRequerente: MARIA DO SOCORRO MIRANDA LOPES\r\n\r\nTelefone: (86) 999516894\r\n\r\nDescrição: EU NÃO ESTOU CONSEGUINDO ACESSAR O PJE.', 'Maria do Socorro'),
(16, '2203100029', 'não esta abrindo o painel do usuario do PJE', '2022-03-14', 'não esta abrindo o painel do usuario do PJE\r\n\r\nRequerente:victor parentes dourado santos\r\n\r\nTelefone: 86-99801-6162\r\n\r\nDescrição:  não esta abrindo o painel do usuário do PJe\r\n', 'Victor Parentes ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
