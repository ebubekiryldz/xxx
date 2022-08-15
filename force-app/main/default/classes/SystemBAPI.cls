public class SystemBAPI {
    public static void retrieve1(){
        
        Http http=new Http();
HttpRequest request =new HttpRequest();
String endpoint= 'callout:SystemB/services/data/v55.0/query?q=SELECT+Id+FROM+Account';



request.setEndpoint(endpoint);
request.setMethod('GET');

request.setHeader('Content-Type','application/json');
HttpResponse response= http.send(request);
System.debug('Status Code: '+response.getStatusCode());   
System.debug(response.getBody());
        
    }
																 				
}