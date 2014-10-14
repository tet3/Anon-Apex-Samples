/* 
	Undelete Anonymous Apex Example

	Here we are simplifying our code. Rather than creating a List variable and querying into it,
	we can pass a SOQL query directly to the Undelete DML action.
	
	Also note that deleted records are stored in exactly the same Account object as your live records,
	but with a system Boolean/checkbox field, Deleted, set to TRUE.

*/



Undelete [SELECT Id from Account 
		  WHERE LastModified.Name LIKE ‘%Passovoy%’ 
		        AND Deleted = TRUE];
