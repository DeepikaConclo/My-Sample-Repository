({
	getmessage : function(component, event, helper) {
		var m= event.getParam("message");
        component.set("{!v.messagefromchild}",m);
        
        var action=component.find("Bcomp");
        action.ChildMethod(m);
	}
})