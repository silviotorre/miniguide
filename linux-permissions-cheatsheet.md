# Linux Permissions, Ownership & Sudoers Cheatsheet: Essential Commands for DevOps

## Introduction
This cheatsheet provides common Linux commands for managing file permissions, changing ownership, and configuring sudoers. It is designed for DevOps professionals managing Linux systems.

## Table of Contents
1. [Change File Permissions (chmod)](#chmod)
2. [Change File Ownership (chown)](#chown)
3. [Recursively Change Ownership](#chown-recursive)
4. [View File Permissions](#view-permissions)
5. [Add User to Sudoers](#add-sudoer)
6. [Edit Sudoers File](#edit-sudoers)
7. [List Sudoers](#list-sudoers)
8. [Reset Permissions to Default](#reset-permissions)
9. [Find Files with Specific Permissions](#find-files)
10. [Audit File Permissions](#audit-permissions)

<a id="chmod"></a>
### 1. Change File Permissions (chmod)
```
chmod 755 filename
```

<a id="chown"></a>
### 2. Change File Ownership (chown)
```
chown user:group filename
```

<a id="chown-recursive"></a>
### 3. Recursively Change Ownership
```
chown -R user:group /path/to/directory
```

<a id="view-permissions"></a>
### 4. View File Permissions
```
ls -l filename
```

<a id="add-sudoer"></a>
### 5. Add User to Sudoers
```
usermod -aG sudo username
```

<a id="edit-sudoers"></a>
### 6. Edit Sudoers File  
*Use visudo for safe editing.*
```
visudo
```

<a id="list-sudoers"></a>
### 7. List Sudoers
```
grep '^sudo' /etc/group
```

<a id="reset-permissions"></a>
### 8. Reset Permissions to Default  
*Example: set default for directories and files*  
```
find /path/to/directory -type d -exec chmod 755 {} \;
find /path/to/directory -type f -exec chmod 644 {} \;
```

<a id="find-files"></a>
### 9. Find Files with Specific Permissions
```
find / -perm 644
```

<a id="audit-permissions"></a>
### 10. Audit File Permissions  
```
ls -lR /path/to/directory | less
```
