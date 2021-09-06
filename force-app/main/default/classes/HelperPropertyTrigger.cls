public class HelperPropertyTrigger {
    public void createOpportunity(List<Property__c> listProps ){
		List<Opportunity> listOpp = new List<Opportunity>();
        for(Property__c p: listProps){
            if(p.Broker__c!=null){
                Opportunity opp = new  Opportunity();
                opp.Name = p.Name;
                opp.CloseDate = Date.today().addMonths(1);
                opp.StageName ='Prospecting';
                opp.Broker__c = p.Broker__c;
                opp.Property__c = p.Id;
                opp.Amount = p.Price__c;
                listOpp.add(opp);
            }
        }
        insert listOpp;
    }
}