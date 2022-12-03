#list all block except ram
lsblk

#Mounted Partitions
df -h

#Installing Logic Volume Manager
sudo apt install lvm2

#Checking for existing Physical Volumes
sudo pvscan
