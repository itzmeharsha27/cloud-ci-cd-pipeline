# Example: create CloudWatch alarm for CPU utilization
# Replace <InstanceId> and <AlarmName> with your AWS info

aws cloudwatch put-metric-alarm `
    --alarm-name <AlarmName> `
    --metric-name CPUUtilization `
    --namespace AWS/EC2 `
    --statistic Average `
    --period 300 `
    --threshold 70 `
    --comparison-operator GreaterThanThreshold `
    --dimensions Name=InstanceId,Value=<InstanceId> `
    --evaluation-periods 1 `
    --alarm-actions <SNS-Topic-ARN>

Write-Host "CloudWatch alarm created for EC2 instance"
