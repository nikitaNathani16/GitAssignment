@istest
public class CalculatorControllerTest {
    
    @isTest
    static void addition() {
        decimal num1 =1;
        decimal num2 =2;
        string function='add';
        
        //function =='add';
        /*     decimal num3 = 1 + 2;
decimal num4 =1 -2;
decimal num5 = 1 * 2;
decimal num6 = 1/2;
system.assertEquals(1+2, num3);
system.assertEquals(1-2, num4);
system.assertEquals(1*2, num5);
system.assertEquals(1/2, num6);   */
       
        CalculatorController cc = new CalculatorController();
        cc.function='add';
        cc.num1=22;
        cc.num2 = 98;
        cc.Calculate();
        CalculatorController cc1 = new CalculatorController();
        
        cc1.function='sub';
        cc1.num1=22;
        cc1.num2 = 98;
        cc1.Calculate();
        CalculatorController cc2 = new CalculatorController();
        
        cc2.function='multiply';
        cc2.num1=22;
        cc2.num2 = 98;
        cc2.Calculate();
        CalculatorController cc3 = new CalculatorController();
        
        cc3.function='div';
        cc3.num1=22;
        cc3.num2 = 98;
        cc3.Calculate();
        
        CalculatorController cc4 = new CalculatorController();
        CC4.Calculate();
    }
    
    
    
    
}