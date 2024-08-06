for(Account acc : accList){
            Case cse = new Case();
            cse.Subject = 'Bernii not picking calls.';
            cse.Origin = 'Phone';
            cse.AccountId = acc.Id;
            cse.Comments = 'Howard is having problem with one hand Robot.';
            cse.Status = 'New';
            csList.add(cse);
        }
        
        if(!csList.isEmpty()){
            List<Database.SaveResult> srList4 = Database.insert(csList, False);
            for(Database.SaveResult sr : srList4){
                if(sr.isSuccess()){
                    system.debug('Accounts Case created successfully. case ID are '+ sr.getID());
                    
                }else{
                    for(Database.Error err : sr.getErrors()){
                        system.debug('Following error has occured.');
                        system.debug(err.getStatusCode() +' '+err.getMessage());
                        system.debug('cases that are affected is ' + err.getFields());
                    }
                }
            }
        }
