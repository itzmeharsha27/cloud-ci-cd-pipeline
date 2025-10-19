# Example: create IAM role for EC2 and attach policy
aws iam create-role `
    --role-name EC2AppRole `
    --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy `
    --role-name EC2AppRole `
    --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess

# Example: setup HTTPS with ACM certificate
aws acm request-certificate `
    --domain-name example.com `
    --validation-method DNS

Write-Host "IAM role created and HTTPS certificate requested"
