

public class apexClassThatIsToBeImported {


    /*This method can be called from lwc only by some event.
      This method cannot be called with wire decorater*/
    @AuraEnabled
    public static List<Account> searchAccounts(String searchKey){
       List<Account> x=[select id,Name from Account where Name=:searchKey];
       return x;
    }
    

    /*This method can be called with wire decorater 
      Method should have cacheable true for it to be called with wire decorater*/
    @AuraEnabled(cacheable=true)
    public static List<Contact> getAllContact(){
       List<Contact> x=[select id,Lastname from Contact];
       return x;
    }
}