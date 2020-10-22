@RestResource(urlMapping='/opportunities/*')
global without sharing class OpportunityRestService {
	
    @HttpGet
    global static List<Opportunity> getMyOpportunities() {
        return [Select Id, Name from Opportunity limit 10];
    }
    
    @HttpPost
    global static Opportunity createNewOpportunity(Opportunity acc) {
        insert acc;
        return acc;
    }
}