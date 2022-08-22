import { LightningElement, api } from 'lwc';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';


export default class FileUpload extends LightningElement {

    name = 'abc';

    fieldList ={
        nameField: NAME_FIELD,
        industryField: INDUSTRY_FIELD,
        phoneField: PHONE_FIELD,
        annualRevenueField: ANNUAL_REVENUE_FIELD
    }
    successHandler(event){
        console.log('Success Handler Called');

    }
    submitHandler(event){

        event.target.name = 'hello';
        event.detail.fieldList.name = 'abcd';

        event.preventDefault(); //stop the default behaviour of submit handler





        console.log('Submit Handler Called');
        // custom validation
        // 1. get the input value 2. Check whether its valud 3. submit the data to server
        // condition (eg: annual revenue should not be less than 100)

        const inputRevenue = this.template.querySelector('.revenue');
        console.log(inputRevenue.value);

        if(inputRevenue.value<100)
        {
            this.dispatch = new (ShowToastEvent({
                title: 'Annual revenue should not be less than 100',
                message: event.detail.message,
                variant:'error',
            }));
        }
        else{
            const fields = event.detail.fields;
            console.log(JSON.stringify(fields));
            this.template.querySelector("lightning-record-edit-form").submit(fields);
        }

    }
    errorHandler(event){
        console.log('Error Handler Called');

        this.dispatch = new (ShowToastEvent({
            title: 'Error Message',
            message: event.detail.message,
            variant:'error'
        }));

    }

}
     /* @api recordId;
    get acceptedFormats() {
        return ['.pdf', '.png','.jpg','.jpeg'];
    }
    handleUploadFinished(event) {
        // Get the list of uploaded files
        const uploadedFiles = event.detail.files;
        let uploadedFileNames = '';
        for(let i = 0; i < uploadedFiles.length; i++) {
            uploadedFileNames += uploadedFiles[i].name + ', ';
        }
        this.dispatchEvent(
            new ShowToastEvent({
                title: 'Success',
                message: uploadedFiles.length + ' Files uploaded Successfully: ' + uploadedFileNames,
                variant: 'success',
            }),
        );
    } */
