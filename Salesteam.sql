use marketdb;
CREATE TABLE SALESMAN (Salesman_id INT PRIMARY KEY,Name VARCHAR(50),City VARCHAR(50),Commission FLOAT);
INSERT INTO SALESMAN VALUES(5001,"James Hoog","New York",0.15);
INSERT INTO SALESMAN VALUES(5002,"Nail Knite","Paris",0.13);
INSERT INTO SALESMAN VALUES(5005,"Pit Alex","London",0.11);
INSERT INTO SALESMAN VALUES(5006,"Mc Lyon","Paris",0.14);
INSERT INTO SALESMAN VALUES(5007,"Paul Adam","Rome",0.13);
INSERT INTO SALESMAN VALUES(5003,"Lauson Hen","San Jose",0.12);
SELECT * FROM salesman;

SELECT Name,Commission FROM SALESMAN;

CREATE TABLE SALESMAN1 (Name VARCHAR(50),Commission FLOAT);
INSERT INTO SALESMAN1 VALUES("James Hoog",0.15);
INSERT INTO SALESMAN1 VALUES("Nail Knite",0.13);
INSERT INTO SALESMAN1 VALUES("Pit Alex",0.11);
INSERT INTO SALESMAN1 VALUES("Mc Lyon",0.14);
INSERT INTO SALESMAN1 VALUES("Paul Adam",0.13);
INSERT INTO SALESMAN1 VALUES("Lauson Hen",0.12);

CREATE TABLE ORDERS (Order_date DATE,Salesman_id INT,order_number int,customer_id INT,Purchase_amount FLOAT);
SELECT * FROM ORDERS;
INSERT INTO ORDERS VALUES('2012-10-05',5002,70001,3005,150.5);
INSERT INTO ORDERS VALUES('2012-09-10',5005,70009,3001,270.65);
INSERT INTO ORDERS VALUES('2012-10-05',5001,70002,3002,65.26);
INSERT INTO ORDERS VALUES('2012-08-17',5003,70004,3009,110.5);
INSERT INTO ORDERS VALUES('2012-09-10',5002,70007,3003,948.5);
INSERT INTO ORDERS VALUES('2012-07-27',5001,70005,3007,2400.6);
INSERT INTO ORDERS VALUES('2012-09-10',5001,70008,3006,5760);

SELECT * FROM SALESMAN;
SELECT Name, City FROM SALESMAN WHERE City like "Paris";

CREATE TABLE CUSTOMER (Customer_id INT PRIMARY KEY,Cust_Name VARCHAR(50),City VARCHAR(50),Grade INT,Salesman_id INT);
INSERT INTO CUSTOMER VALUES(3002,"Nick Rimando","New York", 100,5001);
INSERT INTO CUSTOMER VALUES(3007,"Brad Devis","New York", 200,5001);
INSERT INTO CUSTOMER VALUES(3005,"Graham Zusi","California", 200,5002);
INSERT INTO CUSTOMER VALUES(3008,"Julian Green","London", 300,5002);
INSERT INTO CUSTOMER VALUES(3004,"Fabian Johnson","Paris", 300,5006);
INSERT INTO CUSTOMER VALUES(3009,"Geoff Cameron","Berlin", 100,5003);
INSERT INTO CUSTOMER VALUES(3003,"Jozy Altidor","Moscow", 200,5007);
SELECT * FROM CUSTOMER;
SELECT Customer_id, Cust_Name, City, Grade, Salesman_id FROM CUSTOMER WHERE Grade like 200;

CREATE TABLE EMPLOYEES (Employee_id INT PRIMARY KEY,First_Name VARCHAR(50),Last_Name VARCHAR(50),Email VARCHAR(50),Phone_Number INT(10),Salary INT);
INSERT INTO EMPLOYEES VALUES(100,"King","Singh", "asdghjj",23456789,25001);
INSERT INTO EMPLOYEES VALUES(101,"Anu","Singh", "asdgdfgj",23236789,5001);
INSERT INTO EMPLOYEES VALUES(102,"Sita","Rai", "asdghim",23456743,2400);
INSERT INTO EMPLOYEES VALUES(103,"Rani","Singh", "asdghjj",8201789,3002);
INSERT INTO EMPLOYEES VALUES(104,"Aastha","Srivastava", "dthghjj",23476889,501);
SELECT * FROM EMPLOYEES;
SELECT First_Name +' '+ Last_Name As Full_Name,Salary fROM  EMPLOYEES WHERE Salary<6000;
SELECT 
    RTRIM(LTRIM(
        CONCAT(
            COALESCE(First_Name,  ''), ' '
            , COALESCE(Last_name, '')
        )
    )) AS Name
FROM EMPLOYEES;
SELECT 
    RTRIM(LTRIM(CONCAT
    (
    COALESCE(First_Name, ''),' ',
COALESCE(Last_name, '')))) AS NAME
FROM employees;