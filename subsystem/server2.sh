echo "start connecting to server2...";
ssh -t -t -y  <SERVER_USERNAME>@<SERVER_IP>   -p <SERVER_PORT>  << EOF

#project commands
#type any commands you want to run on server

cd /home/project 
sudo git fetch origin master
#sudo composer update
#npm update
cd /home/project 
sudo find project  -type d -exec chmod 755 {} +
sudo find project  -type f -exec chmod 644 {} +

exit
EOF
