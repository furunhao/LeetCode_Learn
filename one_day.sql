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

/
