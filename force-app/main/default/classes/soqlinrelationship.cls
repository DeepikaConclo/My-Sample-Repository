public class soqlinrelationship {

     public static void display(){
         //SOQL child to parent in sObject
        /* List<Contact> acc=[SELECT LastName,Account.Name from Contact];
        for(Contact c:acc){
        system.debug(c.LastName);
        system.debug(c.Account.Name);
    }
         //SOQL parent to child in sObject         
         list<Daughter__c> daughter=[select Name,City__c, Parent__r.name, Parent__r.ParentNumber__c from Daughter__c];
         for(Daughter__c hi:daughter)
         {
             system.debug(hi.Parent__r.ParentNumber__c);
             system.debug(hi.Parent__r.Name);
         }
	//SOQL child to parent in Custom Object
       List<Account> acc=[SELECT id,Name,(Select id,LastName, Email,Title From Contacts) from Account];
        for(Account parent : acc)
{
    system.debug(parent.Name);
	for(Contact child : parent.Contacts)
	{
		system.debug(child.Email);
       
	}
     
}
		//SOQL parent to child in Custom Object
         list<Parent__c> hello=[select id, ParentNumber__c,(select id, Phone__c from Daughters__r) from Parent__c];
         for(Parent__c x:hello)
         {
             for(Daughter__c y:x.Daughters__r){
                 system.debug(y.Phone__c);
             }
             system.debug(x.ParentNumber__c);
         }
         //sosl query 
         list<list<sObject>> multiAccount=[FIND 'Arun Kumar OR Aravind'  IN NAME FIELDS returning Lead(Name),Contact(Name)];
         list<Lead> a= multiAccount[0];
         list<Contact> b=multiAccount[1];
         for(Lead x:a){
             system.debug(x.Name);
         }
         for(Contact y:b){
             system.debug(y.Name);
         }
//parent to child insobject
         list<Account> apex=[SELECT ID, Name,(SELECT ID, LastName from Contacts) from Account];
         for(Account x:apex){
             system.debug('The account Name is'+x.Name);
             for(Contact y:x.Contacts){
                 system.debug('The Contact Last Name is'+y.LastName);
             }
         }
//count oppourtunity record
         list<AggregateResult> acc = [SELECT StageName, count(id) From Opportunity group by StageName];
         for(AggregateResult x: acc)
         {
             system.debug(x.get('StageName'));
         }*/
         
         Account NewAccount=new Account(Name ='Ac01');
         insert NewAccount;
         Opportunity acc=new Opportunity(Name ='Hai',Amount=345,StageName='Needs Analysis'
,CloseDate=system.today().addMonths(1));
         insert acc;
         Opportunity accc=new Opportunity(Name ='Hello',Amount=567,StageName='Needs Analysis'
,CloseDate=system.today().addMonths(1));
         insert accc;
         acc.AccountId=NewAccount.id;
		 accc.AccountId=NewAccount.id;         
        
     }
      
}