public class security {
    
    @AuraEnabled
    public Integer counter { private get; set; }

    @AuraEnabled
    public static security getData()
    {
        security result = new security();
        result.counter = 2; 
        return result;
    }
}