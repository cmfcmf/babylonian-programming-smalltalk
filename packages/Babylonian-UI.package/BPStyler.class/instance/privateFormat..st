private
privateFormat: aText
	  
	| parseResult |
	self ifNoSelectedMethod: [^ super privateFormat: aText].
	
	parseResult := BPSmalltalkGrammar 
					match: aText asString
					startingFrom: #MethodDeclaration.
	"parseResult := PEGParserBPSmalltalk new 
					match: aText asString
					startingFrom: #MethodDeclaration."
 
	^ parseResult succeeded
		ifTrue: [ | annotations |
			[annotations := self extractIntervals value: parseResult.
			annotations do: [:annotation | annotation methodReference: selectedMethod].
			self reformat: aText basedOn: annotations.]
				on: Error do: [:e | self haltOnce. super privateFormat: aText]]
		ifFalse: [self haltOnce. super privateFormat: aText].