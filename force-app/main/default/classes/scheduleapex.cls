global class scheduleapex implements Schedulable {

    global void execute(SchedulableContext ctx){
        list<Account> method = [select Name from Account];
        
    }
}