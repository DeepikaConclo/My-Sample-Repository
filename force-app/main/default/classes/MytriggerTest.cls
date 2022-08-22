@isTest
public class MytriggerTest {

    @isTest static void Checkmytrigger(){
        
        List<Account> newlist = new List<Account>(); // test my trigger is working or not.
        for(integer x=1;x<=5;x++){
            Account myacc=new Account();
            myacc.Name='Hellomytrigger'+x;
            newlist.add(myacc);
        }
        insert newlist;
        //start test and stop test functions are used to reset dml statement.
        Test.startTest();
        
        Test.stopTest();
        
        list<Account> funtest=[select Name from Account where Billingcity='CA'];//check my logic is working good.
        system.assertEquals(5, funtest.size());
    }
}