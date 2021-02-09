# Setup Requirements
```
1. Terraform binary => 0.12.x
2. Python3 and PIP
3. Ansible
4. AWS CLI
```

## Notes and Instructions
This project requires an S3 backend for storing Terraform state file.
```
 $> aws s3api create-bucket --bucket <YOUR-UNIQUE-BUCKET-NAME-GOES-HERE>
```

## Supplementary files
```
1. ansible playbooks
2. aws_get_cp_hostedzone for AWS DNS zone
3. cred-privkey.j2 sets private keys
4. node.j2 used for registering worker node with Jenkins Master via Jenkins CLI
5. jenkins_auth is Jenkins login
```
 
