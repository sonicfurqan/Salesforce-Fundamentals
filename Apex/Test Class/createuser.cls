@isTest
public class createUser{
	@isTest
	static void setupUser(){
                Profile profileId = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1]; 

                User usr = new User(LastName = 'name', 

                                FirstName='completename', 

                                Alias = 'ncomp', 

                                Email = 'asdf@asdf.com', 

                                Username = 'asdf@asdf.com', 

                                ProfileId = profileId.id, 

                                TimeZoneSidKey = 'GMT', 

                                LanguageLocaleKey = 'en_US', 

                                EmailEncodingKey = 'UTF-8', 

                                LocaleSidKey = 'en_US' 

                                ); 

                        INSERT USR;
	}
}