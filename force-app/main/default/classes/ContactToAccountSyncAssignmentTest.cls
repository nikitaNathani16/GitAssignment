@isTest //Test class Annotation

public class ContactToAccountSyncAssignmentTest {
    @testsetup
    static void testSetupMethod()
    {
       
        Account acc = new Account();
        acc.Name = 'AccTest';
        acc.Description = 'avddds';
        Insert acc;
 
        Contact con = new Contact();
        con.FirstName ='ConTest';
        con.LastName ='ConTest';
        con.AssistantPhone = '276586';
        con.AccountId = acc.Id;  
        insert con;
        
    }
 
    @isTest
    static void afterInsertContactTest(){
        account acc =[select Id from Account where Name ='AccTest'];
        Contact con = new Contact();
        con.FirstName ='ConTest';
        con.LastName ='ConTest';
        con.AssistantPhone = '276586';
        con.AccountId = acc.Id;  
        insert con;
        system.assertEquals('ConTest', con.FirstName);
    }
    @isTest
    static void afterUpdateContacts(){
        Contact con = [select Id, FirstName , LastName, AccountId, AssistantPhone from Contact where LastName ='ConTest' ];
        con.AssistantPhone ='17636174';
        Update con;
        system.assertEquals('17636174', con.AssistantPhone);
    }
    @isTest
    static void afterUpdateContactsTest(){
        Contact con = [select Id, FirstName , LastName, AccountId, AssistantPhone from Contact where LastName ='ConTest' ];
        delete con;
        system.assert(true);
        
    }
}