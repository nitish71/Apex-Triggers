public static void createOppWithAcc(){
        
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> conList = new List<Contact>();
        List<Case> csList = new List<Case>();
        
        for(integer i = 1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Howard Wolowitz '+i;
            acc.Industry = 'Media';
            acc.Active__c = 'Yes';
            accList.add(acc);
        }
        if(!accList.isEmpty()){
            List<Database.SaveResult> srList =  Database.insert(accList, False);
            for(Database.SaveResult sr : srList){
                if(sr.isSuccess()){
                    system.debug('Account created successfullt , Account ID are '+sr.getID());
                }
                else{
                    for(Database.Error err : sr.getErrors()){
                        system.debug('Following error has occured.');
                        system.debug(err.getStatusCode() + ' '+err.getMessage());
                        system.debug('Accounts that are affected is '+ err.getFields());
                        
                    }
                }
            }
        }
        
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = 'Brenedette';
            opp.Amount = 19999990;
            opp.CloseDate = system.today();
            opp.StageName = 'Needs Analysis';
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
