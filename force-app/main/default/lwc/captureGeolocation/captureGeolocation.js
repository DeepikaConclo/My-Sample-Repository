import { LightningElement, track, api,wire  } from 'lwc';
import { getRecordNotifyChange } from 'lightning/uiRecordApi';
import updateGeoLoc from '@salesforce/apex/Geolocationapex.updateGeoLoc';
import { CloseActionScreenEvent } from 'lightning/actions';
export default class CurrentLocation extends LightningElement {
    @api recordId;
    //used for flow start
    @track
    _latitude = '';
    @track
    _longitude ='';
    @api
    get latitude() {
        return this._latitude;
    }
    set latitude(value) {
        this._latitude = value;
    }
    @api
    get longitude() {
        return this._longitude;
    }
    set longitude(value) {
        this._longitude = value;
    }    
    //used for flow end
    @api invoke(){
        console.log('@@@ ACTION CALLED @@@');
    }
    //flag restricts accessing geolocation api multiple times
    isRendered = false;
    //callback after the component renders
    renderedCallback() {
        console.log('>>> in rendered callback');      
        if(!this.isRendered){
            this.getCurrentBrowserLocation();
        }
        //sets true once the location is fetched
        this.isRendered = true;
    }
    getCurrentBrowserLocation() {
        var options = {
            enableHighAccuracy: true,
            timeout: 5000,
            maximumAge: 0
        };
        if(navigator.geolocation) {
            //accessing getCurrentPosition method
            navigator.geolocation.getCurrentPosition((position)=> {
                //success callback
                this._latitude =  position.coords.latitude;
                this._longitude = position.coords.longitude;
                //Calling apex method to update the record
                updateGeoLoc({recordId:this.recordId ,latitude:this._latitude,longitude:this._longitude }).then(result => {
                    getRecordNotifyChange([{recordId: this.recordId}]);
                    console.log('updateRecord');
                    console.log('success');    
                    const closeQA = new CustomEvent('close');
                    // Dispatches the event.
                    this.dispatchEvent(closeQA);  
                    console.log('dispatchEvent');          
                })
                .catch(error => {
                    console.log('Error:'+error);
                })
                this.closeQuickAction();
            }, (error) => {
                //error callback
            }, options);
        }
    }
    closeQuickAction() {
        this.dispatchEvent(new CloseActionScreenEvent());
    }
}