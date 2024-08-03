//create a method which creates account with a contact and opportunity related to it, 
public class AccountWithOppAndContactAugust3rd {
    
    public static void createOppConWithAcc(){
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> conList = new List<Contact>();
        
        for(integer i = 1; i <= 5; i++){
            Account acc = new Account();
            acc.Name = 'William Berg'+i;
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 2323232;
            acc.Phone = '34525235';
            acc.CreateContact__c = True;
            acc.CreateOpportunity__c = True;
            accList.add(acc);
            
            
        }
        insert accList;
        for(Account acc: accList){
            if(acc.Active__c == 'Yes' && acc.CreateContact__c == True){
                Contact con = new Contact();
                con.LastName = 'Berg';
                con.FirstName = 'Bill';
                con.Phone = '342434323';
                con.AccountID = acc.Id;
                conList.add(con);
            }
            else if(acc.Active__c == 'Yes' && acc.CreateOpportunity__c == True){
                Opportunity opp = new Opportunity();
                opp.Name = 'Opp for bill berg';
                opp.StageName = 'Value Proposition';
                opp.CloseDate = system.today();
                opp.Amount = 222222;
                opp.AccountId = acc.Id;
                oppList.add(opp);
            }
            else if(acc.Active__c == 'Yes' && (acc.CreateContact__c == True && acc.CreateOpportunity__c == True)){
                Contact con = new Contact();
                con.LastName = 'Berg';
                con.FirstName = 'Bill';
                con.Phone = '342434323';
                con.AccountID = acc.Id;
                conList.add(con);
                
                Opportunity opp = new Opportunity();
                opp.Name = 'Opp for bill berg';
                opp.StageName = 'Value Proposition';
                opp.CloseDate = system.today();
                opp.Amount = 222222;
                opp.AccountId = acc.Id;
                oppList.add(opp);
            }
            
            
        }
        //insert accList;
        insert oppList;
        insert conList;
        
        
        
        
    }
}
