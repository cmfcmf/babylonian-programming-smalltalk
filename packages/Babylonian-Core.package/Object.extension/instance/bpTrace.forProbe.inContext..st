*Babylonian-Core
bpTrace: anObject forProbe: probeId inContext: aContext
	
	^ #bpInstrumented withoutLayerDo: [
		BPActiveTracer value 
			trace: anObject 
			through: [:r | r]
			forProbe: probeId 
			inContext: aContext]