trigger AccountTrigger on Account (before insert) {
    
    system.debug('This is a inside trigger');
    
    for(Account acc: Trigger.New){
        acc.Description = 'New account has been inserted - updating description through trigger.';
    }

}


//This is to insert five account in the org so description updates itself.
List<Account> accList = new List<Account>();
for(integer i = 1; i <= 5; i++){
    Account acc = new Account();
    acc.Name = 'This is a test account for trigger';
    acc.Description = 'This is new accounts decsription';
    accList.add(acc);
}
insert accList;
