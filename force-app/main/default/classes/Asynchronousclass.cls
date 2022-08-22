public class Asynchronousclass {
    
    
    public static void synchronous(){
        List<Account> Method = new List<Account>();
        Account a=new Account();
        a.Name='AccountName';
		Method.add(a); 
        insert Method;
        System.debug('Method 1 has been inserted');
        synchronous2();
        
       
         System.debug('Synchronous returned from method 1');
    }
    Public static void synchronous2(){
        synchronous3();
        System.debug('Method 2 has been inserted');
        
    }    
    Public static void synchronous3(){
        list<Opportunity> x= new list<Opportunity>();
        Opportunity newobj=new Opportunity();
        newObj.Name= 'AccountName';
        newObj.StageName= 'value Proposition';
        newObj.CloseDate = System.today() + 5;
        x.add(newobj);
        insert x;
        system.debug('Method 3 has been inserted');
    }
    
    //Asynchronous future method
    @future
    Public static void futuremethod(){
        List<Account> Method = new List<Account>();
        Account a=new Account();
        a.Name='hello';
		Method.add(a); 
        insert Method;
       system.debug('future method');
        Asynchronous2();
        system.debug('future method finished');
    }
    @future
 Public static void Asynchronous2(){
        Asynchronous3();
        System.debug('Method 2 has been inserted');
        
    }    
    Public static void Asynchronous3(){
        list<Opportunity> x= new list<Opportunity>();
        Opportunity newobj=new Opportunity();
        newObj.Name= 'AccountName';
        newObj.StageName= 'value Proposition';
        newObj.CloseDate = System.today() + 5;
        x.add(newobj);
        insert x;
        system.debug('Method 3 has been inserted');
    }
    
}