# #!/bin/bash
# # sudo su (trying to run it without this dont think its necessary)
# yum update -y
# yum install -y httpd mysql
# amazon-linux-extras install -y php7.2 #check if this version is supported
# systemctl start httpd
# systemctl enable httpd
# echo "Hello World from $(hostname -f)" > /var/www/html/index.html 
# echo "Healthy" > /var/www/html/health.html
# # sudo yum install mysql -y (this as well it already stated in line 4 above)
# mysql -h ${aws_db_instance.default[0].address} -P 3306 -u ${var.db_username} -p${var.db_password} -e 'show databases;'

#!/bin/bash

yum update -y   # Update all packages
yum install -y httpd mysql # Install Apache, MySQL client, and PHP 7.2
amazon-linux-extras install -y php7.2 # Install PHP 7.2
systemctl start httpd #Start Apache service
systemctl enable httpd #enable Apache service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html  #Create a simple homepage
echo "Healthy" > /var/www/html/health.html #health check page


# MySQL client command to show databases
mysql -h ${aws_db_instance.default[0].address} -P 3306 -u ${var.db_username} -p${var.db_password} -e 'show databases;'
