({
	methodOnreciveingEvent: function (component, event, helper) {
		let data = event.getParam("appParam");
		console.log(data);
	},
	invokeAppEvent: function (component, event, helper) {
                let appEvent = $A.get("e.c:ApplicationEvent");
                appEvent.setParams({ "appParam": 'Data from parentComp' });
                appEvent.fire();

        },
})