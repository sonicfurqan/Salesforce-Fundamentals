public class getQueMembers{
	
    public static Set<id> getQueueMembers(Id queueId){
        Set<Id> queueMemberIds = new Set<Id>();
        List<GroupMember> queueMembers = [Select UserOrGroupId From GroupMember where GroupId =:queueId];
        String userType = Schema.SObjectType.User.getKeyPrefix();
        String groupType = Schema.SObjectType.Group.getKeyPrefix();
        for (GroupMember m : queueMembers){
            if (((String)m.UserOrGroupId).startsWith(userType)){
                    queueMemberIds.add(m.UserOrGroupId);
            }
       }
        return queueMemberIds ;
    }
}