-- 1 - Nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 - Nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- 3 - Filme 'De Volta para o Futuro': nome, ano e a duracao
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 - Filmes lancados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5 - Filmes lancados apos o ano 2000
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6 - Filmes com duracao maior que 100 e menor que 150,
-- ordenado pela duracao em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 - Quantidade de filmes lancadas no ano, agrupando por ano,
-- ordenado pela duracao em ordem decrescente
SELECT
	Ano,
	COUNT(1) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Atores do genero masculino: PrimeiroNome, UltimoNome
SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- 9 - Atores do genero feminino: PrimeiroNome, UltimoNome,
-- ordenado pelo PrimeiroNome
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Nomes dos filmes e o genero
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11 - Nome do filme e o genero do tipo "Mistério"
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- 12 - Nome do filme e os atores: PrimeiroNome, UltimoNome e Papel
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
