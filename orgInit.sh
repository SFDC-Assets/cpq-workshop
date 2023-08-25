sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix cpq -o work.shop
# sfdx force:package:install --package=04t4N000000N6FF --wait 20 -r
sfdx force:package:install --package=04t4N0000011NsbQAE --wait 20 -r
sfdx force:user:permset:assign -n SBQQ__SteelBrickCPQPSLAccess
#sfdx force:user:permset:assign -n SalesforceCPQ_CPQStandardPerm
#sfdx force:user:permset:assign -n SalesforceCPQ_CPQAAPerm
sfdx force:user:permset:assign -n SteelBrickCPQAdmin
sfdx force:user:permset:assign -n SteelBrickCPQUser

sfdx force:source:push
sfdx shane:user:password:set -p salesforce1 -g User -l User
# sfdx force:org:open -p /lightning/o/SBQQ__QuoteTemplate__c/list?filterName=Recent
sfdx force:org:open
