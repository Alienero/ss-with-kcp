# run shadowsocks server
shadowsocks-server -p 8888 -m aes-256-cfb -k ${PASSWORD} &
# run kcp server
server -t 127.0.0.1:8888 -l :29900 --mode ${MODE} --key ${PASSWORD} 
