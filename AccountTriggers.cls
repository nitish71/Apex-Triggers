//for any acount creation. description should be updated.
public class AccountTriggerHandler {
    
    public static void updateDescOnAcc(List<Account> accList){
        for(Account acc : accList){
        acc.Description = 'This is updated trigger - handler1111.';
        }
        
    }
    //upon creation of account if Industry is not null and value is 'Media' the update rating as 'Hot';
    Public static void updateRatingAsHot(List<Account> accList){
        for(Account acc : accList){
            if(acc.Industry != null && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }
        }
        
    }
    

}
