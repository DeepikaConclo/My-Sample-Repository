import { LightningElement, api } from 'lwc';

export default class ChildComponent extends LightningElement {

    progress=0;

   @api handleStart(){

    setInterval(()=>{
        this.progress=this.progress+10;
        if(this.progress>=100){

            this.progress=0;
            const e = new CustomEvent('progressfinished', {detail: this.progress});
            this.dispatchEvent(e);
            
                }
    },300)
}

    
    /* handleClick()
    {

        const e = new CustomEvent("display", {detail:"Test Data"});
        
        this.dispatchEvent(e);
    } */

    @api handleReset(event)
    {
        event.target.value= 0;
        this.progress=event.target.value;
        clearInterval(this.progress);
       
    }
    }

    

   



/* @api message; //make the property as public
    @api slidervalue;
    @api maxslidervalue;

    @api resetslidervalue(){
        this.slidervalue=0;
    }*/