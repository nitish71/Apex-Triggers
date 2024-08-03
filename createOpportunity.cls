//create an opportunity when an account is created.
    public static void createOpportunity(){
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        
        
        Account acc = new Account();
        Opportunity opp = new Opportunity();
        opp.Name = 'Kays Opportunity';
        opp.StageName = 'Needs Analysis';
        opp.CloseDate = system.today();
        opp.AccountId = acc.Id;
        accList.add(acc);
        
        
        if(accList.isEmpty()){
            insert accList;
        }
    }
