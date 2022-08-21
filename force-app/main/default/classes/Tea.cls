public class Tea{
   public static String orderTea(){
    Map <String, String> teaTypes = new Map <String, String>();
    teaTypes.put('Black', 'Earthy');
    teaTypes.put('White', 'Sweet');
    teaTypes.put('Herbal', 'Sweet');
    String flavorProfile = teaTypes.get('Black');
    System.debug('The flavorProfile of Black is: ' + flavorProfile);
    return flavorProfile;
}
}