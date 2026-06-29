install-cloudwatch-agent.sh

#!/bin/bash

echo "Updating system packages..."
sudo dnf update -y 

echo "Installing Amazon CloudWatch Agent..." 
sudo dnf install amazon-cloudwatch-agent -y 

echo "Enabling CloudWatch Agent..." 
sudo systemctl enable amazon-cloudwatch-agent 

echo"Starting CloudWatch Agent..." 
sudo systemctl start amazon-cloudwatch-agent 

echo "Checking CloudWatch Agent status..." 
sudo systemctl status amazon-cloudwatch-agent --no-pager 

echo "CloudWatch Agent installation complete."
