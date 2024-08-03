//create a trigger to update latest amount on account from last inserted opportunity to the Account.
    public static void updateLatestAmountOnAcc(List<Opportunity> oppList){
        List<Account> accList = new List<Account>();
        
        for(Opportunity opp : oppList){
            if(opp.AccountID != NULL){
                Account acc = new Account();
                acc.id = opp.AccountId;
                acc.recent_opportunity_amount__c = opp.Amount;
                accList.add(acc);
            }
            
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
