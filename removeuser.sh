#!/bin/bash

USERNAME='mdryden'
NAME='Mary Dryden'
TICKET='180920-13979'

if egrep -i $USERNAME /etc/passwd > /dev/null
	then usermod -L -s /bin/false -c "$NAME disabled ticket $TICKET" $USERNAME
		egrep -i $USERNAME /etc/passwd
	else echo "$USERNAME not found in the passwd file"
fi


