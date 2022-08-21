import { LightningElement } from 'lwc';

export default class FetchApiDemo extends LightningElement {

    texts=[];
cpt = 0;



async handleClick1(){
    
    let url="https://employee-directory-services.herokuapp.com/employees";
    

    try{
        let response =  await fetch(url,{method:"GET"})
        let data = await response.json();
        this.employees = data;
        console.log(this.employees);
      
        }
    catch(e){
            console.log(e);
    
        }
      
    }
    
    
var btn = document.getElementById("myBtn");
btn.addEventListener("click", changeText);
var text = document.getElementById("myText");
text.innerHTML = texts[0];
var counter = 1;

changeText(){
 var len = texts.length;
 if(counter < len){
   console.log(texts[counter]);
   text.innerHTML = texts[counter];
   counter ++;
 }
}
/* handleClick2(){
    for(var i = 0; i < this.employees.length; i++) {

        if(this.cpt<this.employees.length-1)
         this.cpt++;
        else
         this.cpt=0;
        

      
            
};*/
    
}




/* handleClick2(){
    let counter = 0;
    this.employees.for(let i=0; i<this.employees.length; i++)
    {
        this.empdetails += this.employees[i];
    }
} */


