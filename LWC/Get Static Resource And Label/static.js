
import { LightningElement } from 'lwc';
//@salesforce/label is standard uri for refering labels
//@salesforce/label/namespace.labelname
//if no name space use c
import labelName from '@salesforce/label/c.myCustomLabel';
//@salesforce/resourceUrl is standrad uri to refre static resource
//@salesforce/resourceUrl/staticresousceName
import iconUR from '@salesforce/resourceUrl/icon';
//@salesforce/user/Id gets current loged in user id
import Id from '@salesforce/user/Id';

export default class static extends LightningElement {
    label = {
        labelName
    }
    iconURL = iconUR;
    userId = Id;
}