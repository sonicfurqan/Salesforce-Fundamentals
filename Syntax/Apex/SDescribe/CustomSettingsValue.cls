public class CustomSettingsValue{
	
	public static void getHirarchySettings(){

        //Get access by order user>profile>default
        Configuration__c config = Configuration__c.getInstance(userinfo.getUserId());
        if(config==null) config= Configuration__c.getInstance(userinfo.getProfileId());
        if(config==null) config= Configuration__c.getOrgDefaults();
    
	}
}