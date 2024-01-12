#!/usr/bin/env bash

# Securely set password for adminuser
#
# The following command generates a hash for password diana
# echo $(openssl passwd -1 diana)
# $1$5MbhGU0v$8xCCzHTteE4O.uHmKTPBP.

# Create user adminuser with home directory and securely set password
useradd -m -p '$1$5MbhGU0v$8xCCzHTteE4O.uHmKTPBP.' adminuser

# Grant for adminuser sudoer permission
echo "adminuser ALL=(ALL) ALL" >> /etc/sudoers

# Create user poweruser with home directory
useradd -m poweruser

# Allow poweruser login without password
passwd -d poweruser

# Grant for “poweruser” permission for iptables command (see /etc/sudoers man)
echo "poweruser ALL=(ALL:ALL) /sbin/iptables" >> /etc/sudoers

# Allow “poweruser” to read home directory of adminuser
chmod +r /home/adminuser

# Create softlink to file /etc/mtab in poweruser home directory (see ln manual)
su poweruser -c 'ln -s /etc/mtab /home/poweruser/mtab'
