public class mymap {
    
    public void display(){
        Map<integer,string> food=new Map<integer,string>();
        
        food.put(1, 'Idly');
        food.put(2, 'dosa');
        food.put(3, 'chappathi');
        food.put(4, 'ghee roast');
        food.put(5, 'biriyani');
        
        system.debug(food);
        system.debug(food.keyset());
        system.debug(food.values());
        
    }

}