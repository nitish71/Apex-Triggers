//write a trigger  - if createOpp or createAcc field is checked create that related record on account.
    public static void createOppAndCon(List<Account> accList){
        
        List<Contact> conList = new List<Contact>();
        List<Opportunity> oppList = new List<opportunity>();
        
        for(Account acc : accList){
            
            if(acc.CreateContact__c == True && acc.CreateOpportunity__c == True){
                Contact con = new Contact();
                con.FirstName = 'Decor';
                con.LastName = acc.Name;
                con.AccountId = acc.id;
                conList.add(con);
                
                
                Opportunity opp = new Opportunity();
                opp.Name = 'major funding ltd';
                opp.StageName = 'Prospecting';
                opp.CloseDate = system.today();
                opp.Amount = 11111;
                opp.AccountId = acc.Id;
                oppList.add(opp);
            }
            
            
            
            else if (acc.CreateContact__c == True){
                Contact con = new Contact();
                con.FirstName = 'Decor';
                con.LastName = acc.Name;
                con.AccountId = acc.id;
                conList.add(con);
            }
            
            else if (acc.CreateOpportunity__c == True){
                
                Opportunity opp = new Opportunity();
                opp.Name = 'major funding ltd';
                opp.StageName = 'Prospecting';
                opp.CloseDate = system.today();
                opp.Amount = 11100;
                opp.AccountId = acc.Id;
                oppList.add(opp);
            }
            
            if(!oppList.isEmpty() || !conList.isEmpty()){
                insert oppList;
                insert conList;
            }
            
            
            else{
                system.debug('None of the createAcc or createOpp was checked.');
            }
            
        }
    }
