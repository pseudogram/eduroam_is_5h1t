while true; do
	while ping -c 1 -t 1 8.8.8.8; do
		# echo Connected to internet
		sleep 10
	done
	# echo No connection
	networksetup -setairportpower en0 off
	networksetup -setairportpower en0 on
	sleep 5
done
