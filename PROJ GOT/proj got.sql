CREATE DATABASE proj_mod2_got;
USE proj_mod2_got;

CREATE TABLE `episodios` (
  `episodios_id` int PRIMARY KEY AUTO_INCREMENT,
  `temporada` int,
  `episodio` int,
  `classificacao` numeric(3,1),
  `escritor_1` varchar(100),
  `escritor_2` varchar(100),
  `principal_1` varchar(100),
  `principal_2` varchar(100),
  `principal_3` varchar(100),
  `review_usuario` int,
  `review_critica` int,
  `audiencia` numeric(5,2),
  `duracao` int
);

CREATE TABLE `personagens` (
  `personagens_id` int PRIMARY KEY AUTO_INCREMENT,
  `personagem` varchar(100),
  `ator` varchar(100),
  `aparicao_episodios` int
);

CREATE TABLE `episodios_personagens` (
  `episodios_id` int,
  `personagens_id` int
);

ALTER TABLE `episodios_personagens` ADD FOREIGN KEY (`episodios_id`) REFERENCES `episodios` (`episodios_id`);

ALTER TABLE `episodios_personagens` ADD FOREIGN KEY (`personagens_id`) REFERENCES `personagens` (`personagens_id`);

SELECT * FROM personagens;
SELECT * FROM episodios;