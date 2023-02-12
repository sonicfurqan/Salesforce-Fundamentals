public class getObjectBasedOnId{
    
    //returns object name from id of record
    public static void getObjectName(Id sId){
        String sobjectType = sId.getSObjectType().getDescribe().getName();

    }


    //retuns recordtypeid of giving object and record name
    public static string getObjRecordTypeId(String objectAPIName,String recordTypeDevName)
    {
        Schema.DescribeSObjectResult sobjectResult = Schema.getGlobalDescribe().get(objectAPIName).getDescribe();
        if(sobjectResult!=null){
            List<Schema.RecordTypeInfo> recordTypeInfo = sobjectResult.getRecordTypeInfos();
            for(Schema.RecordTypeInfo info : recordTypeInfo){
                if(info.getDeveloperName()==recordTypeDevName){
                    return info.getRecordTypeId();
                }
            }    
        }
        return '';
    }

    
}