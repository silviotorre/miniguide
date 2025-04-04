# Git Cheatsheet: Essential Commands for DevOps

## Introduction
This cheatsheet provides essential Git commands for version control, repository management, and troubleshooting within a DevOps workflow.

## Table of Contents
- [Git Cheatsheet: Essential Commands for DevOps](#git-cheatsheet-essential-commands-for-devops)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. Initialize Repository](#1-initialize-repository)
    - [2. Clone Repository](#2-clone-repository)
    - [3. Check Repository Status](#3-check-repository-status)
    - [4. Add Changes](#4-add-changes)
    - [5. Commit Changes](#5-commit-changes)
    - [6. Push Commits](#6-push-commits)
    - [7. Pull Updates](#7-pull-updates)
    - [8. View Commit Log](#8-view-commit-log)
    - [9. Create Branch](#9-create-branch)
    - [10. Merge Branch](#10-merge-branch)
  - [Bonus: Git Configuration Best Practices](#bonus-git-configuration-best-practices)
    - [Set Global Username and Email](#set-global-username-and-email)
    - [Enable Colored Output](#enable-colored-output)
    - [Set Default Editor](#set-default-editor)
    - [Configure Default Branch Name](#configure-default-branch-name)
    - [View All Configurations](#view-all-configurations)

<a id="initialize-repository"></a>
### 1. Initialize Repository  
```
git init
```

<a id="clone-repository"></a>
### 2. Clone Repository  
```
git clone <repository-url>
```

<a id="check-repository-status"></a>
### 3. Check Repository Status  
```
git status
```

<a id="add-changes"></a>
### 4. Add Changes  
```
git add .
```

<a id="commit-changes"></a>
### 5. Commit Changes  
```
git commit -m "Your commit message"
```

<a id="push-commits"></a>
### 6. Push Commits  
```
git push origin <branch-name>
```

<a id="pull-updates"></a>
### 7. Pull Updates  
```
git pull origin <branch-name>
```

<a id="view-commit-log"></a>
### 8. View Commit Log  
```
git log --oneline
```

<a id="create-branch"></a>
### 9. Create Branch  
```
git branch <new-branch>
```

<a id="merge-branch"></a>
### 10. Merge Branch  
```
git merge <branch-to-merge>
```

## Bonus: Git Configuration Best Practices

### Set Global Username and Email  
```
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Enable Colored Output  
```
git config --global color.ui auto
```

### Set Default Editor  
```
git config --global core.editor "code --wait" # For VS Code
```

### Configure Default Branch Name  
```
git config --global init.defaultBranch main
```

### View All Configurations  
```
git config --list
```
