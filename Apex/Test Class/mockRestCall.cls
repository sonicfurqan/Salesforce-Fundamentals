@isTest 
public class restCallTest{

	@isTest
	static void callRest(){
		Test.setMock(HttpCalloutMock.class, new restMock()); 
		//your logic
	}
	


	public class restMock implements HttpCalloutMock { 

	    public HTTPResponse respond(HTTPRequest req) { 

	        HttpResponse  resp = new HttpResponse(); 

	        resp.setStatusCode(<code>); 


	        resp.setBody(<body>); 

	        return resp; 

	    }
    } 
}