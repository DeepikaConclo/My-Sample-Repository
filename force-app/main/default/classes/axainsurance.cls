public class axainsurance 
{
    
    public static void main(string FirstN,string LastN,String tit,String mcity,String ph)
    {
      list<Contact> axa = new list<Contact>();
        contact addd= new contact();
       		  addd.FirstName = FirstN;
              addd.LastName = LastN;
              addd.Title = tit;
              addd.MailingCity = mcity;
       		  addd.Phone=ph;
               axa.add(addd); 
                    insert axa;
    }
}