# Linux Cron Cheatsheet: Schedule and Manage Cron Jobs for DevOps

## Introduction
This cheatsheet provides examples of managing cron jobs on Linux, including scheduling, editing, and troubleshooting automated tasks.

## Table of Contents
- [Linux Cron Cheatsheet: Schedule and Manage Cron Jobs for DevOps](#linux-cron-cheatsheet-schedule-and-manage-cron-jobs-for-devops)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. View Current Cron Jobs](#1-view-current-cron-jobs)
    - [2. Edit Crontab](#2-edit-crontab)
    - [3. Cron Job Format](#3-cron-job-format)
    - [4. Schedule a Job to Run Every Minute](#4-schedule-a-job-to-run-every-minute)
    - [5. Schedule a Job Daily](#5-schedule-a-job-daily)
    - [6. Schedule a Job Weekly](#6-schedule-a-job-weekly)
    - [7. Schedule a Job Monthly](#7-schedule-a-job-monthly)
    - [8. Run a Job at a Specific Time](#8-run-a-job-at-a-specific-time)
    - [9. List System Cron Jobs](#9-list-system-cron-jobs)
    - [10. Log Cron Output](#10-log-cron-output)

<a id="view-cron"></a>
### 1. View Current Cron Jobs  
```
crontab -l
```

<a id="edit-crontab"></a>
### 2. Edit Crontab  
```
crontab -e
```

<a id="cron-format"></a>
### 3. Cron Job Format  
```
# m h dom mon dow command
```

<a id="every-minute"></a>
### 4. Schedule a Job to Run Every Minute  
```
* * * * * /path/to/script.sh
```

<a id="daily-job"></a>
### 5. Schedule a Job Daily  
```
0 2 * * * /path/to/daily-backup.sh
```

<a id="weekly-job"></a>
### 6. Schedule a Job Weekly  
```
0 3 * * 0 /path/to/weekly-report.sh
```

<a id="monthly-job"></a>
### 7. Schedule a Job Monthly  
```
0 4 1 * * /path/to/monthly-cleanup.sh
```

<a id="specific-time"></a>
### 8. Run a Job at a Specific Time  
```
30 5 15 6 * /path/to/special-task.sh
```

<a id="list-system-cron"></a>
### 9. List System Cron Jobs  
```
sudo cat /etc/crontab
```

<a id="log-cron-output"></a>
### 10. Log Cron Output  
```
* * * * * /path/to/script.sh >> /var/log/cron.log 2>&1
```
