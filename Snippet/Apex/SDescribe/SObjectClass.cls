public class SObjectClass{

    //returns all object names of org
	 public static objNamesContainer[] getAllObjectNames(){
        List<objNamesContainer> returnList=new List<objNamesContainer>();
        for ( Schema.SObjectType o : Schema.getGlobalDescribe().values() )
            {
                Schema.DescribeSObjectResult objResult = o.getDescribe();
                returnList.add(new objNamesContainer(objResult.getLabel(),objResult.getName()));
            }
            return returnList;
    }


    


    //returns picklist values of field of an object
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



        public with sharing class objNamesContainer {
            @AuraEnabled public String objName;
            @AuraEnabled public String objApiName;
            public objNamesContainer(String objName,String objApiName){
                this.objName=objName;
                this.objApiName=objApiName;
            }
        }
}