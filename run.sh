# run shadowsocks server
shadowsocks-server -server_port 8888 -method aes-256-cfb -password ${PASSWORD} &
# run kcp server
server -t 127.0.0.1:8888 -l :29900 --mode ${MODE} --key ${PASSWORD} 
