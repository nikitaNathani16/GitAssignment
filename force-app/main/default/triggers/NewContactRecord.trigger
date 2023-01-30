trigger NewContactRecord on Account (after insert) {
    
    if (Trigger.isInsert){
        AccountTriggerHandler.CreateNewContact(Trigger.new);
    }
    

}