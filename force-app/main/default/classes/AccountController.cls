public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> findAll() {
        return [
            Select Id, Name, Location__Latitude__s, Location__Longitude__s
            From Account
            Where Location__Latitude__s != Null And Location__Longitude__s != Null
            Limit 50
        ];
    }
}
