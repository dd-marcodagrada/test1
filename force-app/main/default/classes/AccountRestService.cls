@RestResource(urlMapping='/accounts/*')
global without sharing class AccountRestService {
	
    @HttpGet
    global static List<Account> getMyAccounts() {
        return [Select Id, Name from Account limit 10];
    }
    
    @HttpPost
    global static Account createNewAccount(Account acc) {
        insert acc;
        return acc;
    }
}