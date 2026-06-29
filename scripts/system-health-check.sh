system-health-check.sh
#!/bin/bash

echo "===== CloudPulse System Health Check ====="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current Date:"
date

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -m

echo ""
echo "System Uptime:"
uptime

echo ""
echo "CloudWatch Agent Status:"
sudo systemctl status amazon-cloudwatch-agent --no-pager

echo ""
echo "SSM Agent Status:"
sudo systemctl status amazon-ssm-agent --no-pager
