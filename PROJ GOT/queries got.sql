USE proj_mod2_got;

-- Comparação da duração de cada temporada em relação à classificação de cada temporada, mostra que enquanto a duração caia, a clasificação também
SELECT temporada, SUM(duracao), SUM(classificacao)
FROM episodios
GROUP BY temporada;

-- Ao mesmo tempo, enquanto a qualidade da série caia, mais audiência ganhava
SELECT temporada, SUM(audiencia)
FROM episodios
GROUP BY temporada;

-- Os 10 episódios com piores classificações estão na maior parte na última temporada (colocar porcentagem)
SELECT temporada, classificacao
FROM episodios
ORDER BY classificacao ASC
LIMIT 10;

-- Os 10 episódios com melhores classificações estão distribuídos, em sua maioria, até a sexta temporada
SELECT temporada, classificacao
FROM episodios
ORDER BY classificacao DESC
LIMIT 10;

