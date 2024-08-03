public static void updatePositionPay(List<Position__c> positionList){
        for(Position__c pos : positionList){
            if(pos.Position_status__c == 'New'  && pos.Maximum_pay__c == NULL && pos.Minimum_pay__c == NULL){
                pos.Maximum_pay__c = 1000;
                pos.Minimum_pay__c = 500;
            }
        }
    }
