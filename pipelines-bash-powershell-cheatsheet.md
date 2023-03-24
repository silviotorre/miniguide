# Pipelines in Bash & PowerShell

## 📌 Introduction
Pipelines allow you to pass the output of one command as input to another, enabling efficient data processing. This cheatsheet provides examples of sorting, filtering, and presenting data using pipelines in Bash and PowerShell.

---

## 🐧 Bash Examples

### Sorting
```bash
cat file.txt | sort
```
Sorts the contents of `file.txt` alphabetically.

### Filtering
```bash
cat file.txt | grep "pattern"
```
Filters lines in `file.txt` that match the specified pattern.

### Presenting Data
```bash
ls -l | awk '{print $9, $5}'
```
Displays the file name and size from the `ls -l` command output.

---

## 🖥️ PowerShell Examples

### Sorting
```powershell
Get-Content file.txt | Sort-Object
```
Sorts the contents of `file.txt` alphabetically.

### Filtering
```powershell
Get-Content file.txt | Where-Object { $_ -match "pattern" }
```
Filters lines in `file.txt` that match the specified pattern.

### Presenting Data
```powershell
Get-ChildItem | Select-Object Name, Length
```
Displays the file name and size from the `Get-ChildItem` command output.

---

## 🎯 Conclusion
Pipelines are powerful tools for chaining commands and processing data efficiently. Use these examples as a starting point to build more complex workflows.
