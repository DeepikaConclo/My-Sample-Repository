public class Mycons {

    public integer z;
    
    public Mycons(integer j)
    {
        z=j+100;
        
        system.debug('output 1 is'+z);
    }
    //empty constructor
    public Mycons()
    {
        z=100;
        system.debug(''+z);
    }
    public void outputx()
    {
        system.debug(100+z);
    }
    
}