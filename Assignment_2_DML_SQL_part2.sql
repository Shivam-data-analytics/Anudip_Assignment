updae customer set phone_no='8862687898' where customer_id='c03';

insert into customer values ('c103','supriya','kalyan','supriya@gmail.com','hhsjhjnsk', '87827767','24566','225678','india','maharastra'),
('c104','amisha','kalyan','amisha@gmail.com','hhjnsk', '855597767','24766','225678','india','maharastra');

% use for pattern  ( wild card operator) -- with select
select * from customer where customer_name like '%an';
( show the name that ends with an)

Q to retrive data with middle letter 
select * from customer where customer_name like '%eh%';

Q first
select * from customer where customer_name like 'S%';

[_] operator (single character)
select * from customer where customer_name like 's___';

what if i remove one _ 
select * from customer where customer_name like 's__';
-- it will say empty


Limit -- iude to retrive only that number of records 
select * from customer limit 3;

distinct --( eleminate the duplicated row from data )
select distinct city from customer;



retrive the records from ustomer where bill no exceed to 4
(less than < ) select * from customer where bill_no >4;
(grater than > ) select * from customer where bill_no <4;

AND / OR 
AND ( check both ) ==
select * from customer where customer_name ='sana' AND bill_no =4;
OR ( check single ) ==
select * from customer where customer_name ='sana' OR bill_no =4;

- Beetween :- specific range filtering
select * from customer where customer_id between 'c101' and 'c104';

- Not Between :- skip that range
select * from customer where customer_id not between 'c101' and 'c104';

- customer record id = 101 ,103 104 
IN operator ( list value)
select * from customer where customer_id in ('c101','c103','c104');

_________________________________________________________________________________________________________________________________

mysql> show databases
    ->
    -> ;
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
17 rows in set (0.02 sec)

mysql> use ecommerce
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| order               |
| product             |
+---------------------+
3 rows in set (0.02 sec)

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
10 rows in set (0.03 sec)

mysql> update customer set phone_number = '9934578928'where customer_id='c03';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> slect * from customer ;
mysql> select * from customer;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |       |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from product;
Empty set (0.01 sec)

mysql> insert into customer values ('c103','supriya','kalyan','supriya@gmail.com','hhsjhjnsk', '8789927767','24566');

mysql> select * from customer where customer_name like '%Sh';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%az';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%an';
+-------------+---------------+------+-----------------+---------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city | email           | address | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+------+-----------------+---------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha | manan@gmail.com | assss   | 9934578928   |    53443 |       0 |         |       |
+-------------+---------------+------+-----------------+---------+--------------+----------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%eh%';
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address   | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+-------+
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm | 9665457904   |   421301 |       0 |         |       |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'S%';
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer where city like 'k%';
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address   | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+-------+
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm | 9665457904   |   421301 |       0 |         |       |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+-------+
1 row in set (0.00 sec)

mysql>
mysql> select * from customer where customer_name like 's___'
    -> ;
+-------------+---------------+--------+----------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email          | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+----------------+--------------+--------------+----------+---------+---------+-------+
| c102        | sana          | mumbai | sana@gmail.com | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+----------------+--------------+--------------+----------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 's__';
Empty set (0.00 sec)

mysql> select * from where adress like '1___';
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
mysql> insert into customer values ('c103','supriya','kalyan','supriya@gmail.com','hhsjhjnsk', '87827767','24566','225678','india','maharastra'),
    -> ('c104','amisha','kalyan','amisha@gmail.com','hhjnsk', '855597767','24766','225678','india','maharastra');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | kalyan | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
5 rows in set (0.00 sec)

mysql> alter table customer modify city='thane' where customer_id ='c104';

mysql> update customer set city='thane' where customer_id='c104';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
5 rows in set (0.00 sec)

mysql> insert into customer values ('c105','sandeep','jkj','sandeep@gmail.com','hhsjhjnsk', '8766787','266676','225678','india','up');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk    | 8766787      |   266676 |  225678 | india   | up         |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |       |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk    | 8766787      |   266676 |  225678 | india   | up         |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
6 rows in set (0.00 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| haha   |
| Kalyan |
| mumbai |
| thane  |
| jkj    |
+--------+
5 rows in set (0.00 sec)

mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(5)   | NO   | PRI | NULL    |       |
| product_name   | varchar(10)  | NO   |     | NULL    |       |
| category       | varchar(10)  | NO   |     | NULL    |       |
| sub_category   | varchar(10)  | NO   |     | NULL    |       |
| original_price | double       | NO   |     | NULL    |       |
| selling_price  | double(10,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select * from customer ;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk    | 8766787      |   266676 |  225678 | india   | up         |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from customer where bill_no >4;
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address   | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+------------+
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk    | 855597767    |    24766 |  225678 | india   | maharastra |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk | 8766787      |   266676 |  225678 | india   | up         |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+------------+
3 rows in set (0.00 sec)

mysql> select * from customer where bill_no <4;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |       |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from customer where bill_no <=4;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |       |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name ='sana' AND bill_no =4;
Empty set (0.00 sec)

mysql> select * from customer where customer_name ='sana' OR bill_no =4;
+-------------+---------------+--------+----------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email          | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+----------------+--------------+--------------+----------+---------+---------+-------+
| c102        | sana          | mumbai | sana@gmail.com | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
+-------------+---------------+--------+----------------+--------------+--------------+----------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and ' c103';
Empty set (0.00 sec)

mysql> select * from customer ;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk    | 8766787      |   266676 |  225678 | india   | up         |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
6 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_id not between 'c101' and 'c104';
+-------------+---------------+------+-------------------+-----------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city | email             | address   | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+------+-------------------+-----------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha | manan@gmail.com   | assss     | 9934578928   |    53443 |       0 |         |       |
| c105        | sandeep       | jkj  | sandeep@gmail.com | hhsjhjnsk | 8766787      |   266676 |  225678 | india   | up    |
+-------------+---------------+------+-------------------+-----------+--------------+----------+---------+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('c101','c103','c104');
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address   | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+------------+
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm | 9665457904   |   421301 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk    | 855597767    |    24766 |  225678 | india   | maharastra |
+-------------+---------------+--------+-------------------+-----------+--------------+----------+---------+---------+------------+
3 rows in set (0.00 sec)

mysql>
mysql> select * from customer where customer_id not in ('c101','c103','c104');
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |       |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |       |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk    | 8766787      |   266676 |  225678 | india   | up    |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from customer where email is null;
Empty set (0.00 sec)

mysql> select * from customer where email is not null;
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| customer_id | Customer_name | city   | email             | address      | phone_number | pin_code | bill_no | country | state      |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
| c03         | manan         | haha   | manan@gmail.com   | assss        | 9934578928   |    53443 |       0 |         |            |
| c101        | Shehnaz R     | Kalyan | shehnaz@gmail.com | 1104 palm    | 9665457904   |   421301 |       0 |         |            |
| c102        | sana          | mumbai | sana@gmail.com    | 1103 pp home | 9554321022   |    43201 |       0 |         |            |
| c103        | supriya       | kalyan | supriya@gmail.com | hhsjhjnsk    | 87827767     |    24566 |  225678 | india   | maharastra |
| c104        | amisha        | thane  | amisha@gmail.com  | hhjnsk       | 855597767    |    24766 |  225678 | india   | maharastra |
| c105        | sandeep       | jkj    | sandeep@gmail.com | hhsjhjnsk    | 8766787      |   266676 |  225678 | india   | up         |
+-------------+---------------+--------+-------------------+--------------+--------------+----------+---------+---------+------------+
6 rows in set (0.00 sec)

mysql>
