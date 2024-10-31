sf demoutil org create scratch -f config/project-scratch-def.json -d 30 -w 60 -s -p cpq -e work.shop
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/o/SBQQ__QuoteTemplate__c/list?filterName=Recent

