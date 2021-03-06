testing - blocks - optimized
testExampleToDoArgumentLimitIsExpression
	| ir ast aCompiledMethod instance |
	ast := (OCOpalExamples>>#exampleToDoArgumentLimitIsExpression) parseTree.
	ir := (ast doSemanticAnalysisIn: OCOpalExamples) ir.
	instance := OCOpalExamples new.
	
	aCompiledMethod := ir compiledMethod.
	self assert: (aCompiledMethod valueWithReceiver: instance arguments: #()) = instance exampleToDoArgumentLimitIsExpression.
	
	