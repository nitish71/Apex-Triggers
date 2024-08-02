public static void updatingRating(List<Account> accList){
        //List<Account> accList = new List<Account>();
        for(Account acc : accList){
            
            if(acc.Industry != NULL && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }
        }
        
    }
