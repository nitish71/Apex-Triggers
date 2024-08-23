//Write a method to update Rating to Hot when new Account created with Industry as media.
    public static void updateRatingHot(List<Account> accList){
        for(Account acc: accList){
            if(acc.Rating == Null && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }
        }
    }
