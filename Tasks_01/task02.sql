use pc

SELECT MODEL, SPEED AS MHz, HD AS GB FROM PC
WHERE PC.price < 1200

SELECT DISTINCT MAKER FROM PRODUCT WHERE PRODUCT.type = 'Printer'

SELECT MODEL, RAM, SCREEN FROM LAPTOP WHERE LAPTOP.PRICE > 1000

SELECT * FROM printer WHERE printer.color = 'y'

select model, speed, hd from pc where pc.cd = '12x' or pc.cd = '16x' and pc.price < 2000
