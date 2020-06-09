import { LightningElement } from 'lwc';

//refrencing methods from class
import seachAccount from '@salesforce/apex/apexClassThatIsToBeImported.searchAccounts'
import allContacts from '@salesforce/apex/apexClassThatIsToBeImported.getAllContact'

import { wire } from 'lwc';
import { track } from 'lwc';

export default class Callapex extends LightningElement {
    //track variables reactive when value chagned it is refelected on ui
    @track contact
    @track accounts
    @track searchKey

    //wire methods are loaded on init data is reflected on data change or if cache is to be refreshed
    @wire(allContacts)
    wiredallContacts({ error, data }) {
        if (error) {
            console.log(error)
            // TODO: Error handling
        } else if (data) {
            console.log(data)
            // TODO: Data handling
            this.contact = data;

        }
    }



    //non cachable methods are to be called by invoking some events
    handleKeyChange() {
        seachAccount({
            searchKey: this.searchKey
        }).then(result => {
            this.accounts = result;
        }).catch(error => {


        });
    }


}