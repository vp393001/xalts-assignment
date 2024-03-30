name          = "webserver"
vpc_id        = "vpc-0f05fe8756ea69769"
subnet_id     = "subnet-06053fd3e4c157e55"
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
