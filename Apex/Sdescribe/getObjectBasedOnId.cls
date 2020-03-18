public class getObjectBasedOnId{
    
    public static void checkType(Id sId){
        String sobjectType = sId.getSObjectType().getDescribe().getName();

    }
}