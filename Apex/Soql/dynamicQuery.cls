public class dynamicQuery{
	
	public static void getResult(){
		String wereValue='furqan';
		String query='SELECT id FROM Account WHERE Name=:whereValue';
	    SObject[] objects = Database.query(<String of query>); 
	}

	public static void getResultsAnotherWay(){

		String wereValue='furqan';

		String query='SELECT id FROM Account WHERE Name=\''+String.Escapesinglequotes(wereValue)+'\'';
	    SObject[] objects = Database.query(<String of query>);  
	}
}