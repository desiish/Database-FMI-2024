use ships

select name from ships, CLASSES where CLASSES.CLASS = ships.CLASS and CLASSES.DISPLACEMENT > 50000

select name, displacement, numguns from CLASSES, SHIPS, OUTCOMES where OUTCOMES.SHIP = SHIPS.NAME 
and ships.CLASS = CLASSES.CLASS and OUTCOMES.BATTLE = 'Guadalcanal'

select c1.country from CLASSES as c1, CLASSES as c2 where c1.COUNTRY = c2.COUNTRY
and c1.TYPE = 'bb' and c2.TYPE = 'bc'

select o1.ship from OUTCOMES as o1, OUTCOMES as o2, SHIPS, BATTLES as b1, BATTLES as b2 
where o1.SHIP = SHIPS.NAME and o2.SHIP = ships.NAME and o1.result = 'damaged' 
and o1.BATTLE = b1.NAME and o2.BATTLE = b2.NAME
and b1.DATE < b2.DATE
