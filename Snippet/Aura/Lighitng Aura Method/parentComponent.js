({
	callMethodFromAnotherComponent: function (component, event, helper) {
		let componentHolder = component.find('findMe');
		if (componentHolder) {
			let returnValue = componentHolder.mehtodNameFromAttribute();
		}

	}
})