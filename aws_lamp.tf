provider "aws" {
    access_key =
    secret_key = 
    region = "us-west-2"
    }
    
    resource "aws_instance" "rovserg_lamp2" {
    ami = "ami-0c2aba6c" # CentOS 7 AMI located in US-East-2
            instance_type = "t2.medium" 
                    count = "1" # or "10" can be used for parallel creation
                            vpc_security_group_ids = ["sg-d37022a9"] # some security g
                            
                                    key_name = "id_rsa" # pre created AWS E2 key pair
                		    subnet_id = "subnet-f23cd1ba" # AWS VPC subnet 
                                            }
                                            resource "aws_key_pair" "key_for_rsa" {
                                              key_name   = "id_rsa"
                                                public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDczUQC+rHdcI56+eL9Fo8jWREhg69AP+noECh5u/EPzYQDONJxhmvP3DPC3ZDivBR4fSfq+lDdaAIek6HDTG8NAxedVmQHjo3V/MAWvpVA+e2YgJY0vS7/rQh2zZ7aREhydUvvfiBe0G0ptZgUqHJ8Oh/4k+P7SWZUCr+gGplhrjvwTz/yX9rrcjHm6nxjXus7n+dMnARsrPTWHqnkdNtmjlbfla+F8zureuJwRskgPnS2EJrEdc8QFFkuk9VQze7HCd/psm7LHtpOHPXbgKuKUvs+tshcCLT14nNyqa9Tbp0yyKIcTZXPYYZ4EF41o8NxmXPzMxJnFCyQxswCXVJL"
                                                }
