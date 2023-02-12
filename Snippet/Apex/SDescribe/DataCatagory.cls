public class DataCatagory{
	
	public static void getAllDataCatMap(){
	        List<DescribeDataCategoryGroupResult> describeCategoryResult = Schema.describeDataCategoryGroups(new List<String>{'KnowledgeArticleVersion'});
                List<DataCategoryGroupSobjectTypePair> pairs =  new List<DataCategoryGroupSobjectTypePair>();
                for(DescribeDataCategoryGroupResult singleResult : describeCategoryResult){
                        DataCategoryGroupSobjectTypePair p = new DataCategoryGroupSobjectTypePair();
                        p.setSobject(singleResult.getSobject());
                        p.setDataCategoryGroupName(singleResult.getName());
                        pairs.add(p);
                }
                List<DescribeDataCategoryGroupStructureResult> describeCategoryStructureResult = 
                Schema.describeDataCategoryGroupStructures(pairs, false);
      
	}
	public static void getDataCatMap(String groupName){
	        List<DescribeDataCategoryGroupResult> describeCategoryResult = Schema.describeDataCategoryGroups(new List<String>{'KnowledgeArticleVersion'});
                List<DataCategoryGroupSobjectTypePair> pairs =  new List<DataCategoryGroupSobjectTypePair>();
                for(DescribeDataCategoryGroupResult singleResult : describeCategoryResult){
                if(singleResult.getName()==groupName){
                        DataCategoryGroupSobjectTypePair p = new DataCategoryGroupSobjectTypePair();
                        p.setSobject(singleResult.getSobject());
                        p.setDataCategoryGroupName(singleResult.getName());
                        pairs.add(p);
                        }
                }
                List<DescribeDataCategoryGroupStructureResult> describeCategoryStructureResult = 
                Schema.describeDataCategoryGroupStructures(pairs, false);
      
	}

}