public class CloneLeadRecord {
    public static boolean isRecurssion = true;
    public static void cloneRecord(List<Lead> leadNewList){
        if (isRecurssion == true){
            isRecurssion = false;
            List<Lead> leadToInsert = new List<Lead>();
            for(Lead l : leadNewList){
                Lead leadDublicate = new Lead();
                leadDublicate.FirstName = l.FirstName;
                leadDublicate.LastName = l.LastName;
                leadDublicate.Company = l.Company;
                leadDublicate.Status = l.Status;
                leadToInsert.add(leadDublicate);
            } 
            insert leadToInsert;
        } 
    }
}