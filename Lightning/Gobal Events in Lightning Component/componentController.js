({
    "comonentIsoftypeQuickaction" : function(cmp) {
        //close quick action by calling
        $A.get("e.force:closeQuickAction").fire();
    },
    "refreshStandardComponent":function(cmp){
         $A.get('e.force:refreshView').fire();

    }
})