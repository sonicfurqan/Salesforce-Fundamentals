public class getVfPage{
	/* To invoke vf page from apex and get values from vf page
	*/

	public void getValue(){
		Pagereference myPage= Page.VFPAGENAME; 
		//insert parameter if it has any url parameters
		myPage.getParameters().put('name','furqan'); 
		System.debug('Data '+myPage.getContent()); 
	}


}