#1 Create the folder /tmp/Backup
mkdir /tmp/Backup

#2 Copy all the c and python program files (.c and .py files )into the above folder
cp *.c *.py /tmp/Backup/

#3 Navigate to /tmp folder.
cd /tmp

#4 Use the tar command to compress the Backup the folder into a gz compressed tar archive named Backup -2025-03-28.tar.gz
tar -czvf Backup-2025-03-28.tar.gz Backup/

#5 Mount your pendrive using the udiskctl command.(Assume your pendrive is connected to PC.)
udiskctl mount -b /dev/sdb1

#6 Move the archive Backup Backup -2025-03-28.tar.gz to the pendrive .(Assume that the pendrive is mounted at /media/RVU/Pendrive)
mv Backup-2025-03-28.tar.gz /media/RVU/Pendrive/

#7 Unmount the pendrive.
udiskctl unmount -b /dev/sdb1

#8 Delete the folder Backup
rm -rf /tmp/Backup

