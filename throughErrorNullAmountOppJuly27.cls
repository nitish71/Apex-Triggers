public static void throughErrorNullAmountOpp(List<Opportunity> oppList){
        for(Opportunity opp : oppList){
            if(opp.Amount == NULL){
                opp.addError('You can not create a new opportunity with empty Amount');
            }
        }
    }
