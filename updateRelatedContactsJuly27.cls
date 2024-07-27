public static void updateRelatedContacts(List<Account> newList, Map<ID, Account> OldMap){
        
        List<Contact> conList = new List<Contact>();
        Map<ID, Account> accMap = new Map<ID, Account>();
        
        for(Account acc : newList){
            if(acc.Phone != OldMap.get(acc.Id).Phone){
                accMap.put(acc.id, acc);
            }
        }
        
        if(!accMap.isEmpty()){
            conList = [SELECT ID, HomePhone FROM Contact WHERE AccountID =: accMap.keyset()];
        }
        
        if(!conList.isEmpty()){
            for(Contact con : conList){
                con.HomePhone = accmap.get(con.AccountId).Phone;
            }
            
            update conList;
        }
    }
