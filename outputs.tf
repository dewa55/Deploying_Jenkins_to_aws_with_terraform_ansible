#Value of template in us-east1
output "amiId-us-east-1" {
  value = data.aws_ssm_parameter.linuxAmi.value
}

#Value of template in us-west2
output "amiId-us-west-2" {
  value = data.aws_ssm_parameter.linuxAmiOregon.value
}

#Jenkins Public IP 
output "Jenkins-Main-Node-Public-IP" {
  value = aws_instance.jenkins-master.public_ip
}

#Jenkins Master node private IP
output "Jenkins-Main-Node-Private-IP" {
  value = aws_instance.jenkins-master.private_ip
}

#Jenkins Public IP for worker nodes
output "Jenkins-Worker-Public-IPs" {
  value = {
    for instance in aws_instance.jenkins-worker-oregon :
    instance.id => instance.public_ip
  }
}

#Jenkins private IP addresses of all worker nodes
output "Jenkins-Worker-Private-IPs" {
  value = {
    for instance in aws_instance.jenkins-worker-oregon :
    instance.id => instance.private_ip
  }
}

#Jenkins FQDN url 
output "url" {
  value = aws_route53_record.jenkins.fqdn
}
