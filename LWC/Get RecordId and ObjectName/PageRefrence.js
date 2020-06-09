import { LightningElement } from 'lwc';
import { api } from 'lwc'; // api library gets current page data if its in record page
export default class PageRefrence extends LightningElement {
    @api recordId;//defined by api library contains record id
    @api objectApiName;//defined by api library contints object name
}