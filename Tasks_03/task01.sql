use movies

select name from MOVIESTAR where MOVIESTAR.GENDER = 'F'
and MOVIESTAR.NAME in (select name from MOVIEEXEC where MOVIEEXEC.NETWORTH > 10000000)

select name from MOVIESTAR where MOVIESTAR.NAME not in (select name from MOVIEEXEC)

select title from MOVIE where movie.LENGTH > (select LENGTH from movie where movie.TITLE = 'Star Wars')

select title, name from movie, movieexec where MOVIEEXEC.CERT# = movie.PRODUCERC# 
and MOVIEEXEC.NETWORTH > (select NETWORTH from MOVIEEXEC where MOVIEEXEC.NAME = 'Merv Griffin')
