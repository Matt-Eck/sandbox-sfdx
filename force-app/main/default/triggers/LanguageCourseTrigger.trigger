trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
    for(Language_Course__c lc : Trigger.New){
        if(lc.Name == 'Test'){
            system.debug('From Trigger --- This is a test Language Course');
        }
    }
}