public class dynamicValueBasedOnFieldName{
	/*Fetch/insert value from sObect recrd based on field name given in string
	*/

	public static void getValue(String fieldName){
		Account a=[Select id from account limit 1];
		String id=String.valueOf(a.get(fieldName));
	}
	public static void setValue(String value,String fieldName){
		Accoutn a=[Select id,name from accoutn limit 1];
		a.set(fieldName,value);
	}
}