1.

create table students (
    student_id INT PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50),
    department varchar(50),
    age int
);

insert into students (student_id, first_name, last_name, department, age) values
(1, 'Naman', 'Jain', 'Computer Science', 21),
(2, 'Rahul', 'Kumar', 'Mechanical', 19),
(3, 'Sachin', 'Garg', 'Computer Science', 16),
(4, 'Rishi', 'Gupta', 'Electrical', 17),
(5, 'Vanshika', 'Sharma', 'Mechanical', 20);


2.

select * from students
where department = 'Computer Science';


3.

create table departments (
    dept_id int PRIMARY KEY,
    dept_name varchar(50)
);

insert into departments (dept_id, dept_name) values
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Electrical');

select s.student_id, s.first_name, s.last_name, d.dept_name
from students s
INNER JOIN departments d ON s.department = d.dept_name;


4.

select d.dept_name, s.student_id, s.first_name, s.last_name
from departments d
LEFT JOIN students s ON d.dept_name = s.department;


5.

select department, avg(age)
from students
group by department;


6.

select department, avg(age)
from students
group by department
having avg(age) > 20;


7.

select * from students
where age > (select avg(age) from students);


8.

update students
set age = age + 1
where department = 'Mechanical';


9.

delete from students
where age < 18;


10.

create view senior_students as
select * from students
where age > 21;