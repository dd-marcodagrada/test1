global without sharing class AccountSOAPService {
    webservice static List<Account> getMyAccounts() {
        return [Select id, Name from account limit 10];
    }
}