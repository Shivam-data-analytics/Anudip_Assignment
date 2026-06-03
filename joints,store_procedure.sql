mysql> create database joints;
Query OK, 1 row affected (0.08 sec)

mysql> use joints;
Database changed
mysql> create table department (dept_id int primary key not null, dept_name varchar(30) not null);
Query OK, 0 rows affected (0.09 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> insert into department values (1, 'HR'),(2 ,'IT'),(3,'Finance'),(4,'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finance   |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> create table employee (emp_id int primary key not null , emp_name varchar(20) not null , dept_id int ,foreign key (dept_id) references department(dept_id));
Query OK, 0 rows affected (0.02 sec)

mysql> desc employee
    -> ;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> SET FOREIGN_KEY_CHECKS = 0; -- Turns off the check
Query OK, 0 rows affected (0.00 sec)

mysql> SET FOREIGN_KEY_CHECKS = 1; -- Turns it back on
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee ;
Empty set (0.00 sec)

mysql> INSERT INTO department VALUES (5, 'Operations');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO employee VALUES (1,'shehnaz',1), (2,'sana',2), (3,'priya',3), (4,'ayesha',4), (5,'arman',5);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+------------+
| dept_id | dept_name  |
+---------+------------+
|       1 | HR         |
|       2 | IT         |
|       3 | Finance    |
|       4 | Marketing  |
|       5 | Operations |
+---------+------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | shehnaz  |       1 |
|      2 | sana     |       2 |
|      3 | priya    |       3 |
|      4 | ayesha   |       4 |
|      5 | arman    |       5 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+------------+
| emp_name | dept_name  |
+----------+------------+
| shehnaz  | HR         |
| sana     | IT         |
| priya    | Finance    |
| ayesha   | Marketing  |
| arman    | Operations |
+----------+------------+
5 rows in set (0.00 sec)

mysql> UPDATE employee SET dept_id = NULL WHERE emp_id = 5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | shehnaz  |       1 |
|      2 | sana     |       2 |
|      3 | priya    |       3 |
|      4 | ayesha   |       4 |
|      5 | arman    |    NULL |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| shehnaz  | HR        |
| sana     | IT        |
| priya    | Finance   |
| ayesha   | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| shehnaz  | HR        |
| sana     | IT        |
| priya    | Finance   |
| ayesha   | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee left join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| shehnaz  | HR        |
| sana     | IT        |
| priya    | Finance   |
| ayesha   | Marketing |
| arman    | NULL      |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee right join department on employee.dept_id=department.dept_id;
+----------+------------+
| emp_name | dept_name  |
+----------+------------+
| shehnaz  | HR         |
| sana     | IT         |
| priya    | Finance    |
| ayesha   | Marketing  |
| NULL     | Operations |
+----------+------------+
5 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee full join department;
+----------+------------+
| emp_name | dept_name  |
+----------+------------+
| arman    | HR         |
| ayesha   | HR         |
| priya    | HR         |
| sana     | HR         |
| shehnaz  | HR         |
| arman    | IT         |
| ayesha   | IT         |
| priya    | IT         |
| sana     | IT         |
| shehnaz  | IT         |
| arman    | Finance    |
| ayesha   | Finance    |
| priya    | Finance    |
| sana     | Finance    |
| shehnaz  | Finance    |
| arman    | Marketing  |
| ayesha   | Marketing  |
| priya    | Marketing  |
| sana     | Marketing  |
| shehnaz  | Marketing  |
| arman    | Operations |
| ayesha   | Operations |
| priya    | Operations |
| sana     | Operations |
| shehnaz  | Operations |
+----------+------------+
25 rows in set, 1 warning (0.01 sec)

mysql> select emp_name , dept_name from employee cross join department;
+----------+------------+
| emp_name | dept_name  |
+----------+------------+
| arman    | HR         |
| ayesha   | HR         |
| priya    | HR         |
| sana     | HR         |
| shehnaz  | HR         |
| arman    | IT         |
| ayesha   | IT         |
| priya    | IT         |
| sana     | IT         |
| shehnaz  | IT         |
| arman    | Finance    |
| ayesha   | Finance    |
| priya    | Finance    |
| sana     | Finance    |
| shehnaz  | Finance    |
| arman    | Marketing  |
| ayesha   | Marketing  |
| priya    | Marketing  |
| sana     | Marketing  |
| shehnaz  | Marketing  |
| arman    | Operations |
| ayesha   | Operations |
| priya    | Operations |
| sana     | Operations |
| shehnaz  | Operations |
+----------+------------+
25 rows in set (0.00 sec)

mysql> select emp_name , dept_name from employee self join department;
+----------+------------+
| emp_name | dept_name  |
+----------+------------+
| arman    | HR         |
| ayesha   | HR         |
| priya    | HR         |
| sana     | HR         |
| shehnaz  | HR         |
| arman    | IT         |
| ayesha   | IT         |
| priya    | IT         |
| sana     | IT         |
| shehnaz  | IT         |
| arman    | Finance    |
| ayesha   | Finance    |
| priya    | Finance    |
| sana     | Finance    |
| shehnaz  | Finance    |
| arman    | Marketing  |
| ayesha   | Marketing  |
| priya    | Marketing  |
| sana     | Marketing  |
| shehnaz  | Marketing  |
| arman    | Operations |
| ayesha   | Operations |
| priya    | Operations |
| sana     | Operations |
| shehnaz  | Operations |
+----------+------------+
25 rows in set (0.00 sec)

mysql> create database store_procedure_example;
Query OK, 1 row affected (0.01 sec)

mysql> use store_procedure_example;
Database changed
mysql> create table employee(id int primary key not null , name varchar(20) not null , department varchar(10) not null , salary int );
Query OK, 0 rows affected (0.02 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id         | int         | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| department | varchar(10) | NO   |     | NULL    |       |
| salary     | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into employee values(1 ,'shehnaz','IT',10000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+----+---------+------------+--------+
| id | name    | department | salary |
+----+---------+------------+--------+
|  1 | shehnaz | IT         |  10000 |
+----+---------+------------+--------+
1 row in set (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;
mysql> call GetEmployees;
+----+---------+------------+--------+
| id | name    | department | salary |
+----+---------+------------+--------+
|  1 | shehnaz | IT         |  10000 |
+----+---------+------------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call GetEmployees();
+----+---------+------------+--------+
| id | name    | department | salary |
+----+---------+------------+--------+
|  1 | shehnaz | IT         |  10000 |
+----+---------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql>  DELIMITER //
mysql>  CREATE PROCEDURE GetEmployeeByDept1(IN dept_name VARCHAR(50))
    ->     BEGIN
    ->        SELECT *
    ->         FROM Employee
    ->        WHERE department = dept_name;
    ->      END //
Query OK, 0 rows affected (0.01 sec)

mysql>  DELIMITER ;
mysql> call GetEmployeeByDept1('HR');
Empty set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> call GetEmployeeByDept1('IT');
+----+---------+------------+--------+
| id | name    | department | salary |
+----+---------+------------+--------+
|  1 | shehnaz | IT         |  10000 |
+----+---------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN  id INT,
    ->     IN name VARCHAR(50),
    ->     IN department VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, department, salary)
    ->     VALUES(id, name, department, salary);
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> call AddEmployee(2,'sara','HR',12000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+----+---------+------------+--------+
| id | name    | department | salary |
+----+---------+------------+--------+
|  1 | shehnaz | IT         |  10000 |
|  2 | sara    | HR         |  12000 |
+----+---------+------------+--------+
2 rows in set (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM Employee;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> call GetEmployeeCount(@total);
Query OK, 1 row affected (0.04 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.00 sec)

mysql>