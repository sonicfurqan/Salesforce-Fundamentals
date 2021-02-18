global class MyDomainDiscLoginDefaultHandler implements Auth.MyDomainLoginDiscoveryHandler{
    global String input {get; set;}
   public String startURL  {get; set;}
   public List<Auth.VerificationMethod> methods;
   public String error;
     global PageReference login(String identifier, String startUrl, Map<String, String> requestAttributes){
        if(identifier !=null){
            // Search for user by email
            List<User> users = [SELECT Id FROM User WHERE Email = :identifier AND IsActive = TRUE];
            if (!users.isEmpty() && users.size() == 1) {
                return discoveryResult(users[0], startUrl, requestAttributes);
            } else {
                throw new Auth.LoginDiscoveryException('No unique user found. User count=' + users.size());
            }
        }
        throw new Auth.LoginDiscoveryException('Invalid Identifier');  
    }
   
   
    private PageReference getSsoRedirect(User user, String startUrl, Map<String, String> requestAttributes) {
         SamlSsoConfig SSO = [select Id from SamlSsoConfig where DeveloperName='SamlTest' limit 1];
         String ssoUrl = Auth.AuthConfiguration.getSamlSsoUrl(requestAttributes.get('MyDomainUrl'), startUrl, SSO.Id);
         return new PageReference(ssoUrl);
   
    }
   
    private PageReference discoveryResult(User user, String startUrl, Map<String, String> requestAttributes)
    {
        PageReference ssoRedirect = getSsoRedirect(user, startUrl, requestAttributes);
        if (ssoRedirect != null) {
            return ssoRedirect;
        }
        else {
            return Auth.SessionManagement.finishLoginDiscovery(Auth.LoginDiscoveryMethod.password, user.Id);    
        }
    }
   
    private boolean isValidEmail(String identifier) {
        String emailRegex = '^[a-zA-Z0-9._|\\\\%#~`=?&/$^*!}{+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$';
        // source: http://www.regular-expressions.info/email.html
        Pattern EmailPattern = Pattern.compile(emailRegex);
        Matcher EmailMatcher = EmailPattern.matcher(identifier);
        if (EmailMatcher.matches()) { return true; }
        else { return false; }
    }
   
   
}