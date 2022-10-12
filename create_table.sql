create table World
(
    name       varchar(255),
    continent  varchar(255),
    area       int,
    population int,
    gdp        bigint
);

create table Products
(
    product_id int,
    low_fats   enum ('Y', 'N'),
    recyclable enum ('Y','N')
);
create table Customer
(
    id         int,
    name       varchar(25),
    referee_id int
);

create table if not exists Customers
(
    id   int,
    name varchar(255)
);
create table if not exists Orders
(
    id         int,
    customerId int
);



