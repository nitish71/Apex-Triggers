//demonstrate trigger
trigger AccountTriggerAug23 on Account (before insert) {
    
    system.debug('This is from inside trigger.');
    
    for(Account acc : Trigger.New){
        acc.Description = 'This is new Trigger Aug 23';
    }
    

}
