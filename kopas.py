import shutil 
  
# Source path 
source = "/home/esa/monitor.py"
  
# Destination path 
destination = "/root/backup/"
  
# Copy the content of 
# source to destination 
dest = shutil.copy(source, destination) 
  

# Print path of newly  
# created file 
print("Destination path:", dest)
