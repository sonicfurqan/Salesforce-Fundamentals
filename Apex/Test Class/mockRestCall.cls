@isTest 
public class restCallTest{

	@isTest
	static void callRest(){
	Test.setMock(HttpCalloutMock.class, new restMock('success','{}',200)); 
	//your logic
	}
	


	public class restMock implements HttpCalloutMock { 

	    public HTTPResponse restMock(String status,String body,Integer code) { 

	        HttpResponse resp = new HttpResponse(); 

	        resp.setStatusCode(<code>); 

	        resp.setStatus(<status>); 

	        resp.setBody(<body>); 

	        return resp; 

	    }
    } 
}