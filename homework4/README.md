Hometask #4 (12/10)
===================

Guide
-----
Start instance
```bash
./run-and-provision.sh
```

1. Login to the EC2 instance
```bash
ssh -i ../diana-key-pair.pem ubuntu@ip-address-ec2-instance
```

2. Change user to adminuser and write password diana
```bash
su adminuser
```

3. Enter into sudo mode and write password diana again
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
