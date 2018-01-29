public with sharing class AccountController {
 @AuraEnabled
 public static List<Account> findAll() {
 return [SELECT Id, Name, Location__c
   FROM Account
   WHERE Location__Latitude__s != NULL AND Location__Longitude__s !=
          NULL
   LIMIT 50];
  }
}
