# ArchLinux Install Scripts  
_Starting with partitioning the disk_  

---  

# Usage:  
  - _TODO: Fill usage, just getting started so I'll begin with script docs and backfill_  

## Documentation:  
  - __ask_disk.sh:__  
    Prompt the user for which desk the called script should operate on  
  - __prep_disk.sh:__  
    Format and label the specified disk with a basic partition configuration:  
        200M: BOOT  
        remainder: ROOT  
  - __reset.sh:__  
    Delete all of the partitions and rewrite as an empty `dos` partition table
