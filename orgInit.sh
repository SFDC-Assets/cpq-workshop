sf demoutil org create scratch -f config/project-scratch-def.json -d 30 -w 60 -s -p cpq -e work.shop

sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix cpq -o work.shop

sf project deploy start
sfdx shane:user:password:set -p salesforce1 -g User -l User
sfdx force:org:open -p /lightning/o/SBQQ__QuoteTemplate__c/list?filterName=Recent

