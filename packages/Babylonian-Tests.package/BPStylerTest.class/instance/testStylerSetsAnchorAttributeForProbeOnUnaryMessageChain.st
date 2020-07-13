tests
testStylerSetsAnchorAttributeForProbeOnUnaryMessageChain

	| formattedSourceCode originalSourceCode anchorTextAttributes theTextAttribute |
	originalSourceCode := 'method
	"<bpProbe id: 31412>"2 negated"</bpProbe>" + 3' asText.
	formattedSourceCode := styler styledTextFor: originalSourceCode.
	
	theTextAttribute := ((formattedSourceCode attributesAt: 9) select: [:attribute | 
			attribute isKindOf: TextAnchor]) first.
	9 to: 17 do: [:offset | 
		anchorTextAttributes := (formattedSourceCode attributesAt: offset) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	
		self 
			assert: anchorTextAttributes notEmpty;
			assert: anchorTextAttributes first = theTextAttribute;
			assert: (anchorTextAttributes first anchoredMorph isKindOf: BPProbeMorph);
			assert: anchorTextAttributes first anchoredMorph id = 31412]