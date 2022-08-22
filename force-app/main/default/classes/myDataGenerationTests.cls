@isTest
private class myDataGenerationTests {
  @testSetup
  static void loadTestmyDataFromStaticResource(){
    List<sObject> accounts = Test.loadData(Account.SObjectType, 'Mock_Data');
  }
  @isTest
  static void testLoadmyAccountsFromStaticResource() {
    List<Account> accts = [SELECT ID FROM Account];
    system.assert(accts.size() == 15, 'expected 15 accounts');
  }
}