output "public-ip" {
  value = aws_instance.jenkins.public_ip
}
output "instance-id" {
  value = aws_instance.jenkins.id
}
output "private-ip" {
  value = aws_instance.jenkins.private_ip
}
output "instance-type" {
    value = aws_instance.jenkins.instance_type
}
output "public-dns" {
    value = aws_instance.jenkins.public_dns
  
}