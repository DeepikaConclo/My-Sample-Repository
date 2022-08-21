public class listcls 
{
    
    public void main()
    {
        LIST<string> country=new LIST<string>();
        
        //LIST<string> country=new list<string>(india,usa,canda,pakistan,china);
        country.add('india');
        country.add('usa');
        country.add('canada');
        country.add('pakistan');
        country.add('china');
        
        country.sort();
        
        List<String> NewList = new List<String>();
        for(Integer i = country.size()-1; i>=0;i--)
        {
            NewList.add(country.get(i));
        }
        
        System.debug('Desc Order'+ NewList);
        
        
    }
}