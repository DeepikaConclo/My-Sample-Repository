import { LightningElement } from 'lwc';

export default class QuerySelector extends LightningElement {

    employees=[
        {
            id : 101,
            name : "Naresh",
            Salary : 30000
        },
        {
            id : 102,
            name : "Aravind",
            Salary : 40000
        },
        {
            id : 103,
            name : "John",
            Salary : 50000
        }
    ]
    handleClick(event){
        const empno = event.target.dataset.empno;
        const empname = event.target.dataset.empname;

        alert(`code:${empno} and name:${empname}`);
    }
    handleClear(event){

        const empno = event.target.dataset.empno;

        this.template.querySelector(`lightning-input[data-empno='${empno}']`).value="";
        //this.template.querySelector("lightning-input[data-empno='empno']").value="";

    }
    handleClearFirst(){

       // this.template.querySelector(".salary").value=""; -- declared through class
        this.template.querySelector("lightning-input[data-empno='101']").value="";

    }
    handleClearAll(){

        Array.from(this.template.querySelectorAll("lightning-input")).forEach(e=>e.value="") //class,tag,data

       /* a=Array.from(this.template.querySelectorAll("lightning-input"));
        a.forEach(e=>{
            e.value="";
        }) */

    }

}