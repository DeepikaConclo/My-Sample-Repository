import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {

    firNum;
    secNum;
   answer;

    handlechange1(event){
        this.firNum = event.target.value;
    }
    handlechange2(event){
        this.secNum = event.target.value;
    }
    handleclick(){
        
        this.answer = parseInt(this.firNum) + parseInt(this.secNum);
        
    }
    dosub(){
        this.answer = parseInt(this.firNum) - parseInt(this.secNum);
    }

    domul(){
        this.answer = parseInt(this.firNum) * parseInt(this.secNum);
            }
    
    dodiv(){
        this.answer = parseInt(this.firNum) / parseInt(this.secNum);

    }
    handleReset(event){
        const inputFields = this.template.querySelectorAll('lightning-input');
        Array.from(inputFields).forEach(field => {
            value.reset();
        });
    }
        
        }
        
        

     
   
       