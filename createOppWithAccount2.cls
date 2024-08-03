//create Opportunity when new account is created.
    public static void createOppWithAccount(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = 'Tina Garrison opp';
            opp.StageName = 'Needs Analysis';
            opp.CloseDate = system.today();
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
    }
