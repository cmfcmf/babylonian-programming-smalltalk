visualization
visualizationMorphs
	
	| content |

	content := true caseOf: {
		[self selectedExample isNil] -> [	visualization := nil. 'No example selected'].
		[self selectedVisualizationType == #none] -> [visualization := nil. 'No visualization selected'].
		[true] -> [ | class |
			class := self selectedVisualizationType caseOf: {
				[#callgraph] -> [BPBrowserSidebarVisualizationCallgraph].
				[#annotations] -> [BPBrowserSidebarVisualizationAnnotations].
				[#methodSet] -> [BPBrowserSidebarVisualizationExecutedMethods].
			}.
			(visualization := class new)
				example: self selectedExample;
				when: #browseMethod evaluate: [:ref | self triggerEvent: #browseMethod with: ref];
				buildWith: ToolBuilder default]}.
		
	^ {content isString
		ifTrue: [
			TextMorph new
				contents: content;
				layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1));
				yourself]
		ifFalse: [content]}