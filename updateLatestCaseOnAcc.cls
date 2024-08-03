//when new case is created on account put the latest case number on accounts 'latest case number' fields. - Latest_Case_Number__c
    public static void updateLatestCaseOnAcc(List<Case> caseList){
        List<Account> accList = new List<Account>();
        
        for(Case cs : caseList){
            if(cs.AccountID != NULL){
                Account acc = new Account();
                acc.id = cs.AccountId;
                acc.Latest_Case_Number__c = cs.CaseNumber;
                accList.add(acc);
            }
            
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
