public class CaseTriggerHandlerAug24 {
    
    public static void populateCaseOnAcc(List<Case> caseList){
        List<Account> accList = new List<Account>();
        //Account acc = new Account();
        for(Case cs : caseList){
            if(cs.AccountId != NULL){
                Account acc = new Account();
                acc.Id = cs.AccountId;
                acc.Latest_Case_Number__c = cs.CaseNumber;
                accList.add(acc);
            }
            
        }
        
        if(!accList.isEmpty()){
            update accList;
        }
        
    }

}
