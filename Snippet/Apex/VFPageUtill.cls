public class VFPageUtill{
	/* To invoke vf page from apex and get values from vf page
	*/

	public void getValueFromVfPage(){
		Pagereference myPage= Page.VFPAGENAME; 
		//insert parameter if it has any url parameters
		myPage.getParameters().put('name','furqan'); 
		System.debug('Data '+myPage.getContent()); 
	}

	//get page parametres from vf page 
	public getParamFromUrl(){
		String id=ApexPages.currentPage().getParameters().get('id');
	}

}