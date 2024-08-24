//create a related oppportunity when a accouunt is created and ACtive is Yes
    public static void createRelatedOpp(List<Account> accList){
        for(Account acc : accList){
            if(acc.Active__c == 'Yes'){
                Opportunity opp = new Opportunity();
                opp.Name = 'This is will wheatons opportunity';
                opp.StageName = 'Prospecting';
                opp.CloseDate = system.today();
                opp.AccountId = acc.Id;
                insert opp;
            }
        }
    }
