as yet unclassified
menu: aMenuMorph
	
	aMenuMorph add: 'go to original call' action: #selectOriginalCall.
	aMenuMorph add: 'go to execution continuation' action: #selectExecutionContinuation.
	aMenuMorph add: 'go to context sender change' action: #selectContextSenderChange.
	super menu: aMenuMorph.