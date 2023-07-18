use mydb;
insert into orders values (2,4,2);

select * from customer;
select * from menu;
select * from orders_detail;

drop procedure if exists shabu()
delimiter //
create procedure shabu()
begin

insert into orders_detail values(1,"2023-12-12",1600,2,1),(2,"2023-5-8",3000,1,2);
end//
delimiter ;

call shabu();


create view viewshabu AS 
 select menu_name, orders_detail_datetime,price_total,customer_name
 from customer join orders using (customer_Id)
 join orders_detail using (orders_id)
 join menu using (menu_ID);

