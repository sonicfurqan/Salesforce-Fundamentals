({
    "comonentIsoftypeQuickaction": function (cmp) {
        //close quick action by calling
        $A.get("e.force:closeQuickAction").fire();
    },
    "refreshStandardComponent": function (cmp) {
        $A.get('e.force:refreshView').fire();

    },
    "localizationService": function (cmp) {

        let local = $A.get('$Locale');
        let country = local.userLocaleCountry;
    },
    "timoutUsage":function(cmp){
            window.setTimeout(
            $A.getCallback(function() {
                cmp.set("v.visible", true);
            }), 5000
        );
    }
})