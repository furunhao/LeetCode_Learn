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

/
