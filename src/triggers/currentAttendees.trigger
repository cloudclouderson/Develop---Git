trigger currentAttendees on Contact (after insert, after update, after delete){
Conference__c c = [select name from Conference__c where name = 'AJAX 2008'];
Integer count = [select count() from contact where Conference__c = 'a015000000VqDL5'];
c.Current_Number_of_Attendees__c = count;
update c;
Conference__c d = [select name from Conference__c where name = 'JavaShow'];
Integer count2 = [select count() from contact where Conference__c = 'a015000000VqDLF'];
d.Current_Number_of_Attendees__c = count2;
update d;
}