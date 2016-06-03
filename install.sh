#!/bin/bash

# Install dependencies
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
apt-get -y install nodejs pwgen git vim
apt-get clean

# Setup log rotation to not spend up entire storage on logs
cat <<EOM > /etc/logrotate.d/mailtrain
/var/log/mailtrain.log {
    daily
    rotate 12
    compress
    delaycompress
    missingok
    notifempty
    copytruncate
    nomail
}
EOM