initialization
addCreateExampleButton
	
	| addExampleButton |
	addExampleButton := IconicButton new
		labelGraphic: ('add an example' asText addAttribute: (TextColor color: Color lightGray); yourself) asMorph imageForm;
		yourself.
	
	addExampleButton 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: addExampleButton extent * 0.8.
	
	addExampleButton 
		target: self;
		actionSelector: #addExampleButtonClicked. 
		
	self addMorph: addExampleButton
	