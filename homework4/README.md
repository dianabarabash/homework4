Hometask #4 (12/10)
===================

Vagrant task
------------

1. Create AWS EC2 instance using ubuntu 22.04 image ami-053b0d53c279acc90
2. Create user “adminuser”
3. Set password for “adminuser” (in secure way! see documentation)
4. Grant for “adminuser” sudoer permission
5. Create user “poweruser”
6. Allow poweruser login without password  (see /etc/passwd manual)
7. Grant for “poweruser” permission for iptables command (see /etc/sudoers man)
8. Allow “poweruser” to read home directory of “adminuser”
9. Create softlink to file /etc/mtab in poweruser home directory (see ln manual)

Guide
-----

1. Login to the EC2 instance
```bash
ssh -i ../diana-key-pair.pem ubuntu@ip-address-ec2-instance
```

2. Change user to adminuser and write password diana
```bash
su adminuser
```

2. Enter into sudo mode and write password diana again
```bash
sudo -s
```

4. Change user to poweruser with no password
```bash
su poweruser
```

5. Ensure that poweruser has sudo access to the iptables chain list
```bash
sudo /sbin/iptables -L
```

6. List contents of adminuser home directory
```bash
ls -l /home/adminuser
```

7. Check symbolic link
```bash
ls -l /home/poweruser/mtab
```
