trigger hllowrld on Lead (before insert, before update) {
	hellowrld.helloworld(Trigger.New);
}