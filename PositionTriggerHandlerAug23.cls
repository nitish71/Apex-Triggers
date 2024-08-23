//Write methods for the classes.
public class PositionTriggerHandlerAug23 {
    
    //When new position is create populated created date and min pay, max pay
    public static void updateMinpayMaxpayDate(List<Position__c> posList){
        for(Position__c pos: posList){
            if(pos.Maximum_pay__c == NULL && pos.Minimum_pay__c == NULL){
                pos.Maximum_pay__c = 15000;
                pos.Minimum_pay__c = 10000;
                pos.Open_date__c = system.today();
            }
        }
    }

}
