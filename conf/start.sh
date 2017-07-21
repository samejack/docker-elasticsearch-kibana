#!/bin/bash

service elasticsearch start

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf

