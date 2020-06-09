import { LightningElement } from 'lwc';

import { api } from 'lwc';//@api library is needed to make method public
export default class Childmethod extends LightningElement {

    @api//@api decorator makes value/method public
    add(value1, value2) {
        return value1 + value2;
    }

}