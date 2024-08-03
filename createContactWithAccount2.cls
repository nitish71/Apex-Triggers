/create a contact when new accu=ount is created.
    public static void createContactWithAccount(List<Account> accList){
        //List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        
        for(Account acc : accList){
            Contact con = new Contact();
            con.LastName = 'Bwazi' + acc.Name;
            con.FirstName = 'Kay';
            con.Phone = '39289328';
            con.AccountId = acc.Id;
            conList.add(con);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
