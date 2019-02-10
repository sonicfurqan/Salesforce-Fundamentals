import { LightningElement } from 'lwc';
import { track } from 'lwc'; //Track is reposnible for rerendering changes made to assosciated variables on ui and variables are private
import { api } from 'lwc';  //api is reposnible for rerendering changes made to assosciated variables on ui and variables are public
export default class TrackHelp extends LightningElement {

    @track element1 = '1';
    changeHandlerForElementOne(event) {
        this.element1 = event.target.value;
    }

    @track element2 = '2';
    changeHandlerForElementTwo(event) {
        this.element2 = event.target.value;
    }
    @track element3 = '3';
    changeHandlerForElementThree(event) {
        this.element3 = event.target.value;
    }

    @track element4 = '4';
    changeHandlerForElementFour(event) {
        this.element4 = event.target.value;
    }

    @api allValues
    get allValues() {//getter of variable is over ridden here
        return this.element1 +' '+ this.element2+' '+ this.element3+' '+ this.element4;
    }


    @track element10;
    @track element11;
    element12; //this variables is not tracked it does not update on ui
    changeHandlerForElements(event){
        const fieldName=event.target.name;
        const fieldValue=event.target.value;
        if(fieldName==='ele10'){
            this.element10=fieldValue;
        }
        else if(fieldName==='ele11'){
            this.element11=fieldValue;
        }
        else if(fieldName==='ele12'){
            this.element12=fieldValue;
        }

    }


}