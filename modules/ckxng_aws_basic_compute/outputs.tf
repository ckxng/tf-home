output "eip" {
    description = "Public Elastic IPs data for instance"
    value       = aws_eip.eip
}

output "instance" {
    description = "Instance data"
    value       = aws_instance.instance
}
