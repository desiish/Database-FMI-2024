use ships

select CLASS, country from CLASSES where CLASSES.NUMGUNS < 10

select name as shipName from SHIPS where ships.LAUNCHED < 1918

select ship, battle from outcomes where OUTCOMES.RESULT = 'sunk'

select name from SHIPS where ships.CLASS = ships.NAME

select name from SHIPS where SHIPS.NAME like 'R%'

select name from SHIPS where SHIPS.NAME like '% %'
