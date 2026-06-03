/* -------------Question :- Lab 2: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignmen2.sql" Provide comments above each query to indicate the task number and the query's purpose ----------------------*/

mysql> show databases;
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
17 rows in set (0.07 sec)

mysql> create database Bank_data;
Query OK, 1 row affected (0.02 sec)

/* ---------used to see the database names -------*/
mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| artgram_db                |
| authdemo                  |
| bank_data                 |
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
18 rows in set (0.00 sec)

mysql> use bank_data;
Database changed
/*--------------creating table and assigning datatype ------------------*/
mysql> create table BankAccount (account_id varchar(10) primary key not null, account_holder_name varchar(100)not null , account_balance decimal(10,2));
Query OK, 0 rows affected (0.05 sec)

/*------------used to see the description of table ---------------*/
mysql> desc BankAccount;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | varchar(10)   | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100)  | NO   |     | NULL    |       |
| account_balance     | decimal(10,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

/*-------------Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table ----------------*/
mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES
    -> ('101', 'Shehnaz R', 70000),
    -> ('102', 'Arman Rangrez', 85000),
    -> ('103', 'Sara Shaikh', 55000),
    -> ('104', 'Priya Singh', 65000);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc BankAccount ;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | varchar(10)   | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100)  | NO   |     | NULL    |       |
| account_balance     | decimal(10,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Shehnaz R           |        70000.00 |
| 102        | Arman Rangrez       |        85000.00 |
| 103        | Sara Shaikh         |        55000.00 |
| 104        | Priya Singh         |        65000.00 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

/*---- Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. -----*/
mysql> select account_holder_name , account_balance  from BankAccount  ;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Shehnaz R           |        70000.00 |
| Arman Rangrez       |        85000.00 |
| Sara Shaikh         |        55000.00 |
| Priya Singh         |        65000.00 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

/*-------Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. -----*/
mysql> select  account_holder_name , account_balance  from BankAccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Shehnaz R           |        70000.00 |
| Arman Rangrez       |        85000.00 |
| Sara Shaikh         |        55000.00 |
| Priya Singh         |        65000.00 |
+---------------------+-----------------+
4 rows in set (0.01 sec)

/*---------Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.-----------*/
mysql> update BankAccount set  account_balance =50000  where account_id ='101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Shehnaz R           |        50000.00 |
| 102        | Arman Rangrez       |        85000.00 |
| 103        | Sara Shaikh         |        55000.00 |
| 104        | Priya Singh         |        65000.00 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql>