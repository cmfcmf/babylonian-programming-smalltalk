tests
testRewritingSimpleExpressionProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe>"2 + 3"</bpProbe>"'
		to:
'method

(self bpTrace: (2 + 3) forId: 1 forExpression: ''2 + 3'' inContext: thisContext))'