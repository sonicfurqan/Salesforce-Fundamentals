@isTest
public class dateInTestClass{
	@testSetup
	static void dateSetup(){
		Account a=new Account();
		acc.DateField__c = Date.newInstance(2016, 12, 9); 
		acc.DateField__c  = System.today() + 5; 
	}
}