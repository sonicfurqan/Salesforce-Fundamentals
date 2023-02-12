@isTest
public class VFPageTesting{
	
    
    //Testing vf page with standard controller
    @isTest
    static void standardControlerSetup(){
        account a = new account(); 

        Insert a; 

        //vfpageName - is your vf page name
        Test.setCurrentPage(Page.vfpageName); 

        //ExtensionClass is any extenation class that is atteched to vf page
        ExtensionClass controller = new ExtensionClass(new ApexPages.StandardController(a)); 

    }

    
    //Testing vf page that needs url parameters to be passed
	@isTest
	static void passPageParameters(){
        //vfpageName - is your vf page name
		PageReference myPage = Page.vfpageName; 

    	Test.setCurrentPageReference(myPage); 

        //setting any parametrrs that page needs
    	pageRef.getParameters().put('name','furqan');
	}
}