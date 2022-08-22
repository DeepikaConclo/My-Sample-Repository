@isTest
private class ExternalSearch_Tests {
@isTest
  static void test_method_one() {
    HttpMockFactory mock = new HttpMockFactory(200, 'OK', 'I found it!', new Map<String,String>());
    Test.setMock(HttpCalloutMock.class, mock);
    String result;
    Test.startTest();
      result = ExternalSearch.googleIt('epic search');
    Test.stopTest();
    system.assertEquals('I found it!', result);
  }
 @isTest static void test_method_two() {
    HttpMockFactory mock = new HttpMockFactory(500, 'Internal Server Error', 'server issue!', new Map<String,String>());
    Test.setMock(HttpCalloutMock.class, mock);
    String result;
    Test.startTest();
      result = ExternalSearch.googleIt('server issue');
    Test.stopTest();
    system.assertEquals('server issue!', result); 
  }

  @isTest static void test_method_three() {
    HttpMockFactory mock = new HttpMockFactory(404, 'Server not found', 'server not found!', new Map<String,String>());
    Test.setMock(HttpCalloutMock.class, mock);
    String result;
    Test.startTest();
         try {
              result = ExternalSearch.googleIt('server not found');
         }
         catch (ExternalSearch.ExternalSearchException exc){
             system.assert(exc.getMessage().equalsIgnoreCase('Did not recieve 200/500 status code'));
         }
     
    Test.stopTest();    
  }
}