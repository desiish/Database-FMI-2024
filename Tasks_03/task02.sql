use pc

select distinct maker from product, pc where product.model = pc.model and pc.speed > 500

select code, model, price from printer where printer.price >= ALL(select price from printer)

select * from laptop where laptop.speed < all(select speed from pc)

select model, price from pc 
where pc.price >= all(select price from pc) 
and pc.price >= all(select price from laptop) 
and pc.price >= all(select price from printer)
union
select model, price from laptop 
where laptop.price >= all(select price from pc) 
and laptop.price >= all(select price from laptop) 
and laptop.price >= all(select price from printer)
union 
select model, price from printer 
where printer.price >= all(select price from pc) 
and printer.price >= all(select price from laptop) 
and printer.price >= all(select price from printer)

select maker from product, printer where product.type = 'Printer' and product.model = printer.model and 
printer.color = 'y' and printer.price <= all(select price from printer where printer.color = 'y')

select distinct maker from product, pc where product.model = pc.model and 
pc.speed = (select top 1 pc.speed from pc where pc.ram =
(select top 1 ram from pc order by pc.ram asc) order by pc.speed desc)
