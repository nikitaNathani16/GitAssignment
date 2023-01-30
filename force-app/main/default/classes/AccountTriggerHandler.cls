public class AccountTriggerHandler {
    Public static void CreateNewContact (List<Account> accList){// = [select Id, Name, Phone, Industry From Account where Industry Includes ('Agriculture', 'Banking', 'Chemical', 'Education', 'Finance', 'Government', 'Healthcare', 'Insurance', 'Machinery', 'Not for profit', 'Recreation', 'Shipping', 'Technology', 'Utilities') ]) {
        List<Contact> conList = new List<Contact>();
        Integer startCpuTime;
        Integer endCpuTime;
        startCpuTime=limits.getCpuTime();
        for(Account acc : accList){
            Contact con = new Contact
                (LastName = acc.name,
                Phone = acc.Phone,
                AccountId = acc.Id
                );
            conList.add(con);
            
            
        }
        
        insert conList;
        endCpuTime=limits.getCpuTime();
        system.debug('cpuTime='+ (endCpuTime - startCpuTime)); 
    }
   
}