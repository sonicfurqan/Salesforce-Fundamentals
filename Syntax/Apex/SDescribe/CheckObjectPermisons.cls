public class CheckObjectPermisons(){

 
    public static void fieldLevelSecurityCheck(){

        Boolean isUpdatable=Schema.sObjectType.Account.fields.Name.isUpdateable();

        Boolean isQUeryable=Schema.sObjectType.Account.fields.Name.isAccessible();

    }

    public static void objectLevelSecurityCheck(){
        Boolean isRecordDeleteable=Schema.sObjectType.Account.isDeletable();
    }
    
    
}