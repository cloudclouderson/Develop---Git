public class jsAlertController {
    private final Conference__c Conference;
    
       public jsAlertController() {
            conference = [select id, name, City__c, State__c, Technology__c, Date__c, Expected_Attendees__c, Current_Number_of_Attendees__c from Conference__c where id =
                       :ApexPages.currentPage().getParameters().get('id')];
      }
       public Conference__c getConference() {
       return conference;
       }
 }