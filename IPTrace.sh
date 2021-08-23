#!/bin/bash


apt install figlet

apt install jq

clear
sleep 1
echo "------------------------------------------------
                        |
               |I|P|L|O|C|A|T|O|R|
                 |B|Y| |A|G|A|M|
"
echo "------------------------------------------------"
      
echo "........"
echo "INSTAGRAM @cyber____security__ "

sleep 2

if [ "$1" == "" ]

then


      echo ""
      echo "USAGE : $0 IP (like :  203.192.X.X ) "
      echo ""
      exit


fi

location=$(curl http://ip-api.com/json/$1  -s )
status=$(echo $location | jq ' .status ' -r    )
 if [ $status == "success" ]
then
echo ""
city=$(echo $location | jq '.city' -r )
echo "CITY : $city "
echo ""
region=$(echo $location | jq '.regionName' -r )
echo "REGION : $region "
echo ""
country=$(echo $location | jq '.country ' -r)
echo "COUNTRY : $country"
echo ""
fi
