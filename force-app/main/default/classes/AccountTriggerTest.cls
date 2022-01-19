@isTest
public with sharing class AccountTriggerTest {
    @isTest
    private void testAccountCreation() {
        Account a = new Account(Name = 'Test');

        Test.startTest();
        insert a;
        Test.stopTest();

        Account a1 = [SELECT Id, Name from Account WHERE Id = :a.Id];
        System.assertEquals('Test1', a1.Name);
    }
}
