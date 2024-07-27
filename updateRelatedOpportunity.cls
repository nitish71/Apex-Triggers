public static void updateRelatedOpportunity(List<Account> newList, Map<ID, Account> OldMap){
        
        List<Opportunity> oppList = new List<Opportunity>();
        Map<ID, Account> accMap = new Map<ID, Account>();
        
        for(Account acc : newList){
            if(acc.AnnualRevenue <= OldMap.get(acc.Id).AnnualRevenue){
                accMap.put(acc.id, acc);
            }
        }
        if(!accMap.isEmpty()){
            oppList = [SELECT ID, Amount FROM Opportunity WHERE AccountID =: accMap.keyset()];
        }
        
        if(!oppList.isEmpty()){
            for(Opportunity opp : oppList){
                opp.Amount = accMap.get(opp.AccountId).AnnualRevenue;
            }
            update oppList;
        }
    }
