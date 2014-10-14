/* 
	A sample Apex Script to generate test data.
*/

List<Account> accounts = new List<Account>();
List<Contact> contacts = new List<Contact>();

for(Integer i = 0;i<10;i++){
    String iStr = String.valueOf(i);
	Account a = new Account(
				Name = 'Acme ' + iStr,
				BillingStreet = iStr + '89 Main Street',
				BillingCity = 'Philly',
				BillingState = 'YO',
				BillingPostalCode = '1911' + iStr,
				NumberOfEmployees = 10 * i,
				Phone = '(215) 555-121' + iStr);
	accounts.add(a);
	}

insert accounts;

//Outer loop to cycle through our created Accounts
for(Account acct:accounts){

//Inner loop to cycle through 10 records
	for(Integer j = 0;j<10;j++){			
		String jStr = String.valueOf(j);
		Contact c = new Contact(
					AccountId = acct.id,
					FirstName = Math.mod(j,2) > 0 ? 'Jane' : 'John',
					LastName = 'Smithwick, ' + jStr,
					MailingStreet = jStr + '89 Main Street',
					MailingCity = 'Philly',
					MailingState = 'YO',
					MailingPostalCode = '1911' + jStr,
					Phone = '(215) 555-121' + jStr);
		contacts.add(c);
		}
}

insert contacts;

					
		
