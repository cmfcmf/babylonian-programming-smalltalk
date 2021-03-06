tests
testStylerSetsAnchorForAssignmentProbe

	| formattedSourceCode originalSourceCode anchorTextAttributes theTextAttribute |
	originalSourceCode := 'method
	
	| variable |
	"<bpProbe id: 31412>"variable := 2 + 3"</bpProbe>"' asText.
	formattedSourceCode := styler styledTextFor: originalSourceCode.
	
	theTextAttribute := ((formattedSourceCode attributesAt: 26) select: [:attribute | 
			attribute isKindOf: TextAnchor]) first.
	26 to: 42 do: [:offset | 
		anchorTextAttributes := (formattedSourceCode attributesAt: offset) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	
		self 
			assert: anchorTextAttributes notEmpty;
			assert: anchorTextAttributes first = theTextAttribute;
			assert: (anchorTextAttributes first anchoredMorph isKindOf: BPAssignmentProbeMorph);
			assert: anchorTextAttributes first anchoredMorph id = 31412]