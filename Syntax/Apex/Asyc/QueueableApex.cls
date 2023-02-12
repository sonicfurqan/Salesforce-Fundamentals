
/*
    Queueable class only runs one after the current executuin thread is stopped.
    Example to enque
    Option 1 - Imediate queue
    ID jobID = System.enqueueJob(new QueueableApex());
    Option 2 - que it after some mintues
    second parameters acceptes integer and it is number of minutes after whihc it will be queued , max value is 10 minutes
    ID jobID = System.enqueueJob(new QueueableApex(),2);

*/
public class QueueableApex implements Queueable {
    public void execute(QueueableContext context) {
        List<Account> a=[SELECT id FROM Account WHERE Name='Test'];
    }
}