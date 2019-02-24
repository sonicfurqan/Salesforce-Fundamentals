public class getKeysValuesFromMap {

    public static void getMaPElements() {
        Map < String, Object > myMap = new Map < String, Object > ();

        for (Object a: myMap.values()) {
        		System.debug(a);
           
		}
		for(String s:myMap.keySet()){
				System.debug(s)
		}
    }
}