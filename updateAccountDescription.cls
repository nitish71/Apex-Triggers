//Write a method to update description when new account is created.
    public static void updateAccountDescription(List<Account> accList){
        
        for(Account acc: accList){
            acc.Description = 'a new account has been inserted.';
        }
    }
