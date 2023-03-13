global with sharing class TestController {
  global void foo() {
    try {
      System.debug('hello world');
    } catch (Exception e) {
    }
  }

  @AuraEnabled
  public static string bar() {
    List<Contact> contactList = [
      SELECT Id
      FROM Contact
      WHERE EMail LIKE '%.com'
    ];
    if (contactList.size() > 0) {
      return 'ok';
    } else {
      return 'ng';
    }
  }
}
