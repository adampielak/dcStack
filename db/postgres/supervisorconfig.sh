#!/bin/bash -evx

#SUPERVISORD
cp ./conf/rsyslogd.conf /etc/supervisor/conf.d/rsyslogd.conf
cp ./conf/postgres.conf /etc/supervisor/conf.d/postgres.conf

