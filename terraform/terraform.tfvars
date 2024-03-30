name          = "webserver"
vpc_id        = "" # Replace with VPC ID of your AWS account
subnet_id     = "" # Replace with public subnet ID
ami           = "ami-0c101f26f147fa7fd"
instance_type = "t2.micro"
tags          = { Name = "webserver" }
sg_ingress_rules = [
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
    description = "HTTP"
  }
]
