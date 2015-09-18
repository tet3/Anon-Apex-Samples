/* 
      Uses a "scratch" field, Touch__c, to cause a workflow that is based on the 
      Primary_Opportunity__c checkbox to fire.
*/

List<Opportunity> opps = [SELECT Id, Primary_Opportunity__c, Touch__c 
                          FROM Opportunity 
                          WHERE Primary_Opportunity__c = TRUE];  

for (Opportunity o : opps) {	
  if (o.Touch__c) {
    o.Touch__c = FALSE;
  }
  o.Touch__c = TRUE;
}
update opps;
