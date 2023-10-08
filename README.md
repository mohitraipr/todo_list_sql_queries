# SQL Queries and Procedures README
Here's a README that explains the purpose of the SQL queries, stored procedures, and functions :

---


This document outlines a series of SQL queries, stored procedures, and functions used for managing a todo list and related tasks in an Oracle database.

## Queries and Actions

### 1. Sequence and Table Creation

- `my_sequence` is created to auto-generate unique IDs.
- `todo_list` table is created with an ID column using the sequence, and a task column to store task descriptions.

### 2. Inserting and Retrieving Data

- Tasks are inserted into the `todo_list` table using both explicit IDs and auto-generated IDs from the sequence.
- Data from the `todo_list` table is retrieved and displayed.

### 3. Data Manipulation and Cleanup

- Records with explicit IDs are deleted to resolve unique constraint errors.
- Additional tasks are inserted into the `todo_list` table.
- The table and sequence are dropped to remove them from the database.
- The `todo_list` table is truncated to remove its data.

### 4. Data Updates and Filtering

- Data in the `todo_list` table is updated.
- Various SELECT queries are used to filter and retrieve specific data from the table based on task names.

### 5. Sorting, Counting, and Aggregation

- Data is sorted using the `ORDER BY` clause.
- The number of rows in the `todo_list` table is counted.
- Unique task descriptions are retrieved using `DISTINCT`.
- Data is filtered using `WHERE` and `AND/OR` conditions.
- Aggregate functions like `SUM`, `AVG`, `MAX`, and `MIN` are used.

### 6. Adding Date and Status Columns

- Date columns (`day_start`, `day_end`) and a status column (`status`) are added to the `todo_list` table.
- Sample data is updated to demonstrate the use of these columns.

### 7. Creating a Related Table

- `list_content` table is created to store additional information related to tasks.
- A foreign key relationship is established between `list_content` and `todo_list`.

## Stored Procedures

Several stored procedures are created to perform common tasks on the `todo_list` table:

- `InsertTask`: Inserts a new task into the `todo_list` table.
- `UpdateTask`: Updates the task description in the `todo_list` table.
- `DeleteTask`: Deletes a task from the `todo_list` table.
- `GetAllTasks`: Retrieves and displays all tasks from the `todo_list` table.
- `GetTaskCount`: Counts and displays the total number of tasks in the `todo_list` table.

## Functions

Several SQL functions are created to retrieve and process data from the `todo_list` table:

- `CountTasks`: Returns the total number of tasks in the `todo_list` table.
- `GetTaskById`: Returns the task description for a given task ID.
- `IsTaskComplete`: Returns a numerical value (1 or 0) indicating whether a task is marked as 'Complete.'
- `GetTotalTaskCount`: Returns the total number of tasks in the `todo_list` table.
- `ConcatenateTaskDetails`: Returns a concatenated string with task details for a given task ID.

## Execution

Each query, stored procedure, and function is executed to demonstrate its functionality. Please review the individual sections above for detailed explanations and examples of execution.

---

This README provides an overview of the SQL queries, procedures, and functions you've created and demonstrates how they can be used to manage tasks in an Oracle database. You can refer to this document for reference and further development of your database management system.
