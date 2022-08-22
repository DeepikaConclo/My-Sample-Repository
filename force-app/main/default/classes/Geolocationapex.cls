public with sharing class Geolocationapex 
{
   @AuraEnabled(cacheable=false)
   public static void updateGeoLoc(Id recordId, decimal latitude,decimal longitude)
    {
        try {
    Account  ACC = [SELECT  Current_Location__Latitude__s,Current_Location__Longitude__s
                              FROM Account
                              WHERE id =:recordId];
   
    ACC.Current_Location__Latitude__s = latitude;
    ACC.Current_Location__Longitude__s = longitude;
   
    update ACC;
} catch(Exception e) {
    System.debug('An unexpected error has occurred: ' + e.getMessage());
}
    }
}