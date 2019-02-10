import { LightningElement } from 'lwc';
import { track } from 'lwc';
export default class Parentcomponent extends LightningElement {
    @track valuesFetched

    buttonClickHandler(event){
    	//querySelector method searches for tag in dom tree if there are multiple with same name
    	//them array is returend
        let componetnRefrence=this.template.querySelector('c-componentwithmethod');
        //from refrence method is called and parameters are passed if any
       //NOTE:method must have @api decorator
        let valuesReturned=componetnRefrence.add(1,2);
        this.valuesFetched=valuesReturned;
    }
}