public class innerQuery{
/*
HOW to find object relations name 

opne workbench-> Info -> standard & custom obj (choose your object) -> Child relationship -> relationshipName 

 
*/
	public void getAllContactsOfAccount(){

		List<Account> acc=[SELECT id,(SELECT id FROM Contacts) FROM Account];
		for(Account a:acc){
			for(Contact c:a.Contacts){
				System.debug(c);
			}
		}


	}
}