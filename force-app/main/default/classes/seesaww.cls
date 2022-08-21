public class seesaww 
{
    public  static void main(String str)
    {
        
        Map<String,Integer> seemap = New Map<String,Integer>();
        
        for(string st :str.split(' '))
        {
            if(seemap.containskey(st))
            {
                Integer count = seemap.get(st);
                count ++;
                seemap.put(st,count);
            }
            else
            {
                seemap.put(st,1);
            }
        }
        for(String str2 : seemap.keyset())
        {
            System.debug(str2+ '---->' + seemap.get(str2));
        }
    }
}