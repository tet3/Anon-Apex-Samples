/*   
       Script to update record types based on a picklist field. Uses the Schema and RecordTypeInfo
       Classes to get the record types in a flexible way where you can use the record type labels 
       for assignment
*/

Schema.DescribeSObjectResult descAcct = Schema.SObjectType.Account;
Map<String,Schema.RecordTypeInfo> rtMapByName = descAcct.getRecordTypeInfosByName();

List<Account> accts =	[SELECT Id, RecordTypeId, Type 
	                    FROM Account 
	                    WHERE RecordTypeID = NULL
	                    LIMIT 10000];
	                    
for (Account a : accts) {
  if(a.Type.contains('Partner')) {
    a.RecordTypeId = rtMapByName.get('Customer').getRecordTypeId(); // Partner
  }
	else if (a.Type.equals('Customer - Direct')) {
		a.RecordTypeId = rtMapByName.get('Customer').getRecordTypeId(); // Customer Direct
	}
	else {
		a.RecordTypeId = rtMapByName.get('Customer').getRecordTypeId(); // Customer
	}
}
update accts;
