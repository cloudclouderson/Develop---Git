//prevent more than 1 account looking up to myobj__c
//for any batch of account records that has myobj already existing
//select from account where myobj in 
//s adsfsadfsadfsadfcvbcvbcvb
public with sharing class AccountTriggerHandler { 
	public static void AccountTriggerHandler (List<Account> ListOAccounts) {
		
		//check if listoaccounts has dupes 
		set<id> myobjcfromlistoaccounts = new set<id>();
		for(account a : ListOAccounts){
			if(a.myobj__c != null){
				If(myobjcfromlistoaccounts.contains(a.myobj__c)){
					a.adderror('theres a fly in my soup');
				}
			else
				myobjcfromlistoaccounts.add(a.myobj__c);
			}
		}
		system.debug('oh haiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii' + myobjcfromlistoaccounts);		
		
		
		//list of all accounts with an obj 	
		list<account> acctswithobjids = [select id, myobj__c from account where myobj__c != null];
		system.debug('oh haiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii' + acctswithobjids);		
		
		//set of all existing obj ids
		set<id> existingmyobjs = new set<id>();
		for (account a : acctswithobjids){
				existingmyobjs.add(a.myobj__c);
		}
		
		system.debug('oh haiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii' + existingmyobjs);		
		
		//validation to ensure no 2 accounts have same myobj	
		for (Account a : ListOAccounts) {
			if(existingmyobjs.contains(a.myobj__c)){
					a.adderror('oh hai list of accts');
					}
			}
	
	
	/*		
		List<accountShare> acctwithexisting = [select id, accountid from accountshare];
		
		
			
		for (Account acctneedshare : ListOAccounts) {
			if (acctshare.size() < 1000000) {
			AccountShare acts = new AccountShare();
			acts.accountid = acctneedshare.id;
			acts.UserOrGroupId = acctneedshare.Manager_User__c;
			acts.AccountAccessLevel = 'Edit';
			acts.OpportunityAccessLevel = 'None';
			acts.CaseAccessLevel = 'None';
			//acts.ContactAccessLevel = 'None';
			insert acts;
			}
		}
		*/
					
		
	}
}