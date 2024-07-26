public static void updateDescription(List<Account> accList){
        //List<Account> accList = new List<Account>();
        for(Account acc : accList){
            if(acc.Description == NULL){
                acc.Description = 'This is a description for Account.';
            }
            
        }
    }
