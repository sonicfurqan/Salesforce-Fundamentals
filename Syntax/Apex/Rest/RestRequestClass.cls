public class RestRequestClass{
 
    
    public static void callApi()
    {
        //HTTPRequest is used to create a request to external system
        HttpRequest req = new HttpRequest();

        //setMethod defines the method call valid values are GET, POST,PATCH, DELETE
        req.setMethod('GET');
        //setEndpoint sets the url top whihc we are calling
        req.setEndpoint('www.google.com');
        //setHeader can be multiple it defines all the headers the are need to make request
        req.setHeader('content-type', 'application/json');
        req.setHeader('authorization', 'Basic somekey');
        
        //HttpResponse holds the response that is returned from external system
        //new HTTP().send() method intiates a request
        HttpResponse res=new HTTP().send(req);

        //returns status code of response if response is typlicaly less theen 300 the it is success
        Intger code=res.getStatusCode();

        //this contains paylod that external system is return 
        String body=res.getBody();

    }

    
    
}