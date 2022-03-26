public with sharing class ContactTriggerHandler {
    
    public static void afterInsertContact(List<Contact> newContacts) {
        Integer recordCount = newContacts.size();
        // Call a utility method from another class
        String emailAddr = findEmail();
        EmailManager.sendMail(emailAddr, 'RAD Sample code', 
                    recordCount + ' contact(s) were inserted.');

    }
    public static String findEmail() {
        // code email here
        String email = 'putYourEmail@here.com';

        return email;
    }
}