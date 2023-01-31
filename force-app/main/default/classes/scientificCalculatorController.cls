public class scientificCalculatorController {
    public string val {get;set;} 
    public string operator {get;set;} 
    //public decimal urlvalue {get;set;}
    public integer val1;
    public integer val2;
    
    public scientificcalculatorcontroller(){
        string oper =  apexpages.currentpage().getparameters().get('operator');
        if(string.isblank(oper)){
            val = apexpages.currentpage().getparameters().get('val');
        }
    }
    
    public pagereference button7clicked() {
        val = (val==null)?'7':val + '7';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button8clicked() {
        val = (val==null)?'8':val + '8';
        system.debug('val==='+val);
        return null;
    }   
    public pagereference button9clicked (){
        val = (val==null)?'9':val + '9';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button6clicked() {
        val = (val==null)?'6':val + '6';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button4clicked() {
        val = (val==null)?'4':val + '4';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button5clicked() {
        val = (val==null)?'5':val + '5';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button0clicked() {
        val = (val==null)?'0':val + '0';       
        system.debug('val==='+val);
        return null;
    }
    
    
    //public string button7clicked {get;set;}
    public pagereference button1clicked() {
        val = (val==null)?'1':val + '1';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button2clicked() {
        val = (val==null)?'2':val + '2';
        system.debug('val==='+val);
        return null;
    } 
    public pagereference button3clicked() {
        val = (val==null)?'3':val + '3';
        system.debug('val==='+val);
        return null;
    }
    public pagereference divide() {
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = integer.valueof(val);
        }  
        pagereference p =page.scientificcalculatorpage;  
        p.getparameters().put('operator','div');
        p.getparameters().put('val1',string.valueof(val1));
        p.setredirect(true);
        return p;
        
    }
    public pagereference multiply(){
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = integer.valueof(val);
            
        }  
        system.debug('val1=='+val1);
        pagereference p =page.scientificcalculatorpage;  
        p.getparameters().put('operator','multiply');
        p.getparameters().put('val1',string.valueof(val1));
        p.setredirect(true);
        return p;
        
    }
    public pagereference subtract(){
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = integer.valueof(val);
            
        }  
        system.debug('val1=='+val1);
        pagereference p =page.scientificcalculatorpage;  
        p.getparameters().put('operator','subtract');
        p.getparameters().put('val1',string.valueof(val1));
        p.setredirect(true);
        return p;
        
    }
    public pagereference add(){
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = integer.valueof(val);   
        }  
        system.debug('val1=='+val1);
        pagereference p =page.scientificcalculatorpage;  
        p.getparameters().put('operator','add');
        p.getparameters().put('val1',string.valueof(val1));
        p.setredirect(true);
        return p;
        
    }
    public void  result() {
        
        
        pagereference p =page.scientificcalculatorpage;
        val1 = integer.valueof(apexpages.currentpage().getparameters().get('val1'));
        system.debug('val1=='+val1);
        val = (val==null)?'0':val;
        system.debug('val in result=='+val);
        if(this.val2 == null){
            this.val2 = integer.valueof(val);
            
            system.debug('val2=='+val2);
            
        }
        string  operator =apexpages.currentpage().getparameters().get('operator');
        system.debug('operator value== '+operator);
        
        switch on operator{
            when 'add'{  
                
                val = string.valueof(val1 + val2);
                system.debug('inresultadd=='+val2);
            }
            when 'sub'{
                val = string.valueof(val1 - val2);
                system.debug('inresult  n                     sub=='+val2);
            }
            when 'mul'{
                val = string.valueof(val1 * val2);
            }
            when 'div'{
                val = string.valueof(val1 / val2);
            }
            
        }  
        
    }
}