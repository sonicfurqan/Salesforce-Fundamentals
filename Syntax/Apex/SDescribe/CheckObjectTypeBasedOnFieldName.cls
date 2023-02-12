public class CheckObjectTypeBasedOnFieldName{

	public static void checkType(){
		
			//check on lead object
			if(lead.OwnerId.getSObjectType() == User.SObjectType) {
		    		// Owner is a user
			}
			else if(lead.OwnerId.getSobjectType() == Group.SObjectType) {
    			// Owner is a group
			}

			//check on contact object
			if(Contact.AccountId.getSObjectType() == Account.SObjectType) {

			}

			//check on custom object
			if(myObj__c.myField__c.getSObjectType() == customOBJ__c.SObjectType) {
		    	
			}
	}
}