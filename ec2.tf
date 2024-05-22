module "ec2" {
    source = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 2.0"
    name = "juan"
    instance_count = 1
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    vpc_security_group_ids = [module.ssh_security_group.this_security_group_id]
    subnet_ids = module.vpc.private_subnets
}