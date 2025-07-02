# File Backup Script

## Description
A simple shell script to back up your important files by creating compressed archives with timestamps.

This script is designed to run on Windows Git Bash using Unix-style paths.

## How to Use

1. **Edit** `backup-script.sh` and set:
   - `SOURCE_DIR` to the folder you want to back up (use Git Bash style path, e.g., `/c/Users/Shobana/Documents`)
   - `BACKUP_DIR` to where you want backups saved (e.g., `/c/Users/Shobana/backup`)

2. Make the script executable:

```bash
chmod +x backup-script.sh
```

3. Run the script manually:

```bash
./backup-script.sh
```

4. You can schedule this script to run automatically using **Windows Task Scheduler**:

   - Program: `C:\Program Files\Git\bin\bash.exe`
   - Arguments: `--login -c "/c/Users/Shobana/file-backup/backup-script.sh"`
   - Adjust the path according to your username and script location.

## Notes

- Make sure Git Bash is installed.
- Paths must be in Unix format (forward slashes, `/c/` prefix).
- The script compresses the entire contents of the source directory into a `.tar.gz` file named with a timestamp.

## Example Output

```
Backup successful: /c/Users/Shobana/backup/backup_2025-07-02_14-30-45.tar.gz
```
