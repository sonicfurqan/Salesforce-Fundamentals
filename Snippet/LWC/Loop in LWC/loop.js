import { LightningElement } from 'lwc';
import { track } from 'lwc';
export default class loop extends LightningElement {
    @track
    list = [
        {
            Key: '1',
            Title: '11',
        },
        {
            Key: '2',
            Title: '22',
        },
    ];


}