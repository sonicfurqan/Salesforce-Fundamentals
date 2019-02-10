import { LightningElement } from 'lwc';
//platformShowToastEvent library
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Callapex extends LightningElement {

    //on click of button  buttonClickHandler is called
    buttonClickHandler() {
        //Creating notification event
        let evt = new ShowToastEvent({
            title: 'Event Fired',
            variant: 'success',
        });
        //dispatchEvent is used to trigger event
        this.dispatchEvent(evt);
    }
    

   
}