#!/bin/bash
# this script prints out my ip address and mask for the lan interface and the lxd bridge interface

# gather show the ens33 (LAN) ip address
echo -n "LAN IP ADDRESS:  "
ip a s ens33 | awk '/inet /{print$2}'

# gather and show the ip address for the lxdbr0 (container bridge) interface
echo -n "LXD Bridge IP ADDRESS:  "
ip a s lxdbr0 | awk '/inet /{print$2}'
