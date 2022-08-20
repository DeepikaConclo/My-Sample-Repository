import ReceivesAdminInfoEmails from '@salesforce/schema/User.ReceivesAdminInfoEmails';
import { LightningElement, track } from 'lwc';

export default class DataBinding extends LightningElement {
    amount;

   @track employees = [
        {
            name: 'Jacob',
            salaryAmount : this.amount ,
            position: 'Admin',
        },
        {
            name: 'Harsha',
            salaryAmount : this.amount,
            position: 'Lead',
        },
        {
            name: 'Vinoth',
            salaryAmount : this.amount,
            position: 'Developer',
        }
    ]

    
    
    handleChange(event){
        this.amount = event.target.value;
        


    }
}