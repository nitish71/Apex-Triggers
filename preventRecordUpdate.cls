public static void preventRecordUpdate(List<Account> accList){
        for(Account acc : accList){
            
            //date d = system.today().addDays(-7);
            
            if(acc.CreatedDate > (system.today()-7)){
                acc.addError('You can not updated account older than 7  days');
            }
        }
    }
