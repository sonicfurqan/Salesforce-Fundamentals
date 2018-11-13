public class getGroupMembers{
	 public static Set<id> GetUserIdsFromGroup(Id groupId){
    
        Set<Id> result=new Set<Id>();
        String userType = Schema.SObjectType.User.getKeyPrefix();
        String groupType = Schema.SObjectType.Group.getKeyPrefix();

        // Loop through all group members in a group
        for (GroupMember m : [Select Id, UserOrGroupId From GroupMember Where GroupId = :groupId]){
            if (((String)m.UserOrGroupId).startsWith(userType)){
                result.add(m.UserOrGroupId);
            }
        }

        return result;  
    }
}