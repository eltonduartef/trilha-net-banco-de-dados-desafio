-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordações por pelo ano crescente
select Nome, Ano from filmes order by ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from filmes where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select * from filmes where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes where Duracao > 100 and Duracao < 150 order by Duracao asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, COUNT(*) as Quantidade from filmes group by ano order by Quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from atores where Genero = 'F' order by primeironome asc

-- 10 - Buscar o nome do filme e o gênero
select Nome, Genero from Filmes f, FilmesGenero fg, Generos g where g.Id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select Nome, Genero from Filmes f, FilmesGenero fg, Generos g where g.Id = fg.IdGenero and g.genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Nome, PrimeiroNome, UltimoNome, Papel from Filmes f, Atores a, ElencoFilme ef where a.Id = ef.IdAtor;