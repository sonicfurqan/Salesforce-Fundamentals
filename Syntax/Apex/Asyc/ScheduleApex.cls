/*
Schedule apex can be scedule using admin panale or using corn job
Example for corn job
//Seconds Minutes Hours Day_of_month Month Day_of_week Optional_year
String sch = '20 30 8 10 2 ?';
String jobID = System.schedule('Merge Job', sch, m);
*/
global class ScheduleApex implements Schedulable {
    global void execute(SchedulableContext SC) {
       mybatch b= new mybatch(); 
       database.executebatch(b);
 
    }
 }