#!/bin/bash

-l                # used for list
-o                # used for online
/                 # Root directory (everything starts here).
/home             # User home directories.
/etc              # Configuration files.
/var              # Logs and variable data.
/bin              # Essential system binaries and other executable programs.
/usr              # User-related programs.
/tmp              # Temporary files.
/dev              # Device files, typically controlled by OS
/cgroup           # Control group hierachy
exit              # Close current shell
pwd               # Print working directory.
ls                # List files and directories.
cd                # Change directory.
mkdir             # Create a directory.
rm                # Remove files or directories.
/lib              # Shared libraries needed by system programs.
/lib64            # System libraries, 64bit
/media            # Used to mount removable media.
/srv              # Service data.
/srv/www          # Web server files.
/run              # Runtime process data.
/lost+found	      # File recovery.
/Export           # Shared files systems.
/root             # The home directory for the root account.
/opt              # Optional or third party software.
/proc             # Provides info about running processes
top               # Real-time process monitoring
htop              # Better visual alternative (install with `sudo apt install htop`)
vmstat            # System performance metrics
ps aux | grep apache             # Find all Apache processes
kill -9 12345                    # Kill process with ID 12345
pkill -9 apache                  # Kill all Apache processes
tar -cvf archive.tar mydir/      # Create tar archive
tar -xvf archive.tar             # Extract tar file
tar -czvf archive.tar.gz mydir/  # Compress with gzip
tar -xvzf archive.tar.gz         # Extract .tar.gz
df -h                            # Check disk space in human-readable format
du -k                            # Display size
du -h                            # Display size in human readable form
du -sh *                         # Check size of each file in the current directory
crontab -l                       # List scheduled cron jobs
crontab -e                       # Edit cron jobs
find / -name "*.log"             # Find all .log files
find /tmp -type f -name "*.tmp" -delete  # Delete all .tmp files in /tmp
command &      # Run in background
jobs           # List background jobs
fg %1          # Bring job 1 to the foreground
disown -h %1   # Keep process running after logging out
sudo -i        # Switch to the root
su -root       #same as sudo -i
#APT(Advanced Package Tool) Commands
sudo apt update          # Update package list
sudo apt upgrade         # Upgrade installed packages
sudo apt install nano    # Install a package
sudo apt remove nano     # Remove a package

#DPKG (Debian Package Manager) commands
sudo dpkg -i package.deb  # Install a .deb package manually
sudo dpkg -r package_name  # Remove a package


sudo systemctl start atd          # Start the service
sudo systemctl enable atd         # Enable on boot

#DNF(Dandified Yum) commands
sudo dnf update         # Update packages
sudo dnf install nano   # Install a package
sudo dnf remove nano    # Remove a package

#YUM(Yellowdod Updater Modified) commands
sudo yum update         # Update packages
sudo yum install nano   # Install a package
sudo yum remove nano    # Remove a package

#RPM (Red Hat Package Manager) commands
sudo rpm -i package.rpm  # Install an RPM package
sudo rpm -e package_name  # Remove a package








