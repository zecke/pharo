tests-marker
testMarkerOneChildrenInParentWidth
	|root brick|
	
	root := self newBrickWithFullFill.
	brick := self newBrickWithFullDependsOnChildren.
	root addBrickBack: brick.
	self markFullyClean: root.
	
	brick wrappedBounds markWidthDirty.
	GLMBrickLayouter uniqueInstance markDependent: brick brickApi.
	
	self assert: brick wrappedBounds isWidthDirty.
	self assert: brick wrappedBounds isHeightClean.
	
	self assert: root wrappedBounds isWidthClean.
	self assert: root wrappedBounds isHeightClean.