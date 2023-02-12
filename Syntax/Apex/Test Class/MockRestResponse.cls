@isTest
public class MockRestResponse{
	@isTest
	static void callRest(){
        //Test.setMock sets the mock reponse for the given test
		Test.setMock(HttpCalloutMock.class, new RestMock()); 
		//your logic
        Test.startTest();

        new RestRequestClass().callApi();
        Test.stopTest()();
	}
	


    //Mock Class defines what result is returend to rest request
	public class RestMock implements HttpCalloutMock { 

	    public HTTPResponse respond(HTTPRequest req) { 

	        HttpResponse  resp = new HttpResponse(); 

	        resp.setStatusCode(<code>); 


	        resp.setBody(<body>); 

	        return resp; 

	    }
    } 
}