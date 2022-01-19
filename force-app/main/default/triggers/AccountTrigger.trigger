trigger AccountTrigger on Account (before insert) {
    for(Account a : Trigger.New) {
        a.Name = a.Name + '1';
    }
}