/* 第一题：如果一个国家满足下述两个条件之一，则认为该国是 大国 ：
面积至少为 300 万平方公里（即，3000000 km2），或者
人口至少为 2500 万（即 25000000）
编写一个 SQL 查询以报告 大国 的国家名称、人口和面积。
 */
-- demo 1
select
    name,
    population,
    area
from WORLD
where area >= 3000000
   or population >= 25000000;
-- demo 2
-- 使用 or 会使索引会失效，在数据量较大的时候查找效率较低；涉及到查询多个列时，用union代替or
select
    name,
    population,
    area
from WORLD
where area >= 3000000
union
select
    name,
    population,
    area
from WORLD
where population >= 25000000;

/*第二题
    查找既是低脂，又是可回收的产品
    考点：and 的使用
 */
-- demo 01
select
    product_id
from products
where low_fats = 'y'
  and recyclable = 'y';

-- demo 02
select
    product_id
from Products
where (low_fats, recyclable) = ('Y', 'Y');

/*第三题
    查找推荐人编号都不等于2的
 */
-- = 或 ！= 只能判断基本数据类型 is 关键字只能判断null <=> 既能判断null 又能判断 基本数据类型
-- demo 01
select *
from customer
where ifnull(referee_id, 0) != 2;
-- ifnull(m,n) 判断第一个参数m如果为null值转换为n，否则仍然输出为m

-- demo 02
select
    name
from customer
where referee_id != 2
   or referee_id is null;

/*
 第四题
    考点是子查询和not in
    数据量少的时候，子查询比连接查询效率高，数据量大的时候，毫无犹豫选择连接查询
 */
-- demo 01
select
    c.name customers
from customers c
where c.id not in (select customerid from orders);

-- demo 02
select
    c.name customers
from customers c
         left join orders o on c.id = o.customerId
where o.id is null;
