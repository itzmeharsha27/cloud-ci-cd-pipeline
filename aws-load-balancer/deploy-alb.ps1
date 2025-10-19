# Example: register EC2 instance to ALB target group
# Replace <TargetGroupArn> and <InstanceId> with your AWS info

aws elbv2 register-targets `
    --target-group-arn <TargetGroupArn> `
    --targets Id=<InstanceId>

Write-Host "EC2 instance registered to ALB"
