//methods  to update decsription of opportunity.
public class OpportunityTriggerHandler {
    
    public static void updateOppDesc(List<Opportunity> oppList){
        
        for(Opportunity opp : oppList){
            if(opp.Amount != null && opp.Amount >= 100000){
                opp.Description = 'Hot Opportunity';
            }
        }
    }
    
    public static void updateOppStageName(List<Opportunity> newList, Map<ID, Opportunity> oldMap){
        
        //get methods of map returns value asociated with the value key.
        for(Opportunity opp : newList){
            if(opp.StageName != oldMap.get(opp.Id).StageName){
                if(opp.StageName == 'Closed Won'){
                    opp.Description = 'Opportunity is closed and won.';
                }
                else if(opp.StageName == 'Closed Lost'){
                    opp.Description = 'Opportunity was close lost.';
                }
                else{
                    opp.Description = 'Opportunity is open.';
                }
                
            }
        }
    }

}
