@isTest
public class setTestUrlParameters{
	/*for vf page that needs url parameters to be passed
	*/

	@isTest
	static void testMethod(){
		PageReference myPage = Page.VFPAGENAME; 

    	Test.setCurrentPageReference(myPage); 

    	pageRef.getParameters().put('name','furqan');
	}

}