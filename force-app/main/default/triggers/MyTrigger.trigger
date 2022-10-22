trigger MyTrigger on Bike__c (before insert, before update) {
    
    if(trigger.isBefore && trigger.isInsert)
    {
        System.debug('I am a before trigger executed before inserting a Bike record');
    }
    if(trigger.isUpdate){
        if(trigger.isBefore){
            for(Bike__c b: trigger.new){
                System.debug('New Name: '+ b.Name);
                System.debug('Old Name:'+ Trigger.oldMap.get(b.Id).Name);
            }
        }
    }

}