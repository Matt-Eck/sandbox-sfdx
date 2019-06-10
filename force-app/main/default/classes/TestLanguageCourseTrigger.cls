@isTest
public with sharing class TestLanguageCourseTrigger {
    public static testMethod void testTrigger() {
        Language_Course_Instructor__c lci = new Language_Course_Instructor__c(Name = 'Instructor 1');
        insert lci;

        Test.startTest();
        Language_Course__c lc = new Language_Course__c( Name = 'Test',
                                                        Course_Instructor__c = lci.Id);

        insert lc;
        Test.StopTest();
    }
}
