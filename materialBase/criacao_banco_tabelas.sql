/*CREATE DATABASE PROJETO_MOD2;*/

USE PROJETO_MOD2;

CREATE TABLE `episodios` (
  `episodios_id` int PRIMARY KEY AUTO_INCREMENT,
  `temporada` int,
  `episodio` int,
  `titulo` varchar(100),
  `classificacao` numeric(3,1),
  `escritor_1` varchar(100),
  `escritor_2` varchar(100),
  `principal_1` int,
  `principal_2` int,
  `principal_3` int,
  `review_usuario` int,
  `review_critica` int,
  `audiencia` numeric(5,2),
  `duracao` int,
  `diretor` varchar(100)
);

CREATE TABLE `personagens` (
  `personagens_id` int PRIMARY KEY AUTO_INCREMENT,
  `personagem` varchar(100),
  `ator` varchar(100),
  `aparicao_episodios` int,
  `primeira_aparicao` int,
  `ultima_aparicao` int
);

CREATE TABLE `episodios_personagens` (
  `episodios_id` int,
  `personagens_id` int
);

ALTER TABLE `episodios_personagens` ADD FOREIGN KEY (`episodios_id`) REFERENCES `episodios` (`episodios_id`);

ALTER TABLE `episodios_personagens` ADD FOREIGN KEY (`personagens_id`) REFERENCES `personagens` (`personagens_id`);