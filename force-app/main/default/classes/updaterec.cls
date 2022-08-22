public class updaterec {
    
    public static void rec(){
       list<Account> accounttoupdate=[SELECT Id, BillingState FROM Account WHERE BillingState ='CA'];
       
       // accounttoupdate.add(BillingState = 'FL');
      for(Account a : accounttoupdate)
      {
          a.BillingState ='FL';
           system.debug('loop' +a);
          
      }
          
 		update accounttoupdate;
        system.debug('list' +accounttoupdate);
          
}
}