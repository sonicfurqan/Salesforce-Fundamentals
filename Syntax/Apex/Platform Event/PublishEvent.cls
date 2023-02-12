public  class PublishEvent {
    
    public static void publish(String details){
        //initiate event object
        Log_Event__e e=New Log_Event__e();
        //assign values
        e.Body__c=details;
        //publish event
        EventBus.publish(e);
    }
}	