private - ui
containingBrowser

	^ (self firstOwnerSuchThat: [:m | m model isKindOf: CodeHolder]) model 