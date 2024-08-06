
        
        for(Account acc : accList){
            Contact con = new Contact();
            con.FirstName = 'Bernii';
            con.Phone = '19999990';
            con.LastName = 'Howards Mother';
            con.AccountId = acc.Id;
            conList.add(con);
        }
        
        if(!conList.isEmpty()){
            List<Database.SaveResult> srList3 = Database.insert(conList, False);
            for(Database.SaveResult sr : srList3){
                if(sr.isSuccess()){
                    system.debug('Accounts contacts created successfully. con ID are '+ sr.getID());
                    
                }else{
                    for(Database.Error err : sr.getErrors()){
                        system.debug('Following error has occured.');
                        system.debug(err.getStatusCode() +' '+err.getMessage());
                        system.debug('Contact that are affected is ' + err.getFields());
                    }
                }
            }
        }
