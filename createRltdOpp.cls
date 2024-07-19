//Write a trigger to create an opportunity every time when an active account is created.
    public static void createRelatedOpp(List<Account> accList){
        
        List<Opportunity> oppList = new List<Opportunity>();
        
        
        for(Account acc :accList){
            if(acc.Active__c == 'Yes'){
                Opportunity opp = new Opportunity();
                opp.Name = 'Flood funding opportunity';
                opp.StageName = 'Prospecting';
                opp.Amount = 199900;
                opp.CloseDate = system.today();
                opp.AccountId = acc.Id;
                oppList.add(opp);
                
            }
            
        }
