/*
Future method runs imidiatly after execution of current cycle, error in future method can block stop exection of cycle
*/

global class FutureApex
{

    //NOTE: (callout=true) is added to future if we want to call a rest api from futre
    // future can only accept string as input parameter
    // future cannot return any value
    @future(callout=true)
    public static void getStockQuotes(String acctName)
    {   
        List<Account> a=[SELECT id FROM Account WHERE Name=:acctName];
    }

}