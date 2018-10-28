public class relatedRecords {

    /* inner query example to get child records 
     *  Example: Get contacts from account query
     */

    public static void getContactsOfAccounts() {
        List < Account > acc = [SELECT id, (SELECT id FROM Contacts) FROM Account]
        /*NOTE: Contacts is diffrent form contact api name to find relation ship api name 
         *goto:  workbench-> Info -> standard & custom obj (choose your object) -> Child relationship -> relationshipName
         */
        For(Account a: acc) {
			System.debug(a.Id);
            For(Contact c: a.Contacts) {
            		System.debug(c.Id);
            }

        }

    }

}