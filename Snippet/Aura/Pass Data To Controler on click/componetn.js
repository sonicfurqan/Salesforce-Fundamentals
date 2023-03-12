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
    },
    inputvalueSearch:function(component,event,helper){
        event.getSource().get("v.value")
    }

    inputcheckbox:function(component,event){
        event.getSource().get("v.checked")
    },
    setTimeoutFunction:function(){
        window.setTimeout(
            $A.getCallback(function() {
                cmp.set("v.visible", true);
            }), 5000
        );
    }

})

