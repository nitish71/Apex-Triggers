//create a contact when Accounts are created.
    public static void createConWithAccount(List<Account> accList){
        for(integer i = 1; i<=5; i++){
            Account acc  = new Account();
            acc.Name = 'Kay Chartier'+i;
            acc.AnnualRevenue = 9000000;
            acc.Active__c = 'Yes';
            accList.add(acc);
        }
        insert accList;
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList){
            Contact con = new Contact();
            con.LastName = 'Shila';
            con.FirstName = 'hearns';
            con.AccountId = acc.Id;
            conList.add(con);
            
        }
        insert conList;
    }
