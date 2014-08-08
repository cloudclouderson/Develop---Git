public class TestMethodCurrentAttendees {

    static testMethod void testContactTrigger(){
        
        Contact[] contactsToCreate = new Contact[]{};
        for(Integer x=0; x<10; x++){
            Contact ct = new Contact(lastname='testing' + x,firstname='apex', Conference__c='a015000000VqDLF');
            contactsToCreate.add(ct);
        }
        
        Test.startTest();
        insert contactsToCreate;
        delete contactsToCreate;
        Test.stopTest();    
    }   
}