public class restCall{
 
    
    Public static void callApi()
    {
               HttpRequest req = new HttpRequest();
               req.setMethod('GET');
               req.setEndpoint('www.google.com');
               req.setHeader('content-type', 'application/json');
               
               return req;
    }

    
    
}