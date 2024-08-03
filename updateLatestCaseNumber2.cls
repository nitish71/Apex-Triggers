//when new case is created on account put the latest case number on accounts 'latest case number' fields. - Latest_Case_Number__c
    public static void updateLatestCaseNumber(List<Case> caseList){
        List<Account> accList = new List<Account>();
        for(Case cs:caseList){
            if(cs.AccountId != NULL){
                Account acc = new Account();
                acc.Id = cs.AccountId;
                acc.Latest_Case_Number__c = cs.CaseNumber;
                accList.add(acc);
            }
            if(!accList.isEmpty()){
                insert accList;
            }
        }
    }
