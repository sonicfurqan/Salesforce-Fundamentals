({
    onInit: function(component, event, helper) {
    	console.log('method called on load of component');
    },
    onChangeControler: function(component, event, helper) {
    	console.log('method called when value in attribute changeAtribute is changed');
    },
    methodInJSController : function(component, event, helper) {
    	console.log('method called when someName attribute is called from another method');
    	return true;
    },
    invokeComponentDynamically: function(component, event, helper) {
    	console.log('method invoking another component');


		$A.createComponent(
	        "c:anotherComponent",{
	            'valueHolderOne' : 'Launch',
	            'valueHolderTwo':'NEW',
	        },
	        function(newcomponent){
	            if (component.isValid()) {
	                component.set("v.componentBody", newcomponent);             
	            }
	        }            
	    );
    },
})