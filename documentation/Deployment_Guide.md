## Step 1 Create an AWS Account

Sign in to AWS (or create an account).
Verify your account.
Sign in as the root user.

## Step 2: Secure the AWS Account

Enable MFA on the root account.
Create an IAM administrator user.
Sign in using the IAM user for all remaining tasks.

## Step 3: Configure Billing Alerts

Open AWS Budgets.
Create a monthly budget.
Configure email notifications.
Verify the notification email.

## Step 4: Launch an EC2 Instance

Launch an Amazon Linux 2023 instance.
Choose the Free Tier eligible instance type.
Create a security group allowing SSH (TCP port 22).
Create and download an SSH key pair.
Launch the instance.

## Step 5: Connect via SSH

Open PowerShell.
Connect using the .pem key.
Verify the connection.
Run basic Linux commands to confirm access.

## Step 6: Update the Instance
Update the operating system packages.
Verify the instance is up to date.

## Step 7: Configure IAM for EC2

Create the CloudPulse-EC2-Role.
Attach:
AmazonSSMManagedInstanceCore
CloudWatchAgentServerPolicy
Attach the role to the EC2 instance.

## Step 8: Configure Systems Manager

Verify the Amazon SSM Agent is running.
Confirm the instance is managed by Systems Manager.

## Step 9: Install and Configure the CloudWatch Agent

Install the CloudWatch Agent.
Use the visual configuration wizard.
Enable infrastructure metrics.
Deploy the configuration.

## Step 10: Verify Metric Collection
Open CloudWatch.
Confirm metrics appear in the CWAgent namespace.
Verify CPU, memory, disk, and network metrics are being collected.

## Step 11: Build the CloudWatch Dashboard

Create the CloudPulse Infrastructure Dashboard.
Add widgets for:
CPU
Memory
Disk
Network

## Step 12: Configure Monitoring Alarms
Create a CPU alarm.
Create a memory alarm.
Create a disk usage alarm.
Configure Amazon SNS email notifications.

## Step 13: Validate the Monitoring Solution

Generate CPU load on the EC2 instance.
Verify Dashboard updates.
Alarm transitions from OK to ALARM.
SNS email notification is received.

