#!/bin/zsh
set -eu
cd ~/PycharmProjects/ICTB 
source ./venv/bin/activate
source ~/.zshrc
python3 ETL.py >> etl_logs.txt

# * * * * * /Users/alexander/PycharmProjects/ICTB/cron_scheduler.sh