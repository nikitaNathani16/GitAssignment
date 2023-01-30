@isTest
public class AccountTotalAmountHandlerTest {
    @isTest
    static void TotalAmountTest(){
        List<Account> accList = TestDataFactory.accData(1);
        
        system.assertEquals(1, accList.size());
        
        
        
        List<Opportunity> oppList = TestDataFactory.oppData(1);
        oppList.get(0).AccountId = accList.get(0).id;
        Update oppList;
        system.assertEquals(1, oppList.size());      

        AccountTotalAmountHandler.accountTotalAmount(oppList);
        system.assertEquals(5000, oppList.get(0).Amount);      
 
        
        
        
    }

}