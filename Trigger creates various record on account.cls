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
    
    //upon creation of account if BillingToShipping has been checked the, copy the billing address to shipping address fields.
    public static void updateBillingToShipping(List<Account> accList){
        for(Account acc : accList){
            if(acc.CopyBillingToShipping__c == True){
                acc.ShippingStreet = acc.BillingStreet;
                acc.ShippingCity = acc.BillingCity;
                acc.ShippingCountry = acc.BillingCountry;
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
        }
    }
    
    //create contacts and associate it to account
    public static void createContactCaseAndOppBook(List<Account> accList){
        
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList){
            
            Contact con = new Contact();
            con.FirstName = 'Contact july 8th';
            con.LastName = acc.Name;
            //con.Languages__c = acc.Name;
            con.Phone = '879287892';
            con.AccountId = acc.Id;
            conList.add(con);
            
            
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        
        List<Case> caseList = New List<Case>();
        for(Account acc : accList){
            
            Case cse = new Case();
            cse.AccountId = acc.Id;
            cse.Subject = 'Regarding asset';
            cse.Comments = 'Please expedite this';
            cse.Origin = 'Web';
            //cse.CaseNumber = 893298;
            //cse.ContactId = con.Id;
            caseList.add(cse);
        }
        
        if(!caseList.isEmpty()){
            insert caseList;
        }
        
        List <Opportunity> oppList = new List<Opportunity>();
        for(Account acc : accList){
            
            Opportunity opp = new Opportunity();
            opp.Name = 'This is opp on Acc';
            opp.StageName = 'Needs Analysis';
            opp.CloseDate = system.today();
            opp.Amount  = 150000;
            opp.Type = 'Prospecting';
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
        
        if(!oppList.isEmpty()){
            insert oppList;
        }
        
        List<Book__c> bookList = new List<Book__c>();
        for(Account acc : accList){
            
            Book__c book = new Book__c();
            book.Name = 'AI superpower : China and Silicon vLley';
            book.Account__c = acc.Id;
            //book.CreatedDate = system.today();
            book.Price__c = 100;
            bookList.add(book);
            
        }
        
        if(!bookList.isEmpty()){
            insert bookList;
        }
        
    }
    
    
    

}
