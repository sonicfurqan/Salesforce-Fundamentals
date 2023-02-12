@isTest
public class LeadConvert{
	/*test class for opration captor of lead convert in apex
	*/

	@isTest
	static void convertTest(){
		Lead lead=[select id from lead limit 1];
		Database.LeadConvert lc = new database.LeadConvert(); 
 

		lc.setLeadId(lead.id); 

		
		lc.setDoNotCreateOpportunity(false); 
		

		lc.setConvertedStatus('Converted'); 

		
		
		Database.LeadConvertResult lcr = Database.convertLead(lc); 
		

		System.assert(lcr.isSuccess());
	}
}