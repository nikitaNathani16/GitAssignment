@isTest
public class ScientificCalculatorControllerTest {

@isTest
static void button7ClickedTest(){
    ScientificCalculatorController scc = new ScientificCalculatorController();
    
    scc.button7Clicked();
    scc.button0Clicked();
    scc.button8Clicked();
    scc.button9Clicked();
    scc.button4Clicked();
    scc.button5Clicked();
    scc.button6Clicked();
    scc.button1Clicked();
    scc.button2Clicked();
    scc.button3Clicked();
} 
@istest
static void multiplyTest(){
    scientificcalculatorcontroller scc1=new scientificcalculatorcontroller();
    PageReference pageRef = Page.ScientificCalculatorPage;
    System.Test.setCurrentPage(pageRef);
    pageRef.getParameters().put('operator','multiply');
    scc1.multiply();
    
}
@istest
static void addTest(){
    scientificcalculatorcontroller scc1=new scientificcalculatorcontroller();
    PageReference pageRef = Page.ScientificCalculatorPage;
    System.Test.setCurrentPage(pageRef);
    pageRef.getParameters().put('operator','add');
    scc1.add();
    
}

@istest
static void sutractTest(){
    System.Test.startTest();
    PageReference pageRef = Page.ScientificCalculatorPage;
    pageRef.getParameters().put('operator','subtract');
    
    System.Test.setCurrentPage(pageRef);
    
    scientificcalculatorcontroller scc2=new scientificcalculatorcontroller();
    pageRef.getParameters().put('val1Test','1');
    String operatorTest='subtract';
    Integer val1Test=1;
    scc2.subtract();
    
    System.Test.stopTest();
    
}

@isTest
public static void testDivide(){
    
    System.Test.startTest();
    PageReference pageRef = Page.ScientificCalculatorPage;
    pageRef.getParameters().put('operator','div');
    
    System.Test.setCurrentPage(pageRef);
    
    scientificcalculatorcontroller scc=new scientificcalculatorcontroller();
    pageRef.getParameters().put('val1Test','1');
    String operatorTest='div';
    Integer val1Test=1;
    scc.divide();
    
    System.Test.stopTest();
    
}

@isTest
static void resultaddTest(){
    PageReference pageRef = Page.scientificcalculatorpage;
    System.Test.setCurrentPage(pageRef);
    pageRef.getParameters().put('operator','add');
    
    pageRef.getParameters().put('val','10');
    pageRef.getParameters().put('val1','1');
    scientificcalculatorcontroller ssc5=new scientificcalculatorcontroller();
    ssc5.val = '10';
    ssc5.operator='add';
    ssc5.result();
    system.assertEquals('11', ssc5.val);
}
@isTest
static void resultsubTest(){
    PageReference pageRef = Page.scientificcalculatorpage;
    System.Test.setCurrentPage(pageRef);
    pageRef.getParameters().put('operator','sub');
    pageRef.getParameters().put('val','10');
    pageRef.getParameters().put('val1','1');
    scientificcalculatorcontroller ssc5=new scientificcalculatorcontroller();
    ssc5.val = '10';
    ssc5.operator='sub';
    
    ssc5.result();
    system.assertEquals('-9', ssc5.val);
}
@isTest
static void resultmulTest(){
    PageReference pageRef = Page.scientificcalculatorpage;
    System.Test.setCurrentPage(pageRef);
    pageRef.getParameters().put('operator','mul');
    pageRef.getParameters().put('val','10');
    pageRef.getParameters().put('val1','1');
    scientificcalculatorcontroller ssc5=new scientificcalculatorcontroller();
    ssc5.val = '10';
    ssc5.operator='mul';
    ssc5.result();
    system.assertEquals('10', ssc5.val);
}
@isTest
static void resultdivTest(){
    PageReference pageRef = Page.scientificcalculatorpage;
    string operator =  apexpages.currentpage().getparameters().get('operator');
    System.Test.setCurrentPage(pageRef);
    pageRef.getParameters().put('operator','div');
    //pageRef.getParameters().put('val','10');
    pageRef.getParameters().put('val1','1');
    scientificcalculatorcontroller ssc5=new scientificcalculatorcontroller();
    ssc5.val = '10';
    ssc5.operator='div';
    ssc5.result();
    system.assertEquals('0', ssc5.val);
}
}