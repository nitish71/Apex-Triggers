//method to update rating as hot when Accounts Industry field is changed to ;Media'
    public static void updateRatingToHot(List<Account> accList, Map<ID, Account> OldAccMap){
        for(Account acc : accList){
            if(acc.Industry != NULL && acc.Industry == 'Media' && acc.Industry != OldAccMap.get(acc.ID).Industry){
                acc.Rating = 'Hot';
            }
        }
    }
