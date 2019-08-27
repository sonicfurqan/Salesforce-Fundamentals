({
	invokeCompEvent : function(component, event, helper) {
        let myEvent=component.getEvent('myEvent');
        myEvent.setParams({"compParam" : 'data from child component' });
        myEvent.fire();
        
        
	}
})