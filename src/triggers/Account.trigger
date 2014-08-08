trigger Account on Account (before insert, before update) {
	AccountTriggerHandler.AccountTriggerhandler(Trigger.New);
}