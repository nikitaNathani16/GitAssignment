public class CalculatorController {
    
    public decimal num1 {get;set;}
    public decimal num2 {get;set;}
    public decimal result {get;set;}
    public string function{get;set;}
    /*public string getFunction(){
        return this.function;
    }
    public void setFunction(string myFunction){
        this.function = myFunction;
    }*/
    
    
    public void Calculate()
    {
       
        if(function == 'add')
        {
            result = num1 + num2;
            
        }
        else if(function == 'sub')
        {
            result = num1 - num2;
        }
        else if(function == 'multiply')
        {
            result = num1 * num2;
        }
        else if(function == 'div')
        {
            result = num1 / num2;
        }
        else
        {
            result = 0;
        }
    }

}