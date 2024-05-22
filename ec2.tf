module "ec2" {
    source = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 2.0"
    name = var.my_name
    instance_count = 1
    ami = var.id_ami
    key_name = var.pair_of_keys
    instance_type = "t2.micro"
    associate_public_ip_address = true
    vpc_security_group_ids = [module.ssh_security_group.this_security_group_id]
    subnet_ids = module.vpc.private_subnets
}