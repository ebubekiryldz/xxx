public class GORESTuSER {
    public static void retrieve(){
        
        Http http=new Http();
HttpRequest request =new HttpRequest();

String endpoint='https://gorest.co.in/public/v2/users';

request.setEndpoint(endpoint);
request.setMethod('GET');

HttpResponse response= http.send(request);
System.debug(response.getStatuscode());
System.debug(response.getBody());
        
    }
      public static void createUser(){
        
        Http http=new Http();
HttpRequest request =new HttpRequest();

String endpoint='https://gorest.co.in/public/v2/users';
String token='e9dfc1ca2e579881722f43e8f0f90d48b57d109be70e4bf620814398ccfa708f';
   
          
          
          
request.setEndpoint(endpoint);
request.setMethod('POST');
request.setHeader('Authorization ', 'Bearer ' +token);
HttpResponse response= http.send(request);
System.debug(response.getStatuscode());
System.debug(response.getBody());
        
    }
}