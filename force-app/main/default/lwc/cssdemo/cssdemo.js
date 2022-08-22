import { LightningElement } from 'lwc';

export default class Cssdemo extends LightningElement {

customStyle;
 textColorClass;


 
    handleClick(event){
        this.textColorClass= 'myStyle1';
    }
    handleChange(event){
        this.textColorClass='myStyle2';
    }
    
}