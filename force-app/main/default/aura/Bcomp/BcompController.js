({
	displayMessage : function(component, event, helper) {
        
        var m=event.getParam("arguments");
        component.set("{!v.messagefromParent}",m.showMessage);
	}
})