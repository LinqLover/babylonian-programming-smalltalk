private - ui
newBackUpTitleMorphFor: aBPExample

	^ StringMorph new
		contents: (Text string: aBPExample uniqueIdentifier attribute: TextEmphasis bold);
		on: #click 
			send: #value 
			to: [ToolSet browse: aBPExample method methodClass selector: aBPExample method selector asSymbol];
		color: (PluggableTextMorph basicNew userInterfaceTheme textColor);
		yourself
	