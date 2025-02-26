# Bash, sed & awk Cheatsheet: Essential Command-Line Text Processing

## Introduction
This cheatsheet provides common Bash, sed, and awk commands for text processing and troubleshooting, ideal for DevOps tasks and data manipulation in scripts.

## Table of Contents
1. [Basic bash commands](#basic-bash-commands)
2. [sed: Substitute text](#sed-substitute)
3. [sed: Delete lines](#sed-delete-lines)
4. [sed: Insert lines](#sed-insert-lines)
5. [sed: Append text](#sed-append)
6. [sed: Regex replacement](#sed-regex-replacement)
7. [awk: Print columns](#awk-print-columns)
8. [awk: Sum numerical data](#awk-sum)
9. [awk: Conditional printing](#awk-conditional)
10. [awk: Field separator usage](#awk-field-separator)

<a id="basic-bash-commands"></a>
### 1. Basic bash commands  
**Example:** List files with detailed information.  
```
ls -l
```

<a id="sed-substitute"></a>
### 2. sed: Substitute text  
**Example:** Replace "foo" with "bar" in a file.  
```
sed 's/foo/bar/g' file.txt
```

<a id="sed-delete-lines"></a>
### 3. sed: Delete lines  
**Example:** Remove lines containing "delete".  
```
sed '/delete/d' file.txt
```

<a id="sed-insert-lines"></a>
### 4. sed: Insert lines  
**Example:** Insert "New Line" before lines matching "pattern".  
```
sed '/pattern/i\New Line' file.txt
```

<a id="sed-append"></a>
### 5. sed: Append text  
**Example:** Append "End of Line" after lines matching "pattern".  
```
sed '/pattern/a\End of Line' file.txt
```

<a id="sed-regex-replacement"></a>
### 6. sed: Regex replacement  
**Example:** Replace digits with "#" symbol.  
```
sed 's/[0-9]/#/g' file.txt
```

<a id="awk-print-columns"></a>
### 7. awk: Print columns  
**Example:** Print first and third columns of a file separated by space.  
```
awk '{print $1, $3}' file.txt
```

<a id="awk-sum"></a>
### 8. awk: Sum numerical data  
**Example:** Sum all numbers in the second column.  
```
awk '{sum += $2} END {print sum}' file.txt
```

<a id="awk-conditional"></a>
### 9. awk: Conditional printing  
**Example:** Print lines where the third column is greater than 100.  
```
awk '$3 > 100' file.txt
```

<a id="awk-field-separator"></a>
### 10. awk: Field separator usage  
**Example:** Use comma as a field separator to print first column.  
```
awk -F, '{print $1}' file.csv
```
