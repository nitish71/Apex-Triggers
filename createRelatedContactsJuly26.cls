public static void createRelatedContacts(List<Account> accList){
        List<Contact> conList = new List<Contact>();
        
        for(Account acc: accList){
            Contact con = new Contact();
            con.LastName = 'Kootharpally';
            con.FirstName = 'Raj';
            con.Languages__c = 'English';
            con.AccountId= acc.Id;
            conList.add(con);
        }
        insert conList;
    }

/* This is to create account and above is to add contact to it.
List<Account> accList = new List<Account>();
for(integer i = 1; i <= 5; i++){
    Account acc = new Account();
    acc.Name = 'num num accounts';
    //acc.Description = 'This is sheldons new accounts decsription';
    acc.annualRevenue = 9909;
    acc.Industry = 'Media';
    acc.BillingStreet = 'HU Lane';
    acc.BillingCity = 'New Delhi';
    acc.BillingCountry = 'India';
    acc.BillingPostalCode = '110006';
    acc.CopyBillingToShipping__c = True;
        
    accList.add(acc);
}
insert accList;
*/
