#!/bin/sh

name="zmq_adapter_uart_$ttydev"
cmd="zmq_adapter --file /dev/$ttydev -p >tcp://127.0.0.1:43031 -s >tcp://127.0.0.1:43030 -f sbp"
dir="/"
user=""

case "$1" in
  start)
    /bin/stty -F /dev/$ttydev $baudrate raw -echo -onlcr
    ;;
esac

source /etc/init.d/template_process.inc.sh

