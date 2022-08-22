import { LightningElement,api} from 'lwc';

export default class ParentComponent extends LightningElement {
  
    handleClick(){
        this.template.querySelector("c-child-component").handleStart();
        this.template.querySelector("lightning-button").disabled=true;

    }

    handleFinish(event){
        
        
        this.template.querySelector("lightning-button").disabled=false;
        event.stopPropagation();
        //this.template.querySelector("c-child-component").handleReset();
        
    }
    

}

  /* employees = [
        {
        id: 101,
        name:'Joseph'
         },
         {
            id: 102,
            name:'Krish'
             },
             {
                id: 103,
                name:'Ram'
                 }
    ] 
    slidervalue;
    @api maxslidervalue;

    handleChange(event){
        this.slidervalue=event.target.value;
    }

    handleClick(){
        this.template.querySelector("c-child-component").resetslidervalue();    
    }*/