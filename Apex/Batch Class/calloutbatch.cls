global class mybatchwithcallout implements Database.Batchable<sObject>,Database.AllowsCallouts {
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
    /*
    on instance creation of batch class start method is invoked which runs the query and passess records to  execute method in batches each batch contains records specified during creatin of batch
    */
        String yourQuery='select id from account';
       return Database.getQueryLocator(yourQuery);
       }
   
   /*execute method recives records after they are queryed in batches 
   it has  parametrs
   BatchableContext which is by default param 
   second parametr is list of sobject that is queryed
   */
    global void execute(Database.BatchableContext BC, List<Account> accountList) {
      //TODO call api

     } 
       
       /*finish method is called after batch class execution is finished
       it contains result of batch
       */
   
    global void finish(Database.BatchableContext BC) {
      //TODO after batch is finised
      /*
      Call batch class in apex/anymonus window
      Id batchJobId = Database.executeBatch(new <your batch class name>(),<batch size>);

      example
      Id batchJobId = Database.executeBatch(new mybatch(),150);

      */
    }
}