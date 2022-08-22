@isTest
private class AccountWrapper_Tests {
  @testSetup
  static void loadTestData(){
    List<Account> accounts = (List<Account>) Test.loadData(Account.SObjectType, 'accountData');
    List<Opportunity> opps = new List<Opportunity>();
    for(Account a : accounts){
      opps.addAll(TestFactory.generateOppsForAccount(a.id, 1000.00, 5));
    }
    insert opps;
  }
  @isTest static void testPositiveIsHighPriority() {
        List<AccountWrapper> accounts = new List<AccountWrapper>();
        for(Account a : [SELECT ID, Name FROM ACCOUNT]){
            accounts.add(new AccountWrapper(a));
        }
        // sanity check asserting that we have opportunities before executing our tested method.
       // back grab the ammount field so we can update
        List<Opportunity> sanityCheckListOfOpps = [SELECT ID, Amount FROM Opportunity];
        System.assert(sanityCheckListOfOpps.size() > 0, 'You need an opportunity to continue');
	for (Opportunity opp : sanityCheckListOfOpps ) {
		opp.Amount = 100000;
	}
//update the list of opportunities with the new value
	update sanityCheckListOfOpps ;
        Test.startTest();
        for(AccountWrapper a : accounts){
            System.assertEquals(a.isHighPriority(), false, 'Expected isHighPriority to return false');
        }
        Test.stopTest();
    }
}