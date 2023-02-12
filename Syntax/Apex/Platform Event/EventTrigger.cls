//Trigger of platform event is only after insert
trigger EventTrigger on Log_Event__e (after insert) {
	
	//event.body contains the value that are added to event
	for(Log_Event__e event:Trigger.new){
		System.debug(event.body)
	}
}