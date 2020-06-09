public class dataCaptorForSOSLQuery{
	/*when using sosl query in apex class test data genrated might not be persisten to get queryed by sosl ence using
	*following criteria
	* 
	*/
	@isTest
	static void setData(){
		//ignore required field validations
		Case ca=new Case();
		insert ca;
		account a=new account();
		insert a;
		contact c=new contact();
		insert c;
		Id [] fixedSearchResults = new Id[]{ca.id,a.id,c.id}; 

		Test.startTest(); 

		myClass x=new myclass();

		Test.setFixedSearchResults(fixedSearchResults); 

		Test.stopTest();
	}

}