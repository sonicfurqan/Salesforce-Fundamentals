import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Recivecomponentevent extends LightningElement {
   
    reciveEvent(event){
        
         let evt = new ShowToastEvent({
            title: 'Event Recived',
            message:event.detail,
            variant: 'success',
        });
        //dispatchEvent is used to trigger event
        this.dispatchEvent(evt);
    }
}