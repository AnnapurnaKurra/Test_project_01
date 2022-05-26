public with sharing class AccountController {
public static List<Account> getAllActiveAccounts() {
    if (!Schema.sObjectType.Contact.fields.Status__c.isAccessible()) 
    {    
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
    }
}
}
