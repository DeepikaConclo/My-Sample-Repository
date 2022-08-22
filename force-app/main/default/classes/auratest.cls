public class auratest {
    @AuraEnabled
    public static Account getrecords(){
        return [select Name, id from Account];
       
    }

}