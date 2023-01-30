trigger AccountTotalAmount on Opportunity (after insert, after update , after delete , after Undelete) {
   // AccountTotalAmountHandler ah = new AccountTotalAmountHandler();
   if (Trigger.isInsert && Trigger.isAfter ) {
        AccountTotalAmountHandler.accountTotalAmount(Trigger.new);
        
    }
    if (Trigger.isUpdate && Trigger.isAfter ) {
        AccountTotalAmountHandler.accountTotalAmount(Trigger.new);
    }

    if (Trigger.isDelete && Trigger.isAfter ) {
        AccountTotalAmountHandler.accountTotalAmount(Trigger.old);
    }
    if (Trigger.isUndelete && Trigger.isAfter ) {
        AccountTotalAmountHandler.accountTotalAmount(Trigger.new);
    }

}