sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:source:push
sfdx force:user:permset:assign -n EPB
sfdx shane:data:tree:import -p data/Contact-Reservation__c-plan.json -d data/
sfdx force:org:open -p /lightning/o/Reservation__c/list?filterName=All