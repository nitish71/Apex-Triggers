trigger AccountTrigger on Account (before insert) {
    
    system.debug('This is a inside trigger');
    
    for(Account acc: Trigger.New){
        acc.Description = 'New account has been inserted - updating description through trigger.';
    }

}
