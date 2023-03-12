import { LightningElement,api } from 'lwc';

export default class VisitScanner extends LightningElement {
    @api recordId;// marking variable as api and adding reference in meta file will make the variable available in flow to pass value
    @api accountRecord; // marking it api and in meta referring it with output only make this variable available in flow where it sends data back to flow
 }