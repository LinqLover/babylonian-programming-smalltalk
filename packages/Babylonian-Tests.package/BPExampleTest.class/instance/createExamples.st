utility
createExamples
	
	^ {BPMethodExample new . BPMethodExample new} collect: [:example |
		example
			method: method;
			exampleName: 'test name';
			argumentScripts: #((1 2 3) 2);
			yourself]