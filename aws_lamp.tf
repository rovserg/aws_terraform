provider "aws" {
    access_key ="AKIAJYPLNITI6QZWUSPQ"
    secret_key = "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"
    region = "us-west-2"
    }
    
    resource "aws_instance" "rovserg_lamp2" {
    ami = "ami-0c2aba6c" # CentOS 7 AMI located in US-East-1
            instance_type = "t2.medium" 
                    count = "1" # or "10" can be used for parallel creation
                            vpc_security_group_ids = ["sg-d37022a9"] # some security g
                            
                                    key_name = "for lamp" # pre created AWS E2 key pair
                		    subnet_id = "subnet-f23cd1ba" # AWS VPC subnet 
                                            }