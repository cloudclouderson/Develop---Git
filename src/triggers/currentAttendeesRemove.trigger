trigger currentAttendeesRemove on Contact (after delete){

    Contact [] myContact = Trigger.old;
    String cid = null;
    cid = myContact[0].Conference__c;
    Integer i = [select count() from Contact where Conference__c = :cid];  
    Conference__c conf =[select id from Conference__c where id = :cid];
    conf.Current_Number_of_Attendees__c = i;    
    update conf;

}