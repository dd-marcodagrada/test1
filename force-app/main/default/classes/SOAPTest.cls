global without sharing class SOAPTest {
    webservice static List<Contact> getContacts() {
        return [Select id, name from Contact Limit 100];
    }
}