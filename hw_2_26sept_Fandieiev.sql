   -- hw_2_26sept_Fandieiev
 
-- 1.	Найти сотрудников, чья зарплата превышает 10000, и вывести их имя, фамилию и название департамента.

use hr;

select t1.first_name, t1.last_name, t2.department_name
from employees t1
join departments t2
on t1.department_id = t2.department_id
where salary > 10000;

-- 2.	Найти сотрудников, департаменты которых относятся к региону 'Americas', и вывести их имя и фамилию.

select t1.first_name, t1.last_name
from employees t1
join departments t2
on t1.department_id = t2.department_id
join locations t3
on t2.location_id = t3.location_id
join countries t4
on t3.country_id = t4.country_id
join regions t5
on t4.region_id = t5.region_id
where region_name = 'Americas';

-- 3.	Найти департаменты, в которых есть сотрудники с зарплатой менее 15000.

select DISTINCT t1.department_name
from departments t1
join employees t2
on t1.department_id = t2.department_id
where salary <15000;

-- 4.	Найти департаменты, которые находятся в городе 'Seattle', отсортировать их по названию и вывести первые три.

select DISTINCT  t1.department_name
from departments t1
join locations t2
on t1.location_id = t2.location_id 
where city = 'Seattle'
ORDER BY department_name
LIMIT 3;

-- 5.	Найти сотрудника с максимальной зарплатой из департамента 'Finance' и вывести его данные(имя и фамилию).

SELECT t1.first_name, t1.last_name
FROM employees t1
join departments t2
on t1.department_id = t2.department_id
WHERE department_name = 'Finance'
ORDER BY salary DESC
LIMIT 1;


