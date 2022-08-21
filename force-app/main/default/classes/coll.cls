public class coll {
 Public Static void NewAcc(Integer NoOfAccounts)
    {
           List<Account> ListofAcc = new List<Account>();
           For (Integer A=1; A<=NoOfAccounts; A++ )
           {
               ListofAcc.add(new Account(Name = 'KFC' + A));  
               
           }
                      
           for (Account s:ListofAcc)
           {         
               System.debug('The New Account Records are ' +s);
           }
      
           insert ListofAcc;
              
    }
}