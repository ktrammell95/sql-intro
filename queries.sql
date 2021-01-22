-- Create a database: CompanyDatabase.

createdb CompanyDatabase

pgcli CompanyDatabase
Server: PostgreSQL 13.1
Version: 3.1.0
Chat: https://gitter.im/dbcli/pgcli
Home: http://pgcli.com

-- Create a table: Employees with the following columns. Use your best judgment for data types. Copy the query you used to create this table and paste it into queries.sql.
  -- FullName
  -- Salary
  -- JobPosition
  -- PhoneExtension
  -- IsPartTime

CREATE TABLE "Employees" (
................ "FullName" TEXT NOT NULL,
................ "Salary" INT,
................ "JobPosition" TEXT,
................ "PhoneExtension" INT,
................ "IsPartTime" BOOLEAN,
................ "EmployeeId" SERIAL PRIMARY KEY);
CREATE TABLE
Time: 0.019s

-- Create a few employees. Review the requirements below to see some examples of the values you may need. For instance, you may need employees of certain job positions, employees with certain names, etc. Add enough data (maybe 10 rows) such that you can validate your queries. Copy the queries you used to create your data into queries.sql

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Jason Perry', '700', 'CEO', '42', 'No');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Gavin Stark', '700', 'Instructor', '21', 'No');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Katherine Trammell', '6000', 'Campus Director', '12', 'No');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Kento Kawakami', '1500', 'Alumni Mentor', '4', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('JordanBryant', '15000', 'Alumni Mentor', '6', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Katie Perry', '20000', 'Operations Manager', '70', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Liz Tiller', '10000', 'Part-Time Instructor', '9', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Gizmo', '0', 'Campus Dog', '10', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Lazy Larry', '200', 'Cook', '30', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Shimron Trammell', '200', 'Cook', '23', 'Yes');
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
Time: 0.032s

-- Create queries that can do the following. Each query should be attempted in your database. When it works, copy the query to queries.sql. You may optionally copy and paste the query output to your queries.sql if you wish.

    -- Select all columns for all employees.

SELECT * FROM "Employees";

+--------------------+----------+----------------------+------------------+--------------+--------------+
| FullName           | Salary   | JobPosition          | PhoneExtension   | IsPartTime   | EmployeeId   |
|--------------------+----------+----------------------+------------------+--------------+--------------|
| Jason Perry        | 700      | CEO                  | 42               | False        | 1            |
| Gavin Stark        | 700      | Instructor           | 21               | False        | 2            |
| Katherine Trammell | 6000     | Campus Director      | 12               | False        | 3            |
| Kento Kawakami     | 1500     | Alumni Mentor        | 4                | True         | 4            |
| Jordan Bryant      | 15000    | Alumni Mentor        | 6                | True         | 5            |
| Katie Perry        | 20000    | Operations Manager   | 70               | True         | 6            |
| Liz Tiller         | 10000    | Part-Time Instructor | 9                | True         | 7            |
| Gizmo              | 0        | Campus Dog           | 10               | True         | 8            |
| Lazy Larry         | 200      | Cook                 | 30               | True         | 9            |
| Shimron Trammell   | 200      | Cook                 | 23               | True         | 10           |
+--------------------+----------+----------------------+------------------+--------------+--------------+
SELECT 10
Time: 0.015s

  -- Select only the full names and phone extensions for only full-time employees.

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'False';
+--------------------+------------------+
| FullName           | PhoneExtension   |
|--------------------+------------------|
| Jason Perry        | 42               |
| Gavin Stark        | 21               |
| Katherine Trammell | 12               |
+--------------------+------------------+
SELECT 3
Time: 0.009s

-- Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Scooby Doo', '450', 'Software Developer', '0', 'Yes');
INSERT 0 1
Time: 0.009s

-- Update all employees that are cooks to have a salary of 500.

UPDATE "Employees" SET "Salary" = '500' WHERE "JobPosition" = 'Cook';
UPDATE 2
Time: 0.008s

-- Delete all employees that have the full name of "Lazy Larry".

DELETE FROM "Employees" Where "FullName" = 'Lazy Larry';
-- You're about to run a destructive command.
-- Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.003s

-- Add a column to the table: ParkingSpot as textual information that can store up to 10 characters.

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
-- You're about to run a destructive command.
-- Do you want to proceed? (y/n): Y
Your call!
ALTER TABLE
Time: 0.004s

-- FINAL DATABASE

+--------------------+----------+----------------------+------------------+--------------+--------------+---------------+
| FullName           | Salary   | JobPosition          | PhoneExtension   | IsPartTime   | EmployeeId   | ParkingSpot   |
|--------------------+----------+----------------------+------------------+--------------+--------------+---------------|
| Jason Perry        | 700      | CEO                  | 42               | False        | 1            | <null>        |
| Gavin Stark        | 700      | Instructor           | 21               | False        | 2            | <null>        |
| Katherine Trammell | 6000     | Campus Director      | 12               | False        | 3            | <null>        |
| Kento Kawakami     | 1500     | Alumni Mentor        | 4                | True         | 4            | <null>        |
| Jordan Bryant      | 15000    | Alumni Mentor        | 6                | True         | 5            | <null>        |
| Katie Perry        | 20000    | Operations Manager   | 70               | True         | 6            | <null>        |
| Liz Tiller         | 10000    | Part-Time Instructor | 9                | True         | 7            | <null>        |
| Gizmo              | 0        | Campus Dog           | 10               | True         | 8            | <null>        |
| Scooby Doo         | 450      | Software Developer   | 0                | True         | 11           | <null>        |
| Shimron Trammell   | 500      | Cook                 | 23               | True         | 10           | <null>        |
+--------------------+----------+----------------------+------------------+--------------+--------------+---------------+
SELECT 10
Time: 0.010s




-- ===========================================================================================================================
-- Foreign Keys - The SQL
-- ===========================================================================================================================

-- In your CompanyDatabase, add a table named Departments with the following columns:
  -- Id as a primary key
  -- DepartmentName as text
  -- Building as text

CREATE TABLE "Departments" (
"DepartmentId" SERIAL PRIMARY KEY,
"DepartmentName" TEXT NOT NULL,
"Building" TEXT);

-- Add a Foreign key DepartmentId to your Employees Table. If you have trouble, remove the existing employees by running truncate table "Employees".

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INT;

-- Add tables named Products and Orders.
  -- Products should have the columns
    -- Id as a primary key
    -- Price as a data type that can store a number with decimal places (e.g. 45.12)
    -- Name as textual data
    -- Description as textual data
    -- QuantityInStock as a data type that can store a number WITHOUT decimal places (e.g. 42)

CREATE TABLE "Products" (
"ProductId" SERIAL PRIMARY KEY,
"Price" DECIMAL,
"Name" TEXT,
"Description" TEXT,
"QuantityInStock" INT);

  -- Orders should have the columns
    -- Id as a primary key
    -- OrderNumber as textual data
    -- DatePlaced as a data type that can store a date (with Year, Month, and Day) -- or one with hours, minutes, and seconds. Student's choice.
    -- Email as textual data

CREATE TABLE "Orders" (
"OrderId" SERIAL PRIMARY KEY,
"OrderNumber" TEXT,
"DatePlaced" DATE,
"Email" TEXT);

--  In our company, one Order can have many Products and one Product can have many Orders. This will be a Many-to-Many relationship. Create the necessary table ProductOrders, foreign keys, and the OrderQuantity field needed for this to happen.

CREATE TABLE "ProductOrders" (
"ProductOrderId" SERIAL PRIMARY KEY,
"OrderId" INTEGER REFERENCES "Orders" ("OrderId"),
"ProductId" INTEGER REFERENCES "Products" ("ProductId"),
"OrderQuantity" INT);

-- Create queries that can do the following:

-- Insert the following Departments
  -- Department Name	  Building
  -- Development	      Main
  -- Marketing	        North

INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Development', 'Main');
INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Marketing', 'North');

+----------------+------------------+------------+
| DepartmentId   | DepartmentName   | Building   |
|----------------+------------------+------------|
| 1              | Development      | Main       |
| 2              | Marketing        | North      |
+----------------+------------------+------------+

-- Insert the following Employees
  -- FullName	        Salary	  JobPosition	  PhoneExtension	  IsPartTime	  Department Id
  -- Tim Smith	      40000	    Programmer	  123	              false	        1
  -- Barbara Ramsey	  80000	    Manager	      234	              false	        1
  -- Tom Jones	      32000	    Admin	        456	              true	        2 

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId") VALUES ('Tim Smith', '40000', 'Programmer', '123', 'false', '1');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId") VALUES ('Barbara Ramsey', '80000', 'Manager', '234', 'false', '1');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId") VALUES ('Tom Jones', '32000', 'Admin', '456', 'true', '2');

+--------------------+----------+----------------------+------------------+--------------+--------------+---------------+----------------+
| FullName           | Salary   | JobPosition          | PhoneExtension   | IsPartTime   | EmployeeId   | ParkingSpot   | DepartmentId   |
|--------------------+----------+----------------------+------------------+--------------+--------------+---------------+----------------|
| Jason Perry        | 700      | CEO                  | 42               | False        | 1            | <null>        | <null>         |
| Gavin Stark        | 700      | Instructor           | 21               | False        | 2            | <null>        | <null>         |
| Katherine Trammell | 6000     | Campus Director      | 12               | False        | 3            | <null>        | <null>         |
| Kento Kawakami     | 1500     | Alumni Mentor        | 4                | True         | 4            | <null>        | <null>         |
| Jordan Bryant      | 15000    | Alumni Mentor        | 6                | True         | 5            | <null>        | <null>         |
| Katie Perry        | 20000    | Operations Manager   | 70               | True         | 6            | <null>        | <null>         |
| Liz Tiller         | 10000    | Part-Time Instructor | 9                | True         | 7            | <null>        | <null>         |
| Gizmo              | 0        | Campus Dog           | 10               | True         | 8            | <null>        | <null>         |
| Scooby Doo         | 450      | Software Developer   | 0                | True         | 11           | <null>        | <null>         |
| Shimron Trammell   | 500      | Cook                 | 23               | True         | 10           | <null>        | <null>         |
| Tim Smith          | 40000    | Programmer           | 123              | False        | 12           | <null>        | 1              |
| Barbara Ramsey     | 80000    | Manager              | 234              | False        | 13           | <null>        | 1              |
| Tom Jones          | 32000    | Admin                | 456              | True         | 14           | <null>        | 2              |
+--------------------+----------+----------------------+------------------+--------------+--------------+---------------+----------------+

-- Insert the following Products
  -- Price	  Name	    Description	          QuantityInStock
  -- 12.45	  Widget	  The Original Widget	  100
  -- 99.99	  Flowbee	  Perfect for haircuts	3

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")VALUES('12.45', 'Widget', 'The Original Widget', '100');
INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")VALUES('99.99', 'Flowbee', 'Perfect for haircuts', '3');

+-------------+---------+---------+----------------------+-------------------+
| ProductId   | Price   | Name    | Description          | QuantityInStock   |
|-------------+---------+---------+----------------------+-------------------|
| 1           | 12.45   | Widget  | The Original Widget  | 100               |
| 2           | 99.99   | Flowbee | Perfect for haircuts | 3                 |
+-------------+---------+---------+----------------------+-------------------+

-- Insert a new order with order number X529, placed on Jan 1st, 2020 at 4:55PM, by someone with the email address "person@example.com"

INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email") VALUES ('X529', 'Jan 1, 2020', 'person@example.com');

+-----------+---------------+--------------+--------------------+
| OrderId   | OrderNumber   | DatePlaced   | Email              |
|-----------+---------------+--------------+--------------------|
| 1         | X529          | 2020-01-01   | person@example.com |
+-----------+---------------+--------------+--------------------+

-- Add an order quantity of 3 for the product named Widget to the order X529

INSERT INTO "ProductOrders" ("OrderId", "ProductId") VALUES (1,1);
UPDATE "ProductOrders" set "OrderQuantity" = '3' where "ProductOrderId" = 1;

+------------------+-----------+-------------+-----------------+
| ProductOrderId   | OrderId   | ProductId   | OrderQuantity   |
|------------------+-----------+-------------+-----------------|
| 1                | 1         | 1           | 3               |
+------------------+-----------+-------------+-----------------+

SELECT "ProductOrders"."ProductOrderId", "Orders"."OrderNumber","Products"."Name", "ProductOrders"."OrderQuantity"
FROM "Orders"
JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."OrderId"
JOIN "Products" ON "Products"."ProductId" = "ProductOrders"."ProductId";

+------------------+---------------+--------+-----------------+
| ProductOrderId   | OrderNumber   | Name   | OrderQuantity   |
|------------------+---------------+--------+-----------------|
| 1                | X529          | Widget | 3               |
+------------------+---------------+--------+-----------------+

-- Add an order quantity of 2 for the product named Flowbee to the order X529

INSERT INTO "ProductOrders" ("OrderId", "ProductId") VALUES (1,2);
UPDATE "ProductOrders" set "OrderQuantity" = '2' where "ProductId" = 2;

+------------------+---------------+---------+-----------------+
| ProductOrderId   | OrderNumber   | Name    | OrderQuantity   |
|------------------+---------------+---------+-----------------|
| 1                | X529          | Widget  | 3               |
| 2                | X529          | Flowbee | 2               |
+------------------+---------------+---------+-----------------+

-- Given a building, return all employees that work in that building. 
-- Show this query for buildings named North Side, East Side, and finally a building that you actually have in your data even if your data doesn't have any departments in those buildings. 
-- NOTE this means you can't manually look up Ids and use them, you have to let SQL do that work. (Hint: JOIN)

SELECT "Employees"."FullName", "Departments"."Building", "Departments"."DepartmentName"
FROM "Departments"
JOIN "Employees" ON "Employees"."DepartmentId" = "Departments"."DepartmentId"
WHERE "Departments"."Building" = ('North Side') OR "Departments"."Building" = ('East Side') OR "Departments"."Building" = ('Main');

+----------------+------------+------------------+
| FullName       | Building   | DepartmentName   |
|----------------+------------+------------------|
| Tim Smith      | Main       | Development      |
| Barbara Ramsey | Main       | Development      |
+----------------+------------+------------------+

-- Find all orders that contain the product id of 2

SELECT "Orders"."OrderNumber","Products"."Name", "ProductOrders"."OrderQuantity"
FROM "Orders"
JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."OrderId"
JOIN "Products" ON "Products"."ProductId" = "ProductOrders"."ProductId"
WHERE "ProductOrders"."ProductId" = ('2');

+---------------+---------+-----------------+
| OrderNumber   | Name    | OrderQuantity   |
|---------------+---------+-----------------|
| X529          | Flowbee | 2               |
+---------------+---------+-----------------+
 
-- Find the quantity of the Flowbee product from order with order number X529. You may not write the value of an Id in your query, let SQL do the work (HINT: JOIN)

SELECT "Products"."Name", "ProductOrders"."OrderQuantity", "Orders"."OrderNumber"
FROM "Orders"
JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."OrderId"
JOIN "Products" ON "Products"."ProductId" = "ProductOrders"."ProductId"
WHERE "Products"."Name" = ('Flowbee') AND "Orders"."OrderNumber" = ('X529');

+---------+-----------------+---------------+
| Name    | OrderQuantity   | OrderNumber   |
|---------+-----------------+---------------|
| Flowbee | 2               | X529          |
+---------+-----------------+---------------+

