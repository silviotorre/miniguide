# SQL Cheatsheet: Essential Commands for Database Administration

## Introduction
This cheatsheet provides common SQL commands useful for database creation, management, and troubleshooting. It is intended for DevOps personnel managing SQL databases on-premises or in the cloud.

## Table of Contents
- [SQL Cheatsheet: Essential Commands for Database Administration](#sql-cheatsheet-essential-commands-for-database-administration)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Create Database](#1-create-database)
    - [2. Drop Database](#2-drop-database)
    - [3. Create Table](#3-create-table)
    - [4. Insert Data](#4-insert-data)
    - [5. Select Data](#5-select-data)
    - [6. Update Data](#6-update-data)
    - [7. Delete Data](#7-delete-data)
    - [8. Create Index](#8-create-index)
    - [9. Backup Database](#9-backup-database)
    - [10. Restore Database](#10-restore-database)

<a id="create-database"></a>
### 1. Create Database
```sql
CREATE DATABASE MyDatabase;
```

<a id="drop-database"></a>
### 2. Drop Database
```sql
DROP DATABASE MyDatabase;
```

<a id="create-table"></a>
### 3. Create Table
```sql
CREATE TABLE Employees (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50)
);
```

<a id="insert-data"></a>
### 4. Insert Data
```sql
INSERT INTO Employees (Id, Name, Department) VALUES (1, 'Alice', 'IT');
```

<a id="select-data"></a>
### 5. Select Data
```sql
SELECT * FROM Employees;
```

<a id="update-data"></a>
### 6. Update Data
```sql
UPDATE Employees SET Department = 'HR' WHERE Id = 1;
```

<a id="delete-data"></a>
### 7. Delete Data
```sql
DELETE FROM Employees WHERE Id = 1;
```

<a id="create-index"></a>
### 8. Create Index
```sql
CREATE INDEX idx_department ON Employees (Department);
```

<a id="backup-database"></a>
### 9. Backup Database
```sql
BACKUP DATABASE MyDatabase TO DISK = 'C:\Backups\MyDatabase.bak';
```

<a id="restore-database"></a>
### 10. Restore Database
```sql
RESTORE DATABASE MyDatabase FROM DISK = 'C:\Backups\MyDatabase.bak';
```
