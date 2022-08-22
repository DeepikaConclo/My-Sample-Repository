public class collections {

    public static void display(Integer n)
    {
       list<Account> acc=new list<Account>();    
        for (integer i=1;i<=n;i++)
        {
          acc.add(new Account(Name='test'+i));  
        }
      Insert acc;
        for(Account a:acc)
        {
            System.debug('The records is  :'+a);
        }
	
    }
    }