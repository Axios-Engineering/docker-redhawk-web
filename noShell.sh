#!/bin/bash

source /bootstrap.sh

/var/redhawk/web/bin/pyvenv supervisord --nodaemon --pidfile /var/redhawk/web/supervisord.pid -c /etc/redhawk-web/supervisord.conf

