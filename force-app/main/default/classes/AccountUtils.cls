public class AccountUtils {

    public static List<Account> accountsByState(string st){
        List<Account> lstacc = [SELECT ID, Name from Account where billingstate= :st];
        return lstacc;
            }
}