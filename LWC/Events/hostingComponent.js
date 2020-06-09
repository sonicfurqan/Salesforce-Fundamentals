import { LightningElement } from 'lwc';

export default class Hostcomponentevent extends LightningElement {

    buttonClickHandler(event) {
        //event.preventDefault method is called at the start to stop propagation of events 
        event.preventDefault();
        //creating custom event
        /*new CustomEvent(eventName,valueToBePasses) 
            acceptas 2 paramets
            eventName: any name can be given but should not start with "on" and number
            valueToBePasses: is object where detail is key that is must and any data to be passed 
            can be assigned to detail {detail :}

        */
        const myCustomEvent = new CustomEvent('shownotification', {
            detail: 'I am here'
        });
        //dispatchEvent is used to fire custom event
        this.dispatchEvent(myCustomEvent);
    }
}