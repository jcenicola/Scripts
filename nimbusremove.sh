#!/bin/bash
#
#  Script to uninstall Nimbus for linux servers
#
#  Make a backup
usr/bin/tar zcvf nimbus-backup-$(date +%Y-%m-%d).tgz /opt/nim* /etc/init.d/nimbus
#
#  Review the running processes
#
#ps aux | grep nim
#
#  Removal One-liner
#
/opt/nim*/bin/inst_init.sh remove && ps aux | grep -i [n]im || rm -f /etc/init.d/nimbus && rm -fR /opt/nim{bus,soft} && rm -fR /root/.rackspace/*nimbus* /root/.rackspace/nimbus*

