public class mysoql {

    public static void main(){
        /*
       list<Account> acc=[SELECT Id, Name FROM Account where name Like 'G%']; 
//LIST<Account> acc=[select id from Account] select multiple data we use list to execute

        system.debug('The record size is = '+acc.size());
        //for(Accountt c:[SELECT Id, Name FROM Account where name Like 'G%']) we can use this also for loop
        for(Account c:acc)
        {
            
            system.debug(c.Name);
            system.debug(c.Type);
        }*/
        
        // aggregate function
        List<AggregateResult> acc=[Select Industry,count(ID) countofIndustry from Account group by Industry];
        for(AggregateResult a:acc)
        {
            string str=(string)a.get('Industry');
            integer count=(integer)a.get('countofIndustry');
            system.debug(str);
            system.debug(count);
        }
        
    }
}