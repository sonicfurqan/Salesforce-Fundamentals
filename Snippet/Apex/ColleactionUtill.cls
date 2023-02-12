public class ColleactionUtill {



	public static void mapDetails() {
        Map <String,String> myMap = new Map <String,String>();
		
		List<String> keys=myMap.keySet();
		List<String> values=myMap.values();

		//add to map
		myMap.add('key','value');
		//get from map
		myMap.get('key','value');
		//check in map	
		myMap.containsKey('key');
		//remove from map
		myMap.remove('key');
	}


	public static void getValuesFromSet() {
        Set < object > t = new Set < object > ();

        Iterator < String > it = t.iterator();

        while (it.hasNext()) {

            Object o = it.next();

        }


    }


	public static void joinWithSeprator(String separator,List<String> myList){
		String s=String.join(myList, separator);
	}
}