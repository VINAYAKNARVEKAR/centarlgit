resoucre "aws_security_group" "three" {
 name = "elb-sg"
 ingress {
 from_prot = 22
 to_prot   = 22
 protocol  = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
}
   ingress {
   from_prot   = 80
   to_prot     = 80
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 
}
   egress {
   from_prot  = 0
   to_prot    = 0
   protocol   = "-1"
   cidr_blocks = ["0.0.0.0/0"]
  }
}
