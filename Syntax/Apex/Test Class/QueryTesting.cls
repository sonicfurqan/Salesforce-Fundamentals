@isTest
public class QueryTesting{
	@isTest
	static void testSOSLResult(){
        //ignore required field validations
		Case ca=new Case();
		insert ca;
		account a=new account();
		insert a;
		contact c=new contact();
		insert c;

        //creating response for the result
		Id [] fixedSearchResults = new Id[]{ca.id,a.id,c.id}; 

		Test.startTest(); 
        //seting sosl result that will be returend during query in below class
        Test.setFixedSearchResults(fixedSearchResults); 

		myClass x=new myclass();

		

		Test.stopTest();
	}
}