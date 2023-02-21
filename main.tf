provider "aws" {
region = "ap-south-1"
access_key = "AKIAYGNKIT6JGQRJ5DFM"
secrat_key = "s6sKadslwYrck3ULsRAMT7oK8ALQtW3fw+cgVbvU"
}
resoucre "aws_instance" "one" {
ami = "ami-0e742cca61fb65051"
instance_type = "t2.medium"
 key_name  = "terraproject"
 vpc_security_group_ids = [aws_security_group.three.id]
  availability_zone = "ap-south-1a"
user_data = << EOF
# !/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chckconfig httpd on
echo "hai all this is my website created by terraform infrastructure by vikas sir server-1" > /var/www/html/index.html
EOF
tags = {
Name = "swiggy-01"
}
provider "aws" {
region = "ap-south-1"
access_key = "AKIAYGNKIT6JGQRJ5DFM"
secrat_key = "s6sKadslwYrck3ULsRAMT7oK8ALQtW3fw+cgVbvU"
}
resoucre "aws_instance" "two" {
ami = "ami-0e742cca61fb65051"
instance_type = "t2.medium"
 key_name  = "terraproject"
 vpc_security_group_ids = [aws_security_group.three.id]
  availability_zone = "ap-south-1b"
user_data = << EOF
# !/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chckconfig httpd on
echo "hai all this is my website created by terraform infrastructure by vikas sir server-2" > /var/www/html/index.html
EOF
tags = {
Name = "swiggy-02"
}
