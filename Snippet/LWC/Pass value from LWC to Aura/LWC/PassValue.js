import { LightningElement} from 'lwc';

export default class PassValue extends LightningElement {
	connectedCallback(){
		const valueSelectEvent = new CustomEvent("valueselect", {
            detail: ['All Values']
        });
        this.dispatchEvent(valueSelectEvent);
	}
}