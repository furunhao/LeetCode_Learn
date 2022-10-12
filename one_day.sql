/* ��һ�⣺���һ����������������������֮һ������Ϊ�ù��� ��� ��
�������Ϊ 300 ��ƽ���������3000000 km2��������
�˿�����Ϊ 2500 �򣨼� 25000000��
��дһ�� SQL ��ѯ�Ա��� ��� �Ĺ������ơ��˿ں������
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
-- ʹ�� or ��ʹ������ʧЧ�����������ϴ��ʱ�����Ч�ʽϵͣ��漰����ѯ�����ʱ����union����or
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

/*�ڶ���
    ���Ҽ��ǵ�֬�����ǿɻ��յĲ�Ʒ
    ���㣺and ��ʹ��
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

/*������
    �����Ƽ��˱�Ŷ�������2��
 */
-- = �� ��= ֻ���жϻ����������� is �ؼ���ֻ���ж�null <=> �����ж�null �����ж� ������������
-- demo 01
select *
from customer
where ifnull(referee_id, 0) != 2;
-- ifnull(m,n) �жϵ�һ������m���Ϊnullֵת��Ϊn��������Ȼ���Ϊm

-- demo 02
select
    name
from customer
where referee_id != 2
   or referee_id is null;

/*
 ������
    �������Ӳ�ѯ��not in
    �������ٵ�ʱ���Ӳ�ѯ�����Ӳ�ѯЧ�ʸߣ����������ʱ�򣬺�����ԥѡ�����Ӳ�ѯ
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
