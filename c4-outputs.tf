

output "instance_public_ip" {
    description = "Instance Public ip"
    value = aws_instance.myec2vm.public_ip
}


output "instance_public_dns" {
    description = "Instance Public dns"
    value = aws_instance.myec2vm.public_dns
}