# Azure DevOps Repos Cheatsheet: Manage Your ADO Repositories

## Introduction
This cheatsheet provides essential Azure DevOps CLI commands for managing repositories, branches, and code review processes. It is intended for DevOps professionals working with ADO for source control.

## Table of Contents
- [Azure DevOps Repos Cheatsheet: Manage Your ADO Repositories](#azure-devops-repos-cheatsheet-manage-your-ado-repositories)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. List Repositories](#1-list-repositories)
    - [2. Create a New Repository](#2-create-a-new-repository)
    - [3. Clone a Repository](#3-clone-a-repository)
    - [4. List Branches](#4-list-branches)
    - [5. Create a New Branch](#5-create-a-new-branch)
    - [6. Push a Branch](#6-push-a-branch)
    - [7. Merge a Pull Request](#7-merge-a-pull-request)
    - [8. View Pull Requests](#8-view-pull-requests)
    - [9. Delete a Repository](#9-delete-a-repository)
    - [10. Show Repository Details](#10-show-repository-details)

<a id="list-repos"></a>
### 1. List Repositories  
```
az repos list --output table
```

<a id="create-repo"></a>
### 2. Create a New Repository  
```
az repos create --name <repoName> --project <projectName>
```

<a id="clone-repo"></a>
### 3. Clone a Repository  
```
git clone https://dev.azure.com/<org>/<project>/_git/<repoName>
```

<a id="list-branches"></a>
### 4. List Branches  
```
az repos ref list --repository <repoName> --filter heads/ --output table
```

<a id="create-branch"></a>
### 5. Create a New Branch  
```
git checkout -b <new-branch>
```

<a id="push-branch"></a>
### 6. Push a Branch  
```
git push origin <new-branch>
```

<a id="merge-pr"></a>
### 7. Merge a Pull Request  
```
az repos pr merge --id <prId> --auto-complete
```

<a id="view-pr"></a>
### 8. View Pull Requests  
```
az repos pr list --repository <repoName> --output table
```

<a id="delete-repo"></a>
### 9. Delete a Repository  
```
az repos delete --repository <repoName> --yes
```

<a id="repo-details"></a>
### 10. Show Repository Details  
```
az repos show --repository <repoName>
```
