//update account with latest opportunity Amount that is inserted.
    public static void updateLatestAmountOnAcc(List<Opportunity> oppList){
        List<Account> accList = new List<Account>();
        
        for(Opportunity opp : oppList){
            if(opp.AccountId != NULL){
                Account acc = new Account();
                acc.Id = opp.AccountId;
                acc.recent_opportunity_amount__c = opp.Amount;
                accList.add(acc);
                
            }
        }
        
        if(!accList.isEmpty()){
            update accList;
        }
    }
