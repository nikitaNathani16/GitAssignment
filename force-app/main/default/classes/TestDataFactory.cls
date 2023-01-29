@istest
public class TestDataFactory {
    public Static  List<Account> accData (Integer num){
        List<Account> accList = new  List<Account>();
        for(Integer i = 0 ; i< num ; i++){
            Account a = new Account(Name = 'Test Account '+i, Phone ='10'+i, Total_Amount__c=0);
            accList.add(a);
            
        }
        Insert accList;
        return accList;
    }
    
    
    public Static  List<Contact> conData (Integer num){
        List<Contact> conList = new  List<Contact>();
        for(Integer i = 0 ; i< num ; i++){
            Contact c = new Contact(LastName = 'Test Contact '+i, Phone ='10'+i);
            conList.add(c);
            
        }
        
            Insert conList;
        
        return conList;
    }
    
    
    
    public Static  List<Lead> leadData (Integer num){
        List<Lead> lList = new  List<Lead>();
        for(Integer i = 0 ; i< num ; i++){
            Lead l = new Lead (LastName = 'Test Lead '+i, Phone ='10'+i);
            lList.add(l);
            
        }
        Insert lList;
        return lList;
    }
    
    public Static List<Opportunity> oppData (Integer num){
        List<Opportunity> oppList = new  List<Opportunity>();
        
            for(Integer i = 0 ; i< num ; i++){
            Opportunity opp = new Opportunity (Name = 'Test Lead '+i,
                                               StageName='Prospecting',
                                               CloseDate=System.today().addMonths(1),
                                               Amount=5000
                                               );
            
            oppList.add(opp);                                        
            
        }
        Insert oppList;
        return oppList;
    }
    
}