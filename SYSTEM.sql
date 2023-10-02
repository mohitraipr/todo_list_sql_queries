--creating a sequence for auto generating id's
CREATE SEQUENCE my_sequence
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE;

CREATE TABLE todo_list (
  id NUMBER DEFAULT my_sequence.NEXTVAL PRIMARY KEY,
  task VARCHAR2(50)
);

--inserting values with id because of error not enough values
INSERT INTO todo_list values(1,'learn sql');
INSERT INTO todo_list values(2,'learn basic sql');

--got this error ORA-00001: unique constraint (SYSTEM.SYS_C007431) violated 
INSERT INTO todo_list(task) values('Introduction to SQL and Oracle Database');

--retrieving all the data
SELECT
    "A1"."ID"   "ID",
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1";

--deleting everything because that will solve ORA-00001: unique constraint (SYSTEM.SYS_C007431) violated 
DELETE FROM todo_list WHERE id = 1;
DELETE FROM todo_list WHERE id = 2;

--inserting the data again without writing the id
INSERT INTO todo_list(task) values('Introduction to SQL and Oracle Database');
INSERT INTO todo_list(task) values('SQL Basics');
INSERT INTO todo_list(task) values('SQL Queries');
INSERT INTO todo_list(task) values('Joining Tables');
INSERT INTO todo_list(task) values('Subqueries and Set Operations');
INSERT INTO todo_list(task) values('Advanced SQL Concepts');
INSERT INTO todo_list(task) values('Advanced Topics');

--DROPPING THE TABLE REMOVES THE WHOLE TABLE FROM THE DATABASE ITS DDL
DROP TABLE todo_list;
DROP SEQUENCE my_sequence;

--TRUNCATING THE TABLE ONLY REMOVES OR EMPTIES THE TABLE DATA FROM THE DATABASE THIS IS DML
TRUNCATE TABLE todo_list;

--Updating Data:
UPDATE todo_list
SET todo_list.id = 1
where id = 9;

--Selecting Specific Column like task without id column
SELECT
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1";

--Filtering Data with WHERE:    
SELECT
    "A1"."ID"   "ID",
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1"
WHERE
    "A1"."TASK" = 'SQL Basics';

SELECT
    "A1"."ID"   "ID",
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1"
WHERE
    "A1"."TASK" LIKE 'SQL%';
    
--used small s here    
SELECT
    "A1"."ID"   "ID",
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1"
WHERE
    "A1"."TASK" LIKE '%s';    
 
SELECT
    "A1"."ID"   "ID",
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1"
WHERE
    "A1"."TASK" LIKE '%S%';    
 
 --Sorting Data (ORDER BY):
  SELECT
    "A1"."ID"   "ID",
    "A1"."TASK" "TASK"
FROM
    "SYSTEM"."TODO_LIST" "A1"
ORDER BY 
    "A1"."TASK" ASC;

--Counting Rows:
SELECT COUNT(*) FROM todo_list;

--DISTINCT:
SELECT DISTINCT task FROM todo_list;

--Filtering with WHERE and AND/OR:
SELECT 
    "A1"."TASK" 
FROM 
    "SYSTEM"."TODO_LIST" "A1" 
WHERE 
    "A1"."TASK" LIKE '%SQL%'
OR
    "A1"."TASK" LIKE '%es%'
OR 
    "A1"."TASK" LIKE '%ts%'
AND 
    "A1"."TASK" LIKE '%es%';

--Aggregate Functions (SUM, AVG, MAX, MIN):
SELECT SUM(1+20) FROM dual;
SELECT AVG(id) FROM todo_list;
SELECT MAX(TASK) FROM todo_list;
SELECT MIN(TASK) FROM TODO_LIST;

--Adding dates column to todo_list
ALTER TABLE todo_list add day_start DATE DEFAULT SYSDATE NOT NULL;
--ALTER TABLE todo_list add day_end DATE DEFAULT SYSDATE NOT NULL;
ALTER TABLE todo_list MODIFY day_end DATE NULL;
ALTER TABLE todo_list add status VARCHAR2(20) DEFAULT 'UNCOMPLETE' NOT NULL;

SELECT * FROM todo_list;
-- WHERE day_end IS NOT NULL;

-- TO MAKE THE DAY_END NULL UNTIL COMPLETED 
UPDATE TODO_LIST
SET day_end = '2-10-23'
WHERE ID = 4;

UPDATE todo_list 
SET status = 'Complete'
WHERE day_end IS NOT NULL;

--CREATING A NEW TABLE:
CREATE TABLE list_content(
list_id NUMBER PRIMARY KEY,
todo_list_id NUMBER NOT NULL,
list_topic VARCHAR2(20),
list_explanation VARCHAR2(255),
list_link VARCHAR2(20),
FOREIGN KEY(todo_list_id) REFERENCES "SYSTEM"."TODO_LIST"(id)
);
INSERT INTO 
    list_content VALUES(
        1,
        1,
        'What is SQL?',
        'SQL is like a special language computers use to talk to databases. It helps us store, retrieve, and manage data.',
        'NO LINK'); 
INSERT INTO 
    list_content 
VALUES(2,1,
        'Introduction to Oracle Database',
        'Imagine Oracle Database as a giant digital filing cabinet for storing information.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(3,2,
        'Creating Databases and Tables',
        'Think of a database as a container, like a folder on your computer. Tables are like spreadsheets where you store specific types of information.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(4,2,
        'Data Types in Oracle',
        'Data types are like categories for your data, such as numbers, text, or dates.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(5,2,
        'Adding and Modifying Data (INSERT, UPDATE, DELETE)',
        'INSERT is like adding new rows to your spreadsheet. UPDATE is like correcting information, and DELETE is like erasing rows.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(6,2,
        'Retrieving Data (SELECT)',
        'SELECT is like searching for information in your spreadsheet.',
        'NO LINK');INSERT INTO 
    list_content 
VALUES(7,2,
        'Sorting and Filtering Data (ORDER BY, WHERE)',
        'ORDER BY is like organizing your spreadsheet by a specific column. WHERE is like a filter to find specific information.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(8,3,
        'Advanced SELECT Statements',
        'These are like smart ways to search for data.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(9,3,
        'Using DISTINCT',
        'DISTINCT helps you see only unique values in a column.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(10,3,
        'Filtering with WHERE and AND/OR',
        'Imagine it''s like searching for things on a shopping website by setting filters like price and brand.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(11,3,
        'Using Wildcards (LIKE)',
        'LIKE is like searching for keywords that partly match what you''re looking for.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(12,3,
        'Aggregate Functions (SUM, AVG, COUNT, MAX, MIN)',
        'These functions help you do calculations on your data, like finding the total or average.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(13,4,
        'Understanding Table Relationships (Primary Key, Foreign Key)',
        'Tables can be linked together. It''s like connecting information from different spreadsheets.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(14,4,
        'INNER JOIN',
        'Think of it as combining two spreadsheets based on a common column.',
        'NO LINK');
INSERT INTO 
    list_content 
VALUES(15,4,
        'LEFT JOIN, RIGHT JOIN, FULL JOIN',
        'These are like different ways to combine spreadsheets, showing all or some data from both.',
        'NO LINK');
        
select * from list_content ORDER BY LIST_ID ASC;
SELECT * from todo_list ORDER BY ID ASC;

select task, 
    day_start, 
    day_end, 
    status, 
    list_topic, 
    list_explanation, 
    list_link
    from todo_list
    JOIN list_content on todo_list.id = list_content.todo_list_id ORDER BY list_content.todo_list_id;
select task, 
    day_start, 
    day_end, 
    status, 
    list_topic, 
    list_explanation, 
    list_link
    from todo_list
    LEFT JOIN list_content on todo_list.id = list_content.todo_list_id ORDER BY list_content.todo_list_id;

select task, 
    day_start, 
    day_end, 
    status, 
    list_topic, 
    list_explanation, 
    list_link
    from todo_list
    INNER JOIN list_content on todo_list.id = list_content.todo_list_id ORDER BY list_content.todo_list_id;


commit;
