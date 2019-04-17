public class getObjectDetails{
	 public static objNamesContainer[] getAllObjectNames(){
        List<objNamesContainer> returnList=new List<objNamesContainer>();
        for ( Schema.SObjectType o : Schema.getGlobalDescribe().values() )
            {
                Schema.DescribeSObjectResult objResult = o.getDescribe();
                returnList.add(new objNamesContainer(objResult.getLabel(),objResult.getName()));
            }
            return returnList;
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