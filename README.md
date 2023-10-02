# todo_list_sql_queries

# SQL Queries for Todo List Management

This repository contains a set of SQL queries and scripts for managing a simple todo list using an Oracle Database. These SQL queries allow you to create and manipulate tables, insert data, retrieve data, and perform various operations on your todo list.

## Getting Started

To use these SQL queries, you'll need access to an Oracle Database. You can execute these queries using SQL*Plus, SQL Developer, or any other Oracle Database client.

### Prerequisites

- Access to an Oracle Database.
- SQL client (e.g., SQL*Plus, SQL Developer).

## Queries

### Creating Sequences and Tables

- `CREATE SEQUENCE my_sequence`: Creates a sequence for generating unique IDs.
- `CREATE TABLE todo_list`: Creates a table for storing todo list items.

### Inserting Data

- `INSERT INTO todo_list`: Inserts todo list items.
  
### Retrieving Data

- `SELECT`: Retrieves todo list items.

### Deleting Data

- `DELETE FROM todo_list`: Deletes todo list items.

### Updating Data

- `UPDATE todo_list`: Updates todo list items.

### Filtering and Sorting Data

- `SELECT`: Filters and sorts todo list items.

### Counting and Distinct

- `SELECT COUNT(*)`: Counts todo list items.
- `SELECT DISTINCT`: Retrieves distinct todo list items.

### Aggregate Functions

- `SELECT SUM`, `AVG`, `MAX`, `MIN`: Performs aggregate functions on data.

### Adding Columns

- `ALTER TABLE`: Adds columns to the todo list table.

### Creating Additional Tables

- `CREATE TABLE list_content`: Creates a table for additional content related to todo list items.

### Joining Tables

- `JOIN`, `LEFT JOIN`, `INNER JOIN`: Combines todo list and additional content.

## Usage

1. Clone this repository.
2. Connect to your Oracle Database.
3. Execute the SQL queries using your SQL client.

## Contributing

Feel free to contribute to this project by opening issues or submitting pull requests. Your contributions are welcome!

## Acknowledgments

- Thanks to Oracle Database for providing a powerful database platform.

