stepping and presenter
step

	| trace |
	trace := self example currentTrace.
	(trace notNil and: [trace exampleErrored])
		ifTrue: [self ensureErrorIndicatorFor: trace]
		ifFalse: [self ensureNoErrorIndicator].
		
	(trace notNil and: [trace hasTraceCompleted not and: [self example tracingIsStillRunning]])
		ifTrue: [self ensureLoaderIcon]
		ifFalse: [self ensureNoLoaderIcon].
		
	self updateAssertResultIcon.