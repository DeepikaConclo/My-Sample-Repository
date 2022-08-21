public class AccountHandler {

    public static void insertAccount(Integer numofnewaccounts){
        
        Integer n = 1;
        List<Account> addAccounts = new List<Account>();
        while (n <= numofnewaccounts){
           
            Account obj= new Account();
            obj.Name= 'Acme Inc' + n;
            obj.AccountNumber= 'A000' + n;
            obj.Email_id__c='deepi@sps.com';
            obj.Phone='9893843843';
            
            addAccounts.add(obj);
              
            n = n+1;
        }
		System.debug('Size of Account List: ' + addAccounts.size() );
        
        System.debug('Elements in Account List: ' + addAccounts);
        
        //insert all of the accounts in the list
        insert addAccounts;        
    }
    
}