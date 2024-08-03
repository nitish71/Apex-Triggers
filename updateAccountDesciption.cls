//if Phone is updated on the account update description - 'Phone is updated'
    public static void updateAccountDesciption(List<Account> accList, Map<Id, Account> oldMap){
        //List<Account> accList = new List<Account>();
        
        for(Account acc : accList){
            if(acc.Phone != OldMap.get(acc.Id).Phone){
                acc.Description = 'Phone is updated. Old value is '+ oldMap.get(acc.Id).Phone +' and New Value is '+ acc.Phone;
            }
        }
    }
