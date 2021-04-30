trigger CaptureEventTrigger on Log_Event__e (after insert) {
	
	//event trigger works only on after insert
	for(Log_Event__e event:Trigger.new){
		System.debug(event.body)
	}
}