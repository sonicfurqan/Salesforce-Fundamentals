public class getHostUrl{
	
	public string host{set;get{
	return System.URL.getSalesforceBaseURL().getHost();
	}}
}