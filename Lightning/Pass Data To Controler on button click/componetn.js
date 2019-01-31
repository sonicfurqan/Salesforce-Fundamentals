({
	
	 catchData: function (cmp, event,helper){
        
        let status=event.getSource().get("v.value");
        let index=event.getSource().get("v.name");
        let index=event.currentTarget.id;
        let dataset =JSON.parse(JSON.stringify(event.currentTarget.dataset));
      
    }
    
})

