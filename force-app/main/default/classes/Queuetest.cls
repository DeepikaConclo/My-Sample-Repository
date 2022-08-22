public class Queuetest implements Queueable {

    public void execute(QueueableContext ctx){
        system.debug('class 2 execute');
    }
}