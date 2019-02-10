import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Callapex extends LightningElement {

    //connectedCallback is called after LWC is loaded and rendered this is equivalent to init method
    connectedCallback() {
        //ShowToastEvent library provieds toast notifiaction functions
        const evt = new ShowToastEvent({
            title: 'Component loaded',
            variant: 'success',
        });
        //dispatchEvent is used to trigger event
        this.dispatchEvent(evt);
    }
    

   
}