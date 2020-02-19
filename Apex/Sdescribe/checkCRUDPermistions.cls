public class checkCRUDPermistions {

    public static boolean checkCurdPermision(String obj, String opration, String field) {
        String[] types = new String[] { obj };
        Schema.DescribeSobjectResult[] results = Schema.describeSObjects(types);
        for (Schema.DescribeSobjectResult res: results) {
            if (opration.equals('update')) {
                if (res.isUpdateable()) {
                    if (res.fields.getMap().containsKey(field.toLowerCase()) && (res.fields.getMap().get(field.toLowerCase())).getDescribe().isUpdateable()) {

                        return true;

                    }
                    else {
                        return false;
                    }
                } 
                else {
                    return false;
                }
            } 
            else if (opration.equals('insert')) {
            //same as update with isInsert() method call
            } 
            else if (opration.equals('select')) {
            	//same as update with isAccessible() method call
            }
        }

    }
}