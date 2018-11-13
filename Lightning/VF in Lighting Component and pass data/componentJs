({
    onload: function(component, event, helper) {
       var vfOrigin = "https://" + component.get("v.vfHost");
        var vfWindowComp = component.find("vfFrame");
        if(vfWindowComp){
            let vfWindow=vfWindowComp.getElement().contentWindow;
        	vfWindow.postMessage('furqan was here', vfOrigin);    
        }
    },

 onInit:function(component,event,helper){
        var vfOrigin = "https://" + component.get("v.vfHost");
        window.addEventListener("message", function(event) {
            if (event.origin !== vfOrigin) {
                // Not the expected origin: Reject the message!
                return;
            }
            // Handle the message
            if(event.data!=undefined){
            console.log(event.data)
            }
	}
})