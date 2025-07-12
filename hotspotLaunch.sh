my_ip=$(
  ifconfig \
    | sed -En 's/127\.0\.0\.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' \
    | awk -F. '$1==192 && $2==168 && $3!=1 && $4!=1 { print; exit }'
)
echo $my_ip

qrencode -m 2 -t utf8 <<< "http://$my_ip:1420/"

cd ./tauri/
screen -wipe
screen -dms node npm run dev -- --host
