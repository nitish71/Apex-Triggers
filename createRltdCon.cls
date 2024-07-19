//Write a trigger to create a related contact everytime an Account is created.
    
    public static void createContactOnAccount(List<Account> accList){
        
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList){
            
            Contact con = new Contact();
            con.FirstName = 'Contact July 19';
            con.LastName = acc.Name;
            con.Phone = '3253254343';
            con.AccountId = acc.Id;
            conList.add(con);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
