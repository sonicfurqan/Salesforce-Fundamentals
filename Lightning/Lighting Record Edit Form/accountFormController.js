({  
    //invoked on load
    handleLoad: function(component, event, helper) {
        
        // getting record data using lightning dataservice on edit if its called on edit screen
       
        var recData = event.getParam("recordUi");
        
        var fields = recData.record.fields;
         console.log(JSON.parse(JSON.stringify(fields)));
       
        
        
        
    },
    //invoked on save button
    handleSubmit: function(component, event, helper) {
        //on click of save this method is called
        event.preventDefault();
        var fields = event.getParam("fields");
         console.log(JSON.parse(JSON.stringify(fields)));
        
        //cheking time 
        if(fields['Name']==''){
           alert('enter name');
           return;
        }
      
        //updateing record
        component.find('accountForm').submit(fields);
      
    },    
    //invoked if save complete
    handleSuccess: function(component, event, helper) {
       
       var accountId = event.getParams().response;
       console.log(accountId.Id);


    },
    //invoked if error
    handleOnError: function(component, event, helper) {
       
        
        let error=event.getParam('error');
        
    }
  
})