public class CruiseRoomUI {
					
  	  @InvocableMethod(label='Bulk Room Create' description='Bulk Room Create' category='Other')
    public static void bulkRoomCreate(List<request> requestList){
        
        String shipId=requestList.get(0).cruiseShipid;
        Integer hm=requestList.get(0).howMany;
        Integer roomCapacityy=requestList.get(0).roomCapacity;
        Decimal passangerPricee=requestList.get(0).passangerPrice;
        String roomTypee=requestList.get(0).roomType;
        List<Cruise_Room__c> multiRoom =new List<Cruise_Room__c>();
        for(Integer counter=0; counter<hm; counter++){
            Cruise_Room__c singleRoom=new Cruise_Room__c();
            singleRoom.Capacity__c=roomCapacityy;
           singleRoom.Cruise__c=shipId;
            singleRoom.Capacity__c=hm;
            singleRoom.paasenger_price__c=passangerPricee;
            singleRoom.Room_Type__c=roomTypee;
            multiRoom.add(singleRoom);
        }
        try{
            insert multiRoom;
            
        }catch(exception e){
        system.debug(e.getMessage());
        throw new customException(e.getMessage());
            
        }
		        
        
        
      System.debug(shipId);
       System.debug(hm);
        System.debug(roomCapacityy);
        System.debug(passangerPricee);
        System.debug(roomTypee);
       // List<Cruise_Room__c> multiRoom =[select id from Cruise_Room__c LIMIT 10];
        system.debug(multiRoom);
		
    }
    public class request{
      @InvocableVariable(label='Cruise Ship' description='Your rooms will be related this ship id' required=true)
        public String cruiseShipid;
      @InvocableVariable(label='How Many Room' description='How Many room will be created' required=true)
        public Integer howMany;
      @InvocableVariable(label='Room Capacity' description='Room Capacity' required=true)
        public Integer roomCapacity;
      @InvocableVariable(label='Passenger Price' description='Passenger Price' required=true)
        public Decimal passangerPrice;
      @InvocableVariable(label='roomType' description='How Many Room' required=true)
        public String roomType;
    }
}