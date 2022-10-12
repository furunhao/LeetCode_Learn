insert into World (name, continent, area, population, gdp)
values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000');
insert into World (name, continent, area, population, gdp)
values ('Albania', 'Europe', '28748', '2831741', '12960000000');
insert into World (name, continent, area, population, gdp)
values ('Algeria', 'Africa', '2381741', '37100000', '188681000000');
insert into World (name, continent, area, population, gdp)
values ('Andorra', 'Europe', '468', '78115', '3712000000');
insert into World (name, continent, area, population, gdp)
values ('Angola', 'Africa', '1246700', '20609294', '100990000000');

insert into Products (product_id, low_fats, recyclable)
values ('0', 'Y', 'N');
insert into Products (product_id, low_fats, recyclable)
values ('1', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable)
values ('2', 'N', 'Y');
insert into Products (product_id, low_fats, recyclable)
values ('3', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable)
values ('4', 'N', 'N');

insert into Customer (id, name, referee_id)
values (1, 'Will', null);
insert into Customer (id, name, referee_id)
values (2, 'Jane', null);
insert into Customer (id, name, referee_id)
values (3, 'Alex', 2);
insert into Customer (id, name, referee_id)
values (4, 'Bill', null);
insert into Customer (id, name, referee_id)
values (5, 'Zack', 1);
insert into Customer (id, name, referee_id)
values (6, 'Mark', 2);

insert into Customers (id, name)
values ('1', 'Joe');
insert into Customers (id, name)
values ('2', 'Henry');
insert into Customers (id, name)
values ('3', 'Sam');
insert into Customers (id, name)
values ('4', 'Max');

insert into Orders (id, customerId)
values ('1', '3');
insert into Orders (id, customerId)
values ('2', '1');
