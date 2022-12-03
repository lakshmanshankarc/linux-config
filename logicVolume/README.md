


This Readme contains details on How to View and Mount a logicVolume in Linux Based Operating System


Logical Volumes allow us to extend the Physical Volume By using Volume Group that Merge the Newly added Storage and Create LogicalVolume


[LogicalVolme information Redhat](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/ch-lvm#s1-lvm2-intro-whatis)


1. To view the unmounted VOlumes in the Operating System
 
 ```sh
 lsblk  # This command display information about block devices (Except ram)
 ```


 2. To view the mounted Volumes 
  ```sh
df -h #-h for human readable format
 ```


3. Install Logic Volume Manager

```sh
sudo apt install lvm2
```
Verify Installation with 

```sh
lvm version
```


Creating A logic Volume mainly includes three steps
1. Creating Physical Volme 
2. Volume Group 
3. Logic Volume (Then Mount to a Mountpoint using fstab)



Before Creating a physical Volume list the Available Volume

```sh
sudo pvs 
#or 
sudo pvscan
```

Now list all the block devices installed on the machine By executing the following Command

```sh
sudo lvmdiskscan
```

Now You can able to see the Unmounted Partion If your partition is mounted unmount it by using `umount`
```sh
sudo umount /dev/sd4  #Replace /dev/with your vol
```


1. Now Create The physical Volume

```sh
sudo pvcreate /dev/sda4  #now you can verify wiith pvscan 
```
2. Now Create the VOlume Group

Same As Pv List the Old Volumes by
```sh
sudo vgs #or
sude vgdisplay
```


Create Volume Group by
```sh
sudo vgcreate hardVol /dev/sda4    #HardVol is the Name of the VG and /dev/sda4 is PhysicalVolme

#for more than One PV
sudo vgcreate VG_name /dev/sdc /dev/sda /dev/sdb
```

We Can Active and DeActive the Volume Group By using -a (y/n) with vgchange

```sh
sudo vgchange -a y hardVol
```



Now the Third Part Create Logical Volume But Before Check for available lv By

```sh
sudo lvs #or 
sudo lvscan  #or
sudo lvdisplay
```

Create Logic Volume
```sh
sudo lvcreate -L 45G -n HardLoc hardVol
```
`-L for Size of the Volume 
-n For the Name of the Volume`



Now Make the filesystem By 
```sh
sudo mkfs.ext4 /dev/hardVol/HardLoc
```

mkfs-MakeFileSystem .Name Of the FileSystem (exfat,NTFS,FAT16,FAT32)


Make New Directory for mounting the Logical Volume
```sh
cd /media
sudo mkdir /mt_point/HardVol
```


Mount the Created Logica Volume By the Following Command
```
sudo mount /dev/<LV_name>/<VG_group> /mountpoint
```



For Permanent Mount Make entry in fstab

```sh
sudo vi fstab
/dev/hardVol/HardLoc /media/overMount ext4 defaults 0 0
```

Now Check the Logic Volume By

```sh
sudo lsblk | grep HardLoc  #<Replace> HardLoc with your Volume Group

```


Thank You

