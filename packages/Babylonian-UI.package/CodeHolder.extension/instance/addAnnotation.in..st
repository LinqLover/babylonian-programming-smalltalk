*Babylonian-UI-private
addAnnotation: anAnnotation in: interval
	
	| newContent text actualInterval newMorph |
	actualInterval := self determineIntervalToAnnotateFor: interval forNodes: anAnnotation canBeAnnotatedTo.
	actualInterval ifNil: [self codeTextMorph textMorph flash. ^ self].
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newMorph := anAnnotation asMorph.
	newContent := Character startOfHeader asString asText 
		addAllAttributes: (text attributesAt: actualInterval start); 
		yourself.
	newContent := newContent , (text copyFrom: actualInterval start to: actualInterval stop).
	newContent addAttribute: (BPTextAnchor new
			anchoredMorph: newMorph;
			yourself).
	newContent := text 
		copyReplaceFrom: actualInterval start
		to: actualInterval stop
		with: newContent.
	(self codeTextMorph) 
		addMorph: newMorph;
		setText: newContent;
		hasUnacceptedEdits: true;
		updateStyleNow;
		flag: #workaround ;"BPStyler is currently not thread-safe, make sure to terminate any background styling operations before triggering the styler again in the line."
		accept.