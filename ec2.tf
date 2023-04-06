resource "aws_instance" "jenkins" {
  ami           = var.ami-type
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.sg1.id]
  key_name       = "efskey"
  user_data      = file("${path.module}/jenkins.sh")
  tags = {
    "Name" = "Jenkins-server"
    "env"  = "var.dev"
    "Team" = "var.team"
  }

}

