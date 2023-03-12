import { LightningElement } from 'lwc';
import { track } from 'lwc';
export default class ifelse extends LightningElement {


    @track
    toggle = true;

    buttonClickHandler(event) {
        this.toggle = !this.toggle;
    }

}