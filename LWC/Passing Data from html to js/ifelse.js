import { LightningElement } from 'lwc';
import { track } from 'lwc';
export default class Loopsandconditions extends LightningElement {


    @track
    toggle = true;

    buttonClickHandler(event) {
        this.toggle = !this.toggle;
   }

}