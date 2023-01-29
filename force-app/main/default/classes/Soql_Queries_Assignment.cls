public class Soql_Queries_Assignment {
    
    // Query on all Contact records and add them to the List. Print the contents of this list.

    public static void contactQuery () {
        String conQuery = 'SELECT Id, Name, Email, Account.Id FROM Contact';
        List<Contact> conList = Database.query(conQuery);
        system.debug (conList);
    }
    
    //Write a SOQL query to retrieve/print all active Users. Prepare a Map having User Id as key and User record as value. (Hint : Map<Id,User>)

    Public static void mapOfUser () {
      Map<ID, User> userMap = new Map<ID, User>([SELECT Id, Name, IsActive FROM User where IsActive =true]); 
      system.debug (userMap);
    }
    
    //Account Name as key and AccountId as value.

    Public Static Void mapStructure(){
       Map<string, string> accMap = new Map<string, string>();
        for (Account acc: [Select Id,Name from Account]){
         	accMap.put(acc.Name, acc.Id)  ;
      
        }
       system.debug (accMap);  
    }
    //Account Id as key and entire Account object as value.
    public static void mapStructure1(){
       
        Map<Id,Account> accMap1 = new Map<Id,Account>([SELECT Id,Name FROM Account]);
        system.debug (accMap1);
    }
    public static void EnrollmentYearQuery(){
        List<Account> accList = ([select id, Name, Enrollment_Year__c from Account where Enrollment_Year__c= '2010']);
        system.debug(accList);
        List<Account> accList1 = ([select id, Name, Enrollment_Year__c from Account where Enrollment_Year__c In ('2013','2014')]);
        system.debug(accList1);
    }
     /*Write a SOQL query to find all Account records where 'Billing State' is not 'Maharashtra'and 'Kerala'. Order the results by Billing State in descending order with null values at the
end. Display the first 10,000 records only. NOTE: do not use AND operator.*/
    
    public static void billingStateQuery(){
        List<Account> accList2 =([SELECT Id, Name, Enrollment_Year__c,BillingState from Account where BillingState NOT IN ('Maharshtra','Kerela') ORDER BY BillingState DESC NULLS LAST]);
        system.debug(accList2);
    }
    


    
}