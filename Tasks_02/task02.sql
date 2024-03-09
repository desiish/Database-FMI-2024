use pc

select maker, speed from laptop, product where laptop.hd >= 9 and laptop.model = product.model

select product.model, price from product, laptop where product.model = laptop.model and product.maker = 'B'
union
select product.model, price from product, pc where product.model = pc.model and product.maker = 'B'
union 
select product.model, price from product, printer where product.model = printer.model and product.maker = 'B'

select maker from product where product.type = 'laptop'
except
select maker from product where product.type = 'pc'

select distinct pc1.hd from pc as pc1, pc as pc2 where pc1.code != pc2.code and pc2.hd = pc1.hd

select pc1.model, pc2.model from pc as pc1, pc as pc2 where pc1.speed = pc2.speed and pc1.ram = pc2.ram and pc1.model != pc2.model
except
select pc1.model, pc2.model from pc as pc1, pc as pc2 where pc1.speed = pc2.speed and pc1.ram = pc2.ram and pc1.model != pc2.model
and pc1.model > pc2.model

select distinct maker from product, pc as pc1, pc as pc2 where product.model = pc1.model 
and product.model = pc2.model and pc1.code != pc2.code and pc1.speed >= 400 and pc2.speed >= 400 


