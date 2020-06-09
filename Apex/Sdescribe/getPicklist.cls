public class getPicklist{
	
	    public static Map<String,String> fetchPicklistValues(String objectName,String FieldName) 
        { 

            sObject sObj = Schema.getGlobalDescribe().get(objectName).newSObject(); 
            Schema.sObjectType sObjType = sObj.getSObjectType(); 
            Schema.DescribeSObjectResult sObjDescribe = sObjType.getDescribe(); 
            Map<String, Schema.SObjectField> sObjFieldMap = sObjDescribe.fields.getMap(); 
            Map<String,String> options = new  Map<String,String>(); 
            List<Schema.PicklistEntry> values = sObjFieldMap.get(FieldName).getDescribe().getPickListValues();  

            for (Schema.PicklistEntry a : values) 
            { 
                options .put(a.getLabel(), a.getValue()); 
            }   
            return options ; 

        } 

}