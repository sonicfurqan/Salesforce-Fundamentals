public class getFiledSetValue{
  
     public static FieldSetMemberWrapperClass[] getFieldSetMember(String objectName , String fieldSetName){
        List<FieldSetMemberWrapperClass> wrapperList = new List<FieldSetMemberWrapperClass>();
        Schema.SObjectType sObj = Schema.getGlobalDescribe().get(objectName);
        for(Schema.FieldSetMember fieldMember : sObj.getDescribe().fieldSets.getMap().get(fieldSetName).getFields()){
            FieldSetMemberWrapperClass wrapper = new FieldSetMemberWrapperClass();
            wrapper.isDBRequired = fieldMember.getDbRequired();
            wrapper.isRequired = fieldMember.getRequired();
            wrapper.fieldType = String.valueOf(fieldMember.getType());
            wrapper.fieldLabel = fieldMember.getLabel();
            wrapper.fieldAPIName = fieldMember.getFieldPath();
            if(String.valueOf(fieldMember.getType()) == 'PICKLIST' || 
               String.valueOf(fieldMember.getType()) == 'MULTIPICKLIST'){
                   wrapper.pickListValues = sObj.getDescribe().fields.getMap().get(fieldMember.getFieldPath())
                       .getDescribe().getPicklistValues();
               }
            wrapperList.add(wrapper);
        }
        
        return wrapperList;
    }
}

   public class FieldSetMemberWrapperClass{
        public Boolean isDBRequired                      { get; set; }
        public Boolean isRequired                        { get; set; }
        public String fieldType                          { get; set; }
        public String fieldLabel                         { get; set; }
        public String fieldAPIName                       { get; set; }
        public List<Schema.PicklistEntry> pickListValues { get; set; }
    }