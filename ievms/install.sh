#!/bin/sh
#
# Internet Explorer VMs
#
# Installs IE 8, 9, 10, 11



curl -s https://raw.githubusercontent.com/xdissent/ievms/master/ievms.sh | env IEVMS_VERSIONS="8 9 10 11" bash

