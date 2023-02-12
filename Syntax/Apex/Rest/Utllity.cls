public class Utllity{
	
	//returns current or host url
	public string host{set;get{
		return System.URL.getSalesforceBaseURL().getHost();
	}}
}