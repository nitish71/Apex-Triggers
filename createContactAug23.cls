//create a contact when an account is created.
    public static void createContact(List<Account> accList){
        for(Account acc : accList){
            Contact con = new Contact();
            con.LastName = 'Cooper';
            con.FirstName = 'Sheldon';
            con.Phone ='234453245';
            con.AccountId = acc.Id;
            insert con;
            
        }
    }
