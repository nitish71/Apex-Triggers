public static void preventAccountDeletion(List<Account> accList){
        
        for(Account acc : accList){
            if(acc.Active__c == 'Yes'){
                acc.addError('You can not delete an active account');
            }
        }
    }
