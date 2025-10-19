# Website Monitor Shell Script

A Bash script to monitor website uptime and send alert emails if a website goes down.

---

## Features
- Monitors one or multiple websites
- Logs uptime/downtime with timestamp
- Sends email alerts using Gmail SMTP
- Can be automated with cron for continuous monitoring

---

## Prerequisites
- Linux environment with Bash
- curl
- mailutils or msmtp for sending emails
- Gmail account for email alerts (if using SMTP)

---

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/website-monitor-shell.git
cd monitor-shell
