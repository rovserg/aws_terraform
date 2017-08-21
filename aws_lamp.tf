provider "aws" {
    access_key = "AKIAICFMNYYD3SKFIN3Q"
    secret_key = "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"
    region = "us-west-2"
    }
    
    resource "aws_instance" "rovserg_lamp" {
	ami = "ami-9fa343e7"
	instance_type = "t2.micro"
	}