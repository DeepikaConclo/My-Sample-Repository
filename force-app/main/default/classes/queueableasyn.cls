public class queueableasyn implements Queueable{
	
    public void execute(QueueableContext hi)
    {
        Delete [Select Name from Account where Name='hello'];
        system.debug('queueable apex output');
        system.debug('test'+hi.getJobId());
        system.enqueueJob(new Queuetest());
    }
    
    }