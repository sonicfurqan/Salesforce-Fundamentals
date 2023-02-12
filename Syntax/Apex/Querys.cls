public class Query(){

    public static void normalQuery(){
        List<Account> a=[SELECT id FROM Account WHERE Name='Test'];
    }
    public static void DynamicQuery(){
        List<Account> a=Database.query('SELECT id FROM Account WHERE Name=\'Test\'');
        List<SObject> o=Database.query('SELECT id FROM Account WHERE Name=\'Test\'');
    }

    public static void queryBinding(){
        String name='Test';
        List<Account> a=[SELECT id FROM Account WHERE Name=:name];
        List<SObject> o=Database.query('SELECT id FROM Account WHERE Name=:name');
    }

    public static void innerQuery(){
        //NOTE: use relation ship plural name during inner query to refer object
        //To get value from workbench-> Info -> standard & custom obj (choose your object) -> Child relationship -> relationshipName
        List<Account> acc=[SELECT id,(Select id from contacts) FROM ACCOUNT LIMIT 10];
        for(Account a:acc){
			for(Contact c:a.Contacts){
				System.debug(c);
			}
		}
    }

    public static void sanitizingDynamicQuery(String name){

        List<SObject> a=Database.query('SELECT id FROM Account WHERE Name=\''+String.Escapesinglequotes(name)+'\'');
        List<SObject> o=Database.query('SELECT id FROM Account WHERE Name=:name');
    }

    public static void queryToGetAllFields(){
        //Returns all fields of object
        List<Account> a=[SELECT FIELDS(ALL) FROM Account LIMIT 1];
        //returns only custom fields of object and standard field explicitly mentioned
        List<Account> ac=[SELECT Name,FIELDS(CUSTOM) FROM Account LIMIT 1];
        //returns only standard fields of obejct and custom field explicity mentioned
        List<Account> acc=[SELECT Tax_ID__c,FIELDS(STANDARD) FROM Account LIMIT 1];
    }


    public static void aggregateQuery(){
        //NOTE: numAccount is added to aggregeate function to fetch value from reuslt
        List<AggregateResult> results = [SELECT COUNT(Id) numAccounts, Name FROM Account];
        results[0].get('numAccounts');
    }


}