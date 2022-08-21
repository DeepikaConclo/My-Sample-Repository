({
	raiseevent : function(component, event, helper) {
		
        var action=component.getEvent("Componenteventdemo");
        var m= component.get("{!v.messagefromchild}");
        action.setParams({
            "message":m
        })
            action.fire();
	}
})