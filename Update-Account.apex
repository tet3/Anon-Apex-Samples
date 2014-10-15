/* 
	Sample Apex script for updating records.
	
*/


// Select the records that you want to update into a list
// Make sure to SELECT any fields that you want to modify in the query

List<Account> acctUpdate = new List<Account>([SELECT Id, BillingState 
                                          FROM Account 
                                          WHERE BillingState = 'YO']);

// Loop through the records, make whatever field changes you need

for(Account a:acctUpdate){
    a.BillingState='PA';
}

// DML outside the loop!

update acctUpdate;