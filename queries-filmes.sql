--1
select Nome, Ano from Filmes
--2
select Nome, Ano, Duracao from filmes order by Ano Asc
--3
select Nome, Ano, Duracao from filmes where Nome like '%De volta%'
--4
select Nome, Ano, DUracao from filmes where Ano = 1997
--5
select Nome, Ano, Duracao from filmes where Ano >= 2000
--6
select Nome, Ano, Duracao from filmes where Duracao BETWEEN 101 and 149 order by Duracao asc
--7
select Ano, count(*) as Quantidade from Filmes group by Ano order by Quantidade desc
--8
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'
--9
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome
--10
select A.Nome, C.Genero 
from Filmes A
inner join FilmesGenero B on A.Id = B.IdFilme
inner join Generos C on B.IdGenero = C.Id
--11
select A.Nome, C.Genero
from Filmes A 
inner join FilmesGenero B on A.Id = B.IdFilme
inner join Generos C on B.IdGenero = C.Id
where C.Genero = 'Mistério'
--12
select A.Nome, C.PrimeiroNome, C.UltimoNome, B.Papel
from Filmes A 
inner join ElencoFilme B on A.Id = B.IdFilme
inner join Atores C on B.IdAtor = C.Id
