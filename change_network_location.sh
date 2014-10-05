#!/bin/sh

ssid=`networksetup -getairportnetwork en0 | cut -c 24-`
echo "detected $ssid network..."
if [ $ssid = "devFarm" ]
then
    location="futur3"
elif [ $ssid = "xpeppers_tn" ]
then
    location="XPeppersOffice"
elif [ $ssid = "cabernet" ]
then
    location="Home"
else
    location="Automatic"
fi


newloc=`/usr/sbin/scselect ${location} | sed 's/^.*(\(.*\)).*$/\1/'`
echo "Network location selected: ${newloc}"

if [ ${location} != ${newloc} ]
then
    exit 1
fi

exit 0