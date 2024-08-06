//Method to update Phone on Phone field.
    Public static void updateDescriptionOnAcc(List<Account> accList, Map<id, Account> accOldMap){
        for(Account acc: accList){
            if(acc.Phone == accOldMap.get(acc.Id).Phone){
                acc.Description = 'Phone has been updated.';
            }
        }
    }
