import { LightningElement, track, api } from 'lwc';
export default class CurrentLocation extends LightningElement {
    @api invoke(){
        console.log('@@@ ACTION CALLED @@@');
    }
    //stores current latitude and longitude for map component
    mapMarkers=[];
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
                console.log('>>>positions' + position);
                let currentLocation = {
                    location : {
                        Latitude: position.coords.latitude,
                        Longitude: position.coords.longitude
                    },
                    title : 'My location'
                };
                this.mapMarkers = [currentLocation];
            }, (error) => {
                //error callback
            }, options);
        }
    }
}