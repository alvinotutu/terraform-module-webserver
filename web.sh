yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2109_the_card.zip
unzip -o 2109_the_card.zip
cp -r 2109_the_card/* /var/www/html/
systemctl restart httpd