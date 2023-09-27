public with sharing class ContactController {
    // public ContactController() {

    // }
    @AuraEnabled (cacheable=true)
    public static List <Contact> getContacts (){
        // try {
            
        // } catch (Exception e) {
        //     throw new AuraHandledException(e.getMessage());
        // }
        return [
            SELECT FirstName, LastName, Email
            FROM Contact
            WITH SECURITY_ENFORCED
            ORDER BY LastName
        ];
    }
}