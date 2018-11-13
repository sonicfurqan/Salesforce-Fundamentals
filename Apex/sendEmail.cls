public class sendEmail{
	public static void sendMail{
				List<Messaging.Singleemailmessage> emailList = new List<Messaging.Singleemailmessage>();              
                Messaging.Singleemailmessage email = new Messaging.Singleemailmessage();
                email.setSubject('Holla');
                email.setPlainTextBody('Furqan was here');
                email.setCharset('utf-8');
                emailList.add(email);
                Messaging.SendEmailResult[] resultMail = Messaging.sendEmail(emailList);       
	}
}