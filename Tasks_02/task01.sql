use movies

select starname from STARSIN, MOVIESTAR 
where MOVIESTAR.GENDER = 'M' and MOVIESTAR.NAME = STARSIN.STARNAME and MOVIETITLE = 'The Usual Suspects'

select starname from STARSIN, MOVIE where movie.STUDIONAME = 'MGM' 
and movie.YEAR = 1995 and STARSIN.MOVIETITLE = MOVIE.TITLE

select DISTINCT name from MOVIEEXEC, MOVIE where movie.STUDIONAME = 'MGM' and MOVIEEXEC.CERT# = movie.PRODUCERC#

select TITLE from MOVIE where MOVIE.LENGTH > (select LENGTH from MOVIE where MOVIE.TITLE = 'Star Wars') 

select name from MOVIEEXEC where MOVIEEXEC.NETWORTH > (select NETWORTH from MOVIEEXEC where MOVIEEXEC.NAME = 'Stephen Spielberg')
