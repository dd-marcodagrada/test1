@RestResource(urlMapping='/contacts/*')
global without sharing class ContactRestService {
	
    @HttpGet
    global static List<Contact> getMyContacts() {
        return [Select Id, Name from Contact limit 10];
    }
    
    @HttpPost
    global static Contact createNewContact(Contact acc) {
        insert acc;
        return acc;
    }
}