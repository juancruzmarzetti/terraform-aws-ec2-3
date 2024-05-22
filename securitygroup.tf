module "ssh_security_group" {
    source = "terraform-aws-modules/security-group/aws//modules/ssh"
    version = "~> 3.0"
    name = "ssh-server"
        description = "Security Group"
        vpc_id = module.vpc.vpc_id
        ingress_cidr_blocks = ["10.10.0.0/16"]
}