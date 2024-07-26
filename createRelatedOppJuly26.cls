public static void createRelatedOpp(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(Account acc : accList){
            if(acc.Active__c == 'Yes'){
                Opportunity opp = new Opportunity();
                opp.Name = 'Opp with Amys July 26';
                opp.StageName = 'Preospecting';
                opp.CloseDate = system.today();
                opp.Amount = 1329934;
                opp.AccountId = acc.Id;
                oppList.add(opp);
                
            }
            
        }
        insert oppList;
        
    }
