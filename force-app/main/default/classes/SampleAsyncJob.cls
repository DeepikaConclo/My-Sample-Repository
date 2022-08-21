public class SampleAsyncJob implements Queueable {
    
    Public void execute(QueueableContext ctx){
        
        UpdateAWSFinalizer f = new UpdateAWSFinalizer();
        System.attachFinalizer(f);
        
        //Business logic
        Contact c = new Contact(Phone = '9728199345');
        insert c;
        
               
    }

}