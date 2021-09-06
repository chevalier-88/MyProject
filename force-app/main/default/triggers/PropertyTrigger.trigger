trigger PropertyTrigger on Property__c (after insert) {
HelperPropertyTrigger property = new HelperPropertyTrigger();
    property.createOpportunity(Trigger.new);
}