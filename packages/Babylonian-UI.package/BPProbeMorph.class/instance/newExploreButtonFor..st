private - ui
newExploreButtonFor: aTrace
	
	| exploreButton |
	exploreButton := IconicButton new.
	exploreButton 
		labelGraphic: (BPIcons searchIcon scaledToSize: self iconSize);
		color: Color transparent;
		borderWidth: 0;
		extent: (exploreButton extent x * 0.9)@(exploreButton extent y + self scrollBarSize).
	exploreButton 
		actionSelector: #exploreButtonClickedFor:;
		arguments: {aTrace valuesForProbeId: self id};
		target: self.	
	^ exploreButton