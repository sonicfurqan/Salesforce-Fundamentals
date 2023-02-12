public class MailUtill{

	public static void sendMail(){
        List<Messaging.Singleemailmessage> emailList = new List<Messaging.Singleemailmessage>();              
        Messaging.Singleemailmessage email = new Messaging.Singleemailmessage();
        email.setSubject('Holla');
        email.setPlainTextBody('Furqan was here');
        email.setCharset('utf-8');
        email.toAddresses = new String[] { 'asf@asd.com'};
		emailList.add(email);

        Messaging.SendEmailResult[] resultMail = Messaging.sendEmail(emailList);       
	}

	public static void sendEmailTemplateMail(String targetId,String whatId,String emailTemplateId){
  		Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
		if(String.isNotEmpty(targetId)) message.setTargetObjectId(targetId); 
		//Optional message.setOrgWideEmailAddressId(owdEmailId);
		message.setSaveAsActivity(false); 
		message.setTemplateID(emailTemplateId); 
		if(String.isNotEmpty(whatId)) message.setWhatId(whatId);
		message.toAddresses = new String[] { email};
		Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage> {message};
		Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
	}
}