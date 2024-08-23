//Write various methods to perform opeartions on Opportunity
public class OpportunityTriggerHandlerAug23 {
    
    //write a method to update Opportunity description as Hot opportunity when Amount exceeds 10000.
    public static void updateOppDescription(List<Opportunity> oppList){
        for(Opportunity opp : oppList){
            if(opp.Amount != NULL && opp.Amount > 10000){
                opp.Description = 'Hot Opportunity';
            }
        }
    }
    

}
