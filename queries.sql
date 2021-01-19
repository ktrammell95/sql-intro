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

CompanyDatabase> CREATE TABLE "Employees" (
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
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Jordan Bryant', '15000', 'Alumni Mentor', '6', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Katie Perry', '20000', 'Operations Manager', '70', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Liz Tiller', '10000', 'Part-Time Instructor', '9', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Gizmo', '0', 'Campus Dog', '10', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Lazy Larry', '200', 'Cook', '30', 'Yes');
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Shimron Trammell', '200', 'Cook', '23', 'Yes');

CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Jason P
................ erry', '700', 'CEO', '42', 'No');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Gavin S
................ tark', '700', 'Instructor', '21', 'No');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Katheri
................ ne Trammell', '6000', 'Campus Director', '12', 'No');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Kento K
................ awakami', '1500', 'Alumni Mentor', '4', 'Yes');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Jordan
................ Bryant', '15000', 'Alumni Mentor', '6', 'Yes');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Katie P
................ erry', '20000', 'Operations Manager', '70', 'Yes');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Liz Til
................ ler', '10000', 'Part-Time Instructor', '9', 'Yes');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Gizmo',
................  '0', 'Campus Dog', '10', 'Yes');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Lazy La
................ rry', '200', 'Cook', '30', 'Yes');
................ INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Shimron
................  Trammell', '200', 'Cook', '23', 'Yes');
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

--   Select all columns for all employees.

CompanyDatabase> SELECT * FROM "Employees";
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


--   Select only the full names and phone extensions for only full-time employees.

CompanyDatabase> SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'False';
+--------------------+------------------+
| FullName           | PhoneExtension   |
|--------------------+------------------|
| Jason Perry        | 42               |
| Gavin Stark        | 21               |
| Katherine Trammell | 12               |
+--------------------+------------------+
SELECT 3
Time: 0.009s

--   Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.
CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES ('Scooby
................ Doo', '450', 'Software Developer', '0', 'Yes');
INSERT 0 1
Time: 0.009s

--   Update all employees that are cooks to have a salary of 500.

CompanyDatabase> UPDATE "Employees" SET "Salary" = '500' WHERE "JobPosition" = 'Cook';
UPDATE 2
Time: 0.008s

--   Delete all employees that have the full name of "Lazy Larry".

CompanyDatabase> DELETE FROM "Employees" Where "FullName" = 'Lazy Larry';
-- You're about to run a destructive command.
-- Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.003s

--   Add a column to the table: ParkingSpot as textual information that can store up to 10 characters.

CompanyDatabase> ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
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
