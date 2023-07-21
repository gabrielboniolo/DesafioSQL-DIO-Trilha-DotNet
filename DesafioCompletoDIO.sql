-- DESAFIO #1:
SELECT Nome, Ano FROM Filmes

-- DESAFIO #2:
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- DESAFIO #3:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- DESAFIO #4:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- DESAFIO #5:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- DESAFIO #6:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150

-- DESAFIO #7:
SELECT Ano, COUNT(*) QtdFilmes FROM Filmes
GROUP BY Ano
ORDER BY QtdFilmes DESC

-- DESAFIO #8:
SELECT PrimeiroNome AS Nome, UltimoNome AS Sobrenome FROM Atores
WHERE Genero = 'M'

-- DESAFIO #9:
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- DESAFIO #10:
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- DESAFIO #11:
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- DESAFIO #12:
SELECT Filmes.Nome AS Filme, 
Atores.PrimeiroNome AS Nome,
Atores.UltimoNome AS Sobrenome,
ElencoFilme.Papel AS Papel 
FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

