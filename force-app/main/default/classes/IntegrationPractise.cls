@RestResource(urlMapping='/Lead/')
global class IntegrationPractise {
    
    @httpPost
    global static string postLead(){
        RestRequest req = RestContext.request;
        RestResponse res = Restcontext.response;
        string firstName =req.params.get('firstName');
        string lastName =req.params.get('lastName');
        string email =req.params.get('email');
        string phone =req.params.get('phone');
        string company =req.params.get('company');
        //string leadStatus=req.params.get('leadStatus');
        system.debug('firstName : '+firstName);
        system.debug('lastName : '+lastName);
        system.debug('email : '+email);
        system.debug('phone : '+phone);
        system.debug('company : '+company);
        Lead l = new Lead();
        l.FirstName = firstName;
        l.LastName = lastName;
        l.Email = email;
        l.Phone = phone;
        l.Company = company;
        l.Status = 'Open - Not Contacted';
        Insert l;
        return l.Id;
       
    }
    
    
    @httpGet
    global static Lead GetLead(){
        RestRequest req = RestContext.request;
        RestResponse res = Restcontext.response;
        
        string leadId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Lead l = [SELECT Id, Name, Phone, Email, Company FROM Lead where Id = :leadId];
        return l; 
        
        
        
        
    }
    @httpPatch
    global static Lead PatchLead(string leadId, string firstName, string lastName, string email, string phone, string company){
        Lead l = [select Id, FirstName, LastName, Email, Phone, Company from Lead where Id = :leadId  ];
        l.Id = leadId;
        l.FirstName = firstName;
        l.LastName = lastName;
        l.Email = email;
        l.Phone = phone;
        l.Company = company;
        Update l;
        return l;
        
        
    }
    @httpdelete
    global static string deleteLead(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        Lead l = [SELECT Id FROM Lead];
        delete l;
        return l.Id;
    }
    
    /*@httpPut
global static string putLead(string firstName, string lastName, string email, string phone, string company)
{

}*/
}