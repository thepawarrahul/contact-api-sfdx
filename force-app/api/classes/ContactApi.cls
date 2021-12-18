/**
 * @description API related to Contact SObject
 */
@RestResource(UrlMapping='/contact/*')
global without sharing class ContactApi {
    /**
     * @description Creates Contact Record.
     * @param name Name of the contact record.
     * @param email Email of the contact record.
     * @param comment Comment of related to the account.
     * @return Account id of created Contact.
     */
    @HttpPost
    global static String doPost(String name,
        String email,
        String comment) {
        Contact contactRecord = new Contact();
        contactRecord.LastName = name;
        contactRecord.Email = email;
        contactRecord.Description = comment;

        insert contactRecord;

        return contactRecord.Id;
    }
}