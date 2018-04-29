#for example you have two or more projects on same server
echo "start connecting to server1...";
ssh -t -t -y  <SERVER_USERNAME>@<SERVER_IP>   -p <SERVER_PORT>  << EOF

#project1 commands
#type any commands you want to run on server

cd /home/project 
sudo git fetch origin master
#sudo composer update
#npm update
cd /home/project1 
sudo find project1  -type d -exec chmod 755 {} +
sudo find project1  -type f -exec chmod 644 {} +

#project2 commands
#type any commands you want to run on server

cd /home/project2 
sudo git fetch origin master
#sudo composer update
#npm update
cd /home/project2 
sudo find project2  -type d -exec chmod 755 {} +
sudo find project2  -type f -exec chmod 644 {} +
exit
EOF
