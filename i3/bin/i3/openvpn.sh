#!/bin/bash

if [ `systemctl is-active openvpn@netherlands43` == 'active' ]; then
	echo "ON"
else
	echo "OFF"
fi
