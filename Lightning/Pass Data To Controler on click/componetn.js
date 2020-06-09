({

    catchDataFromDiv: function (cmp, event, helper) {

        let status = event.getSource().get("v.value");
        let index = event.getSource().get("v.name");
        let index1 = event.currentTarget.id;
        let dataset = JSON.parse(JSON.stringify(event.currentTarget.dataset));

    },
    catchdatafromButton: function (cmp, event, helper) {
        let index = event.getSource().get('v.value');
        let type = event.getSource().get('v.name');
    }

})

