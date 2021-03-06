tests
testExampleSpecificAssertionsAreScopedByTracing

	| example result method |
	method := BPTestManuallyInstrumentedClass>>#methodAWithExamplesAndReplacementAndAssertions.
	example := method bpExamples first.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacementAndAssertions] bpTraceForExample: example.
	self assert: true equals: (result resultsForAssertionId: 5) first tracedValue.
	
	example := method bpExamples second.
	result := [BPTestManuallyInstrumentedClass new methodAWithExamplesAndReplacementAndAssertions] bpTraceForExample: example.
	self assert: result assertions isEmpty.