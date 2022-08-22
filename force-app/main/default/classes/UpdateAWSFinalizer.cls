public class UpdateAWSFinalizer implements Finalizer{

    public void execute(FinalizerContext ctx){
        
        //getRequestid
        //getAsyncApexJobId
        //getResult
        //getException
        
        string reqId = ctx.getRequestId();
        string jobId = ctx.getAsyncApexJobId();
        
        if (ctx.getResult() == ParentJobResult.SUCCESS){
            
           // system.debug('Parent Queuable (job id:' + jobId +' ): completed successfully!');
        }
        else{
            //Queuable failed
            //Provide a counter
        }
        system.debug('Parent Queuable (job id:' + jobId +' ): completed successfully!');
        }
}