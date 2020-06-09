public class avoidLocking{
    
  /* When 2 or more instance are oprating one same record for dml opration 
  * runtime loking error is genrated to avoid this it FOR UPDATE key word is to be used in query for recrod
  *
  */

  public static void getAccounts(){
  		List<Account> acc=[SELECT id FROM Account  FOR UPDATE]
  		//Note: can’t use the ORDER BY keywords in any SOQL query that uses locking
  }

}