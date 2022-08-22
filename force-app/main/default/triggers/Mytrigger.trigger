trigger Mytrigger on Account (before insert)
{
    
    for(Account a:trigger.new)
    {
        if(string.isBlank(a.billingcity))
        {
            a.BillingCity='CA';
        }
    }
    
    
	
    /*before insert,before update
     * system.debug(trigger.new);
    system.debug('Account has been inserted successfully');
    
    if(trigger.isbefore && trigger.isinsert)
    
    {
            for(Account x:trigger.new){
                if(String.isBlank(x.industry)){
                    x.industry='Agriculture';
                
                }
            
        }
    system.debug('Billing city has been updated');
    }*/
    system.debug(trigger.old);
    system.debug('record has been deleted ');
}