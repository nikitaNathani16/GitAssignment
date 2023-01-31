@isTest
public class leadDuplicateRecordsBatchTest {
 @isTest
    public static void LeadTest(){
        
        List<Lead> leadList = new List<Lead>();
        for(Integer i=0;i<3;i++){
        lead l = new Lead();
        l.FirstName= 'Aruna';
        l.LastName = 'Cheppilate';
        l.Company = 'ABC';
        l.Status = 'Closed - Converted';
        leadList.add(l);
        
        
        }
        insert leadList;
        Test.startTest();
        leadDuplicateRecordsBatch ld = new leadDuplicateRecordsBatch();
        Database.executeBatch(ld);
        Test.stopTest();
        
        List<Lead> leads = [select Name, Company, Status from lead ];
        system.assertEquals(1,leads.size());
    }
    @isTest
	public static void testschedule12() {
		Test.StartTest();
		leadDuplicateRecordsBatch testsche = new leadDuplicateRecordsBatch();
		String sch = '0 0 0/2 ? * * *';
		system.schedule('Test status Check', sch, testsche );
		Test.stopTest();
	}
}