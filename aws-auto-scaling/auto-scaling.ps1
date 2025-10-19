# Example: create Auto Scaling group and attach to ALB
# Replace placeholders with your AWS info

aws autoscaling create-auto-scaling-group `
    --auto-scaling-group-name cloudapp-asg `
    --launch-configuration-name <LaunchConfigName> `
    --min-size 1 --max-size 3 --desired-capacity 1 `
    --vpc-zone-identifier <SubnetIds>

aws autoscaling attach-load-balancer-target-groups `
    --auto-scaling-group-name cloudapp-asg `
    --target-group-arns <TargetGroupArn>

Write-Host "Auto Scaling group created and attached to ALB"
