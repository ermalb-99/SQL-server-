USE edureka

CREATE TABLE employee (
e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
PRIMARY KEY (e_id)
);

INSERT INTO employee values(
1,'Sam',9500,45,'Male','Operations'
);

INSERT INTO employee values(
2,'Bob',8000,21,'Male','Support'
);

INSERT INTO employee values(
3,'Anne',125000,25,'Female','Analytics'
);


INSERT INTO employee values(
4,'Julia',73000,30,'Female','Analytics'
);


INSERT INTO employee values(
5,'Jeff',125000,25,'Male','Operation')


INSERT INTO employee values(
6,'Anne',125000,25,'Female','Analytics'
); 


SELECT * from employee

SELECT e_gender from employee

SELECT DISTINCT e_gender from employee

SELECT * from employee WHERE e_salary>10000 AND e_gender='Female' 

SELECT * FROM employee where e_dept='Operations' OR e_dept='Analytics'

SELECT * FROM employee where e_salary>1000 OR e_age>30



SELECT * FROM employee where NOT e_gender='Male' 

SELECT * FROM employee where e_name LIKE 'J%'

SELECT * FROM employee where e_age LIKE '3_'




