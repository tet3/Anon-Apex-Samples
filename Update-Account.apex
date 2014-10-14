List<Account> acctUpdate = new List<Account>([SELECT Id, BillingState 
                                          FROM Account 
                                          WHERE BillingState = 'YO']);

for(Account a:acctUpdate){
    a.BillingState='PA';
}

update acctUpdate;