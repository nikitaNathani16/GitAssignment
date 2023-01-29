public class AccountTotalAmountHandler {
    //public static Boolean isFirstTime = true;  //to avoid recurrsion
    public static void accountTotalAmount(List<Opportunity> opplst){
        List<Account> acclist =new List<Account>();
        Set<Id> AccountIdSet = new Set<Id>();
        for(Opportunity opp: opplst){
            AccountIdSet.add(opp.AccountId) ;  
        }
        //system.debug('AccountIdSet'+AccountIdSet);
        //Map<Id,Integer> AccMap = new Map<Id,Integer>([select Id, Name, Total_Amount__c from Account where Id=:AccountIdSet]);
        
        
        for(Account acc :  [select Id, Total_Amount__c, (select Amount from Opportunities ) from Account where Id IN: AccountIdSet]){
            acc.Total_Amount__c = 0;
            for (Opportunity opp1 : acc.Opportunities){
                //acc.Id = acc.Id + opp.AccountId;
                acc.Total_Amount__c = acc.Total_Amount__c + opp1.Amount;
                
            }
            acclist.add(acc);
            // system.debug('acclist');
        }
        Update acclist;
    } 
}