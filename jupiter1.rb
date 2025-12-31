pwd
# Output: /home/username
# Shows your current directory path
#
#
ls              # List files in current directory
ls -l           # Detailed list with permissions, size, etc.
ls -la          # List ALL files including hidden ones (starting with .)
ls -lh          # Human-readable file sizes
ls /var/log     # List specific directory


cd /home        # Go to absolute path
cd Documents    # Go to relative path
cd ..           # Go up one directory
cd ~            # Go to home directory
cd -            # Go to previous directory

touch file.txt          # Create single file
touch file1.txt file2.txt  # Create multiple files
touch {1..5}.txt        # Create file1.txt through file5.txt


cp source.txt destination.txt          # Copy file
cp -r dir1 dir2                        # Copy directory recursively
cp file.txt /home/user/Documents/      # Copy to specific location
cp *.txt backup/                       # Copy all .txt files



  mv oldname.txt newname.txt             # Rename file
mv file.txt /tmp/                      # Move file
mv *.pdf Documents/                    # Move all PDFs
mv -i file.txt dir/                    # Interactive (ask before overwrite)


rm file.txt                    # Remove file
rm -r directory/               # Remove directory recursively
rm -f file.txt                 # Force remove (no confirmation)
rm -rf dir/                    # ⚠️ DANGEROUS: Force remove directory
rm *.tmp                       # Remove all .tmp files

mkdir newfolder               # Create single directory
mkdir -p dir1/dir2/dir3       # Create nested directories
mkdir project{1..3}           # Create project1, project2, project3


cat file.txt                  # Display entire file
cat file1.txt file2.txt       # Display multiple files
cat > newfile.txt             # Create file from keyboard input (Ctrl+D to save)
cat file.txt | grep "error"   # Pipe output to grep



less largefile.log            # View file page by page
# Less commands: space=next page, b=previous page, q=quit, /=search
more file.txt                 # Simpler pager (older)



head -20 file.log            # First 20 lines
tail -15 file.log            # Last 15 lines
tail -f /var/log/syslog      # Follow (real-time) log file updates





nano file.txt                # Simple editor (Ctrl+X to exit)
vim file.txt                 # Powerful editor (press i to insert, :wq to save and quit)






chmod 755 script.sh          # rwxr-xr-x (owner:rwx, group:rx, others:rx)
chmod +x script.sh           # Add execute permission
chmod u+r file.txt           # Add read permission for user
chmod go-w file.txt          # Remove write permission for group & others

# Permission numbers:
# 4 = read (r), 2 = write (w), 1 = execute (x)
# 755 = owner:7(rwx), group:5(r-x), others:5(r-x)
#
#
#
#


chown user:group file.txt    # Change owner and group
chown user file.txt          # Change owner only
chown :developers script.sh  # Change group only
chown -R user:group /data/   # Recursively change ownership



uname -a                     # All system info
uname -r                     # Kernel release
uname -m                     # Machine hardware

df -h                        # Human readable disk usage
df -i                        # Inode usage
df -T                        # Show filesystem type



du -sh /home                 # Summary of directory size
du -h --max-depth=1          # Sizes of immediate subdirectories
du -sh *                     # Size of all files/dirs in current location

free -h                      # Human readable memory info
free -m                      # Display in MB



top                          # Dynamic process list (q to quit)
htop                         # Enhanced top (if installed)
# In top: M=sort by memory, P=sort by CPU, k=kill process
#
#
#
#
ps aux                       # All running processes
ps -ef | grep nginx          # Find specific process
ps -u username               # User's processes




kill 1234                    # Terminate process with PID 1234
kill -9 1234                 # Force kill (SIGKILL)
killall firefox              # Kill all processes named firefox
pkill -f "python script.py"  # Kill by process name pattern



find /home -name "*.txt"                # Find by name
find . -type f -size +1M                # Files larger than 1MB
find /var/log -mtime -7                 # Modified in last 7 days
find . -perm 644                        # Find by permissions
find . -exec chmod 755 {} \;            # Execute command on results
