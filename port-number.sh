#!/bin/bash
mark=0
echo "Are you ready to test your knowledge? yes/no"
read response

if [[ "$response" == "yes" ]]; then
        echo "You chose to continue"
        sleep 1
        echo "Welcome to LinuxDMZ"
        sleep 1
elif
        [[ "$response" == "no" ]]; then
        echo "you chose not to continue"
else
        echo "thank you"
fi
echo "Enter your first name: "
read fname
echo "Enter last name: "
read lname
echo "you entered $fname $lname"
sleep 3
read -p "What is port number for SSH: " ssh

if [[ "$ssh" == "22" ]]; then
        echo "Correct"
        sshn=1
        mark=$((mark + sshn))
else
        echo "Incorrect"
fi
sleep 2


read -p "What is port number for NFS: " nfs

if [[ "$nfs" == "2049" ]]; then
        echo "Correct"
        nfsn=1
        mark=$((mark + nfsn))

else
        echo "Incorrect"
fi
sleep 2


read -p "What is port number for RPC BIND: " rpc

if [[ "$rpc" == "111" ]]; then
        echo "Correct"
        rpcn=1
        mark=$((mark + rpcn))
else
        echo "Incorrect"
fi
sleep 2


read -p "What is port number for HTTP: " http

if [[ "$http" == "80" ]]; then
        echo "Correct"
        httpn=1
        mark=$((mark + httpn))
else
        echo "Incorrect"
fi
sleep 2


read -p "What is port number for MOUNTD: " mountd

if [[ "$mountd" == "20048" ]]; then
        echo "Correct"
        mountdn=1
        mark=$((mark + mountdn))
else
        echo "Incorrect"
fi
sleep 2


read -p "What is port number for DNS: " dns

if [[ "$dns" == "53" ]]; then
        echo "Correct"
        dnsn=1
        mark=$((mark + dnsn))
else
        echo "Incorrect"
fi



sleep 3
echo -n "Calculating: ["
for i in {1..50}; do
    sleep 0.1  # Simulate work
    echo -n "#"  # Append a hash mark
done
echo "] Completed!"
sleep 2

echo "Your correct answers are "$mark
sleep 2
echo "Thank you"
