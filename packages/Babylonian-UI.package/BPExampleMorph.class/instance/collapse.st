ui - actions
collapse

	collapsed ifTrue: [^ self].
	
	exampleSpecificMorphs abandon.
	configurationButton abandon.
	nameTextMorph 
		wrapFlag: false;
		hideScrollBarsIndefinitely.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
	collapsed := true.

	self collapseInExamplesMorph.
	
	
	