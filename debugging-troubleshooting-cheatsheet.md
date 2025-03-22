# Debugging & Troubleshooting Cheatsheet

A guide to common debugging techniques and tools for troubleshooting systems.

## 🐞 General Debugging
- Check logs: `tail -f /var/log/<logfile>` (Linux) or Event Viewer (Windows).
- Use `ping` to test network connectivity.
- Use `traceroute` (Linux) or `tracert` (Windows) to trace network paths.

## 🛠️ System Diagnostics
- `top` or `htop` - Monitor system processes and resource usage.
- `df -h` - Check disk space usage.
- `free -m` - Check memory usage.

## 🔧 Network Troubleshooting
- `netstat -tuln` - List open ports and listening services.
- `curl -v <url>` - Test HTTP connections.
- `nslookup <domain>` or `dig <domain>` - DNS resolution.

## 💻 Application Debugging
- Use `strace` (Linux) to trace system calls.
- Use `gdb` for debugging compiled applications.
- Check application-specific logs for errors.

## 🐳 Docker Debugging
- `docker ps` - List running containers.
- `docker logs <container_id>` - View logs for a specific container.
- `docker exec -it <container_id> /bin/bash` - Access a running container's shell.
- `docker inspect <container_id>` - Get detailed information about a container.

## 🪟 Windows Server Troubleshooting
- Use `sfc /scannow` to check and repair system files.
- Use `chkdsk /f` to check and fix disk errors.
- Use Task Manager or Resource Monitor to analyze performance issues.
- Check Event Viewer for system and application logs.

## 📶 Wi-Fi Troubleshooting
- Use `ipconfig /all` (Windows) or `iwconfig` (Linux) to check Wi-Fi settings.
- Restart the router and reconnect devices.
- Use `ping` to test connectivity to the router and external sites.
- Check for interference from other devices or networks.

## 💻 Common Laptop Maintenance
- Keep the operating system and software up to date.
- Regularly clean temporary files and unused programs using tools like Disk Cleanup (Windows) or `bleachbit` (Linux).
- Check battery health and optimize power settings using built-in tools
- Clean the keyboard and vents to prevent overheating.
- Run approved antivirus scans to ensure system security and performance. If the antvirusi is microsoft, use `mpcmdrun.exe` to run a full scan.
- Backup important data following appoved policies and procedures. Dont do otherwise.
- Check for driver updates to maintain hardware compatibility.
- If chocolatey is installed, use `choco upgrade all` to update all installed packages.
- Use `choco outdated` to check for outdated packages.
- Use `choco list --local-only` to list all installed packages.
- You can also update powershell to the latest version using `winget upgrade Microsoft.Powershell`.