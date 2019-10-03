#!/bin/sh

ENDERECOS="0.0.0.0"
INTERFACE=ipsec0000
CONTADOR=1

while [ $CONTADOR -le 2 ]
do
    for ENDERECO in $ENDERECOS
    do
	ping -c1 $ENDERECO >/dev/null 2>/dev/null
	if [ $? -eq 0 ]
	then
	    exit 0
	fi
    done

    if [ $CONTADOR -le 1 ]
    then
	/sbin/ifconfig $INTERFACE down
	sleep 10
	/sbin/ifconfig $INTERFACE up
	sleep 10
    fi

    CONTADOR=`expr $CONTADOR + 1`
done
