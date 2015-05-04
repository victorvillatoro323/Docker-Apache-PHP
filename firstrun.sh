#!/bin/bash

# Check if config exists. If not, copy in the sample config
if [ -f /config/proxy-config.conf ]; then
  echo "Using existing config file."
else
  echo "Creating config from template."
  mv /etc/apache2/000-default.conf /config/proxy-config.conf
fi

# Copy Adminer to the /web folder
if [ -f /var/www/adminer/index.php ]; then
  echo "Using existing file."
else
  echo "Copying  index.php file."
  cp /root/index.php /var/www/adminer/index.php
#  cp /root/.htaccess /var/www/adminer/.htaccess
fi

# Add Persistent Cron Configuration Capability
if [ -f /config/crons.conf ]; then
  echo "Using existing Cron config file."
#  crontab /config/crons.conf
#  cron
else
  echo "Copying blank  Cron config file."
  cp /root/crons.conf /config/crons.conf
#  crontab /config/crons.conf
#  cron
fi


