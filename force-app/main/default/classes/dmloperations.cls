public class dmloperations {

    public static void display(){
        /*//display size
        list<account> lstacc = [select Name from Account where Name='Ac02'];
        system.debug(lstacc.size());
        if (lstacc.size()>0){
            system.debug('the account name size'+lstacc.size());
          //update a record
           list<account> lstacc = [select Name from Account where Name='Ac02' ];
        for(Account a:lstacc){  
        a.Industry='Banking';
            }
            update lstacc;
                }
        list<account> lstacc = new list<Account>();
        Account a=new Account();
        a.Name='Mugen Rao';
        lstacc.add(a);
        Account b=[select Name from Account where Name='Ac02'];
        b.Industry='Agriculture';
        lstacc.add(b);
        upsert lstacc;
        list<Account> b=[select Name from Account where Name='Ac01'];
        delete b;
        list<Account> b=[select Name from Account where Name='Ac01' ALL ROWS];
        undelete b;
        Account acc1=[select Name from account where Name='test10'];
        Account acc2=[select Name from account where Name='test9'];
        Account acc3=[select Name from account where Name='test8'];
        merge acc1 new list<Account>{acc2;acc3};

        //DATABASE AND SAVERESULT
        list<account> lstacc = new list<Account>();
        Account a=new Account(Name='Test1');
        lstacc.add(a);
        Account b=new Account();
        lstacc.add(b);
        Database.insert(lstacc,false);
        List<Database.SaveResult> sr= Database.insert(lstacc,false);
        for(Database.SaveResult r : sr){
            system.debug(r.issuccess());*/
        Account acc=new Account(Name='Tharshan');
        insert acc;
      	System.savepoint sp=Database.setSavepoint();
        try
        {
           Account acc1=new Account();
        insert acc1; 
        }
        catch(Exception e){
		
		Database.rollback(sp);            
        }
        }
        
        
    }