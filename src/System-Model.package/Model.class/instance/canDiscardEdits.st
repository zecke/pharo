edits
canDiscardEdits
	"Answer true if none of the views on this model has unaccepted edits that matter."

	dependents ifNil: [ ^ true ].
	
	self dependents
		do: [:each | each canDiscardEdits ifFalse: [ ^ false ] ]
		without: self.
		
	^ true