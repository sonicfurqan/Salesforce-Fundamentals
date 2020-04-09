global class schedule_mybatch implements Schedulable {
   global void execute(SchedulableContext SC) {
      mybatch b= new mybatch(); 
      database.executebatch(b);

   }
}