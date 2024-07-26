public static void updateRatingHot(List<Account> accList){
        for(Account acc : accList){
            if(acc.Industry != NULL && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }
        }
    }
