trigger AccountTrigger on Account (before insert) {
        System.debug('Hello, World');
    for(Account account_i: Trigger.new){
        account_i.Description = 'New description';
    }
}