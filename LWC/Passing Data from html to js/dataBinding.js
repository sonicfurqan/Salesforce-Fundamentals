/* eslint-disable no-console */
import { LightningElement } from 'lwc';//standard library
//libararys that helps in binding data 
import { track } from 'lwc';


export default class DataBinding extends LightningElement {
    @track number;
    @track textV;
    @track checkbox;
   
   
    changeHandlerForElements(event){
        //event.target contains data of the event
        //value in name and value attribute are passed in event
        const fieldName=event.target.name;
        const fieldValue=event.target.value;
        console.log(fieldValue)
        console.log(fieldName)
        
        if(fieldName==='number'){
            this.number=fieldValue;

        }
        else if(fieldName==='text'){
            this.textV=fieldValue;
        }
        
    }
    changeHandlerForSingleElement(event){
        //event.target contains data of the event
        //value in name and value attribute are passed in event
        //checked is attribute type of checkbox field to chec the status of field
        const fieldValue=event.target.checked;
        this.checkbox=fieldValue;
    }

    buttonClickHandler(event){
        //on click of button event.currentTarget contains event details
        //name and value attribute values are passed in event
        //dataset value contains all the attributes defined with prefix of data- in tag
        const name=event.currentTarget.name;
        const value=event.currentTarget.value;
        const datasets=event.currentTarget.dataset
        let datasetname=datasets.datasetname;
         console.log(value)
         console.log(name)
        console.log(datasetname)
    }

}