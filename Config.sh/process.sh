#!/bin/bash -
#########################################################################################
# process.sh
# version:3.1
# update:20180523
#########################################################################################
function egw_manage() {
    spawn-fcgi -a 127.0.0.1 -p 8089 -f /root/eGW/OMC/egw_manage
}

function egw_report() {
    /root/eGW/OMC/egw_report &
}

function egw_manage_logger() {
    /root/eGW/OMC/egw_manage_logger &
}

function egw_monitor() {
    /root/eGW/OMC/egw_monitor &
}

function ltegwd() {
    /root/eGW/ltegwd 0 1 &
}
function process() {
    egw_manage
    egw_manage_logger
    egw_report
    egw_monitor
    ltegwd
}
