use ships

select distinct country from ships, CLASSES where ships.CLASS = CLASSES.CLASS and
CLASSES.NUMGUNS = (select top 1 NUMGUNS from CLASSES order by numguns desc)

select distinct class from ships where ships.NAME in (select ship from OUTCOMES where OUTCOMES.RESULT = 'sunk')

select name, class from ships where ships.class in (select class from CLASSES where CLASSES.BORE = 16)

select name from battles where name in (select battle from OUTCOMES where OUTCOMES.SHIP in 
(select name from SHIPS where ships.CLASS = 'Kongo'))

select class, name from ships where ships.CLASS in 
(select C.class from CLASSES as C where C.NUMGUNS >= ALL(select NUMGUNS from classes where CLASSES.BORE = C.BORE))
