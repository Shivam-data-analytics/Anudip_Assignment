mysql> show databases; /*use to see all databases*/
+---------------------------+
| Database                  |
+---------------------------+
| artgram_db                |
| authdemo                  |
| customer_records          |
| e_commerce_order_trends   |
| ecommerce                 |
| im21                      |
| information_schema        |
| mysql                     |
| performance_schema        |
| resumeseeker              |
| sakila                    |
| sampledb                  |
| sports_data               |
| sports_main               |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
17 rows in set (0.09 sec)

mysql> use ecommerce
Database changed
mysql> show tables; /* use to see all table in that database */
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| order               |
| product             |
+---------------------+
3 rows in set (0.01 sec)

mysql> desc customer; /* use to see the detailed description */ 
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pin_code     | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from customer; /* use to see only this specific data */
Empty set (0.02 sec)

mysql> INSERT INTO customer (customer_id, name, city, email, address, phone_number, pin_code)
    -> VALUES ('c101', 'Shehnaz R', 'Kalyan', 'shehnaz@gmail.com', '1104 palm', '9665457884', 421301);
Query OK, 1 row affected (0.01 sec)

mysql> select* from customer;
+-------------+-----------+--------+-------------------+-----------+--------------+----------+
| customer_id | name      | city   | email             | address   | phone_number | pin_code |
+-------------+-----------+--------+-------------------+-----------+--------------+----------+
| c101        | Shehnaz R | Kalyan | shehnaz@gmail.com | 1104 palm | 9665457884   |   421301 |
+-------------+-----------+--------+-------------------+-----------+--------------+----------+
1 row in set (0.00 sec)

mysql> select customer_id ,name from customer;
+-------------+-----------+
| customer_id | name      |
+-------------+-----------+
| c101        | Shehnaz R |
+-------------+-----------+
1 row in set (0.00 sec)

mysql> INSERT INTO customer VALUES ('c102', 'sana', 'mumbai', 'sana@gmail.com', '1103 pp home', '9554321022', 43201); /* use to insert the values to table*/
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO customer VALUES
    -> ('c03', 'manan', 'haha', 'manan@gmail.com', 'assss', '2233373', 53443),
    -> ('c04', 'pihu', 'hfffaha', 'pihu@gmail.com', 'aaaas', '1113373', 12443); /* use to insert multiple value to table at once*/
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select customer_id ,name from customer;
+-------------+-----------+
| customer_id | name      |
+-------------+-----------+
| c03         | manan     |
| c04         | pihu      |
| c101        | Shehnaz R |
| c102        | sana      |
+-------------+-----------+
4 rows in set (0.00 sec)

mysql> select* from customer;
+-------------+-----------+---------+-------------------+--------------+--------------+----------+
| customer_id | name      | city    | email             | address      | phone_number | pin_code |
+-------------+-----------+---------+-------------------+--------------+--------------+----------+
| c03         | manan     | haha    | manan@gmail.com   | assss        | 2233373      |    53443 |
| c04         | pihu      | hfffaha | pihu@gmail.com    | aaaas        | 1113373      |    12443 |
| c101        | Shehnaz R | Kalyan  | shehnaz@gmail.com | 1104 palm    | 9665457884   |   421301 |
| c102        | sana      | mumbai  | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |
+-------------+-----------+---------+-------------------+--------------+--------------+----------+
4 rows in set (0.00 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pin_code     | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(10) not null; /* alter the customer_id to change its size or modify it  */
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pin_code     | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add bill_no int not null; /* use to add the new column to table*/
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table customer add country varchar(10) not null , add state varchar(10) not null;  /* use to add multiple column at once using alter*/
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pin_code     | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change name Customer_name varchar(10) not null; 
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| Customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pin_code      | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)
mysql> create table demo;
Query OK, 0 rows affected (0.03 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key (id);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key ; /* drop use to drop the primary key of id */
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+---------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city    | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+---------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha    | manan@gmail.com   | assss        | 2233373      |    53443 |       0 |         |       |
| c04         | pihu          | hfffaha | pihu@gmail.com    | aaaas        | 1113373      |    12443 |       0 |         |       |
| c101        | Shehnaz R     | Kalyan  | shehnaz@gmail.com | 1104 palm    | 9665457884   |   421301 |       0 |         |       |
| c102        | sana          | mumbai  | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+---------+-------------------+--------------+--------------+----------+---------+---------+-------+
4 rows in set (0.00 sec)

mysql> delete from customer where customer_id='c04'; /* delete only the specific value */
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 2233373      |    53443 |       0 |         |       |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457884   |   421301 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into demo values('101', 'arman');
Query OK, 1 row affected (0.00 sec)

mysql> select * from demo;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | arman |
+-----+-------+
1 row in set (0.00 sec)

mysql> truncate table demo; /* used to delete the data but not structure*/ 
Query OK, 0 rows affected (0.03 sec)

mysql> desc demo
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> drop table demo;
Query OK, 0 rows affected (0.02 sec)

mysql> desc demo;
ERROR 1146 (42S02): Table 'ecommerce.demo' doesn't exist
mysql>