
/* 
URL Mapping defines the endpoint of your api, one end point can support post,get,delete,put request
endpoints are avilable at
https://MyDomainName.my.salesforce.com/services/apexrest/externalApi"
*/
@RestResource (urlMapping='/externalApi/*')  
global class RestServiceClass{  

    @httpGet  
    global static void doGet(){  

        //used if url has some parameters  
        RestRequest req = RestContext.request;  
        //use to reply for request  
        RestResponse res = RestContext.response;  
        //used to get parameter if send by url  
        String mId=req.params.get('id');  
        String jsonText='{"name":"'+mid+'"}';  
        //response is sent methods ends here  
        Res.responseBody=Blob.valueOf(jsonText);  

    }  

  

    @httpPost  
    global static void  doPost(){  

        //useed to get body of post method  
        RestRequest req = RestContext.request;  
        //use to reply for request  
        RestResponse res = RestContext.response;  
        //as it is blob value we use tostring to convert back to string  
        String body=req.requestBody.toString();  
        //this is basic way of getting data from json file   
        Map<String,object> temp=(Map<String,object>)JSON.deserializeUntyped(body);  
        String id=(String)temp.get('name');  
        String jsonText='{"name":"'+id+'"}';  
        //Or we can use wrapper class to deserlaize
        Wrapper temp1=(Wrapper) JSON.deserialize(body,Wrapper.class);
        //response is sent methods ends here  
        Res.responseBody=Blob.valueOf(jsonText);  

    }  

    public class Wrapper(){
        public string name {set;get;}
    }


}