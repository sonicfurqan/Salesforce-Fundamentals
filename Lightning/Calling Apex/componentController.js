({
    callingApex function (component) {

        let action = component.get("c.apexMethodName");
        action.setParams({ parameter: 'hi' });

        action.setCallback(this, function (response) {
            let state = response.getState();
            let data = response.getReturnValue();
            if (state === "SUCCESS") {
                console.log(data);
            }
            else if (state === "ERROR") {
                let errors = response.getError();
                console.log(errors);
            }
        });
        $A.enqueueAction(action);
    }
})