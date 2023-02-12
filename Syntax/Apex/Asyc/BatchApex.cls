//NOTE: adding Database.AllowsCallouts to interface so we can call rest api from batch class
//NOTE: adding Database.Stateful to interface list so that we can maintain a varialbles state during whole run of batch
global class BatchApex implements Database.Batchable<sObject>,Database.AllowsCallouts,Database.Stateful {
    
    //This varaible will hold its state in all the batchs 
    Integer batchCount=0;

    //Executed only once when batch starts and determines how many records in total are processed and they are devided per batch mentioned during call
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String yourQuery='select id from account';
        return Database.getQueryLocator(yourQuery);
    }
   
   /*
   execute method recives records after they are queryed in batches 
   BatchableContext which is by default param 
   second parametr is list of sobject that is queryed
   */
    global void execute(Database.BatchableContext BC, List<Account> accountList) {
      //TODO call api

      batchCount++
    } 
       
    /*finish method is called after batch class execution is finished
    it contains result of batch
    */
   
    global void finish(Database.BatchableContext BC) {
       System.debug(batchCount);
      //TODO after batch is finised
      /*
      Call batch class in apex/anymonus window
      Id batchJobId = Database.executeBatch(new <your batch class name>(),<batch size>);

      example
      Id batchJobId = Database.executeBatch(new mybatch(),150);

      */
    }
}