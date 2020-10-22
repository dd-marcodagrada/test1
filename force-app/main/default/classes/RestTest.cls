@RestResource(urlMapping='/api/contacts/*')
global without sharing class RestTest {

    @HttpGet
    global static List<Contact> getContacts() {
        
        return [Select id, name, (Select id, Description from Cases) caseList from Contact Limit 100];
        
    }
    @HttpPost
    global static Contact postContact(Contact contact) {
        insert contact;
        return contact;
    }
}