public class getParmFromUrl{
	/* in vf page for custom controller to fetch parameters passed in url use  this syntax

	*/
	
	public getParamFromUrl(){
		String id=ApexPages.currentPage().getParameters().get('id');
	}
}