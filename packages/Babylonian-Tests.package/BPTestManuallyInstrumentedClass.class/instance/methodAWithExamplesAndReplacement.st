example methods
methodAWithExamplesAndReplacement
	<exampleNamed: 'some example'> 
	<exampleNamed: 'another example'> 
	| a |
	a := self bpReplace: [2] with: [4] for: 'some example'.
	^ self bpTrace: [a] forProbe: 10 inContext: thisContext