@isTest
public class CloneLeadRecordTest {
    @isTest
    static void cloneRecord(){
        
        List<Lead> lList = new List<Lead>();
        Lead l = new Lead();
        l.FirstName = 'Lead';
        l.LastName = 'Clone';
        l.Company = 'Test';
        lList.add(l);
        Insert l; 
        CloneLeadRecord.cloneRecord(lList);
        system.assertEquals(1, lList.size());
            }
    
}