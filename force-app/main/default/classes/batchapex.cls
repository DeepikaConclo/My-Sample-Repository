global class batchapex implements Database.Batchable<sObject>{
    
    integer count;
    global Database.QueryLocator start(Database.BatchableContext bch){
        return Database.getQueryLocator('select id,Name from Account');
        
       //global List<Account> start(Database.BatchableContext bch){
       // return Database.getQueryLocator('select id from Account where Name=Ibaco');
    }
        global void execute(Database.BatchableContext bch,list<Account> obj){
            
            for(integer i=1;i>=5;i++){
                count=i+1;
                
            }
                
        }
            global void finish(Database.BatchableContext bch){
                system.debug('final');
                system.debug('count final value is __'+count);
            }
        }