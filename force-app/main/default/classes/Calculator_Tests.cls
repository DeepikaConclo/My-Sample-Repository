@isTest
public class Calculator_Tests {

//positive addition
    @isTest public static void additionTest()
    {
       Integer addition= Calculator.addition(6, 7);
        system.assertEquals(addition,13);
    }

//positive substraction
    @isTest public static void substractionTest()
    {
        Integer substraction= Calculator.subtraction(12, 7);
        system.assertEquals(substraction,5); 
    }

//positive Multiplication
    @isTest public static void PositiveMultiplicationTest()
    {
        Integer multi= Calculator.multiply(12, 7);
        system.assertEquals(multi,84); 
    }


//positive division
    @isTest public static void DivisionTest()
    {
        Decimal div= Calculator.divide(12, 7);
        system.assertNotEquals(div,0);  
    }

//multiplication by zero exceptional case
    @isTest public static void multiplicationExceptionTest()
    { 
        List<Boolean> exceptions = new List<Boolean>();
        try{
        Integer multi= Calculator.multiply(12, 0);
           } 
     catch(Calculator.CalculatorException awe){
  {
          if(awe.getMessage().equalsIgnoreCase('It doesn\'t make sense to multiply by zero')){
            exceptions.add(true);
          }
  }   
     
    system.assertNotEquals(null, exceptions, 'expected at least one exception to have occured');}
    }


//Negative Division result exceptional case
        @isTest public static void NegativeResultExceptionTest()
    { 
        List<Boolean> exceptions = new List<Boolean>();
        try{
       Calculator.divide(-12, 3);
           } 
     catch(Calculator.CalculatorException awe){
  
          if(awe.getMessage().equalsIgnoreCase('Division returned a negative value.-4')){
            exceptions.add(true);
          }
  }
           system.assertNotEquals(null, exceptions, 'expected at least one exception to have occured');
     
    }


//Division by zero exceptional case
            @isTest public static void DivisionByZeroExceptionTest()
    { 
        List<Boolean> exceptions = new List<Boolean>();
        try{
       Calculator.divide(12, 0);
           } 
     catch(Calculator.CalculatorException awe){
  {
          if(awe.getMessage().equalsIgnoreCase('you still can\'t divide by zero')){
            exceptions.add(true);
          }
  }
           system.assertNotEquals(null, exceptions, 'expected at least one exception to have occured');}
    }

}