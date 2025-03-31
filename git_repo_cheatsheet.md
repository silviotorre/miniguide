# Git Repository Cheatsheet

## Best Practices
1. **Use a `README.md`**: Provide a clear description of your project, usage instructions, and any relevant details.
2. **Add a `LICENSE`**: Specify the terms under which your code can be used.
3. **Use `.gitignore`**: Exclude unnecessary files (e.g., logs, build artifacts) from the repository.
4. **Use `.gitkeep`**: Include empty directories in the repository (Git doesn't track empty folders).
5. **Commit Often**: Make small, meaningful commits with descriptive messages.
6. **Branching**: Use branches for features, bug fixes, and experiments.
7. **Pull Requests**: Use pull requests for code reviews and collaboration.
8. **Tagging**: Use tags for releases (e.g., `v1.0.0`).

---

## Key Files

### `README.md`
- Purpose: Describe the project.
- Example:
  ```markdown
  # Project Name
  A brief description of the project.

  ## Installation
  Steps to install the project.

  ## Usage
  Examples of how to use the project.
  ```

### `LICENSE`
- Purpose: Define the terms of use for your code.
- Example: Use [choosealicense.com](https://choosealicense.com/) to select a license.

### `.gitignore`
- Purpose: Exclude files from being tracked by Git.
- Example:
  ```
  # Logs
  *.log

  # Node.js
  node_modules/

  # Python
  __pycache__/
  ```

### `.gitkeep`
- Purpose: Track empty directories.
- Example: Add an empty `.gitkeep` file to an otherwise empty folder.

---

## Common Git Commands
- Initialize a repository: `git init`
- Add files: `git add .`
- Commit changes: `git commit -m "Message"`
- Create a branch: `git branch branch-name`
- Switch branches: `git checkout branch-name`
- Merge branches: `git merge branch-name`
- Push to remote: `git push origin branch-name`
- Pull from remote: `git pull origin branch-name`

---

## Scripts for Initializing a New Repository

### Bash Script
```bash
#!/bin/bash
# filepath: c:\Users\Utente\OneDrive\Documenti\GitHub\miniguide\init_git_repo.sh

# Initialize a new Git repository
mkdir "$1"
cd "$1" || exit
git init

# Create essential files
echo "# $1" > README.md
echo "Add your license text here." > LICENSE
echo -e "# Logs\n*.log\n\n# Node.js\nnode_modules/\n\n# Python\n__pycache__/" > .gitignore

# Add files to Git
git add .
git commit -m "Initial commit"

echo "Git repository initialized in $1"
```

### PowerShell Script
```powershell
# filepath: c:\Users\Utente\OneDrive\Documenti\GitHub\miniguide\init_git_repo.ps1

# Initialize a new Git repository
param (
    [string]$RepoName
)

New-Item -ItemType Directory -Path $RepoName
Set-Location -Path $RepoName
git init

# Create essential files
Set-Content -Path "README.md" -Value "# $RepoName"
Set-Content -Path "LICENSE" -Value "Add your license text here."
Set-Content -Path ".gitignore" -Value "# Logs`n*.log`n`n# Node.js`nnode_modules/`n`n# Python`n__pycache__/"

# Add files to Git
git add .
git commit -m "Initial commit"

Write-Host "Git repository initialized in $RepoName"
```

---

## How to Use the Scripts

### Bash Script
1. Save the script as `init_git_repo.sh`.
2. Make it executable: `chmod +x init_git_repo.sh`.
3. Run the script with the desired repository name as an argument:
   ```bash
   ./init_git_repo.sh MyNewRepo
   ```

### PowerShell Script
1. Save the script as `init_git_repo.ps1`.
2. Open PowerShell and navigate to the script's directory.
3. Run the script with the desired repository name as a parameter:
   ```powershell
   .\init_git_repo.ps1 -RepoName "MyNewRepo"
   ```

Note: Ensure you have Git installed and available in your system's PATH before running the scripts.

