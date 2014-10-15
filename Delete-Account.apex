/*

	Sample Delete Anonymous Apex Script

*/

List<Account> forDeletion = new List<Account>([SELECT Id from Account 
											   WHERE CreatedDate = TODAY 
											   LIMIT 10000]);

delete forDeletion;
