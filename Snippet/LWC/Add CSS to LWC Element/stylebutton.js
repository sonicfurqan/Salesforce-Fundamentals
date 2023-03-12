import { LightningElement, api } from 'lwc';
export default class BankAccountBookings extends LightningElement {

    run = true;
    renderedCallback() {
        if (this.run) this.run = false;
        else return;

        //all lwc base components behave as shadow dom. to apply css style tag is added to base component
        let elements = this.template.querySelectorAll('[data-id="mybutton"]');
        const style = document.createElement('style');
        style.innerText = `
        .button-full-width button{
          width:100%;
        }`;
        for (let div of elements) {
            div.appendChild(style);
            div.classList.add('button-full-width');
        }
    }
}