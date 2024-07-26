public static void updateActivity(List<Account> accList){
        for(Account acc : accList){
            if(acc.Active__c == NULL && acc.AnnualRevenue<1000){
                acc.Active__c = 'No';
            }
        }
    }
