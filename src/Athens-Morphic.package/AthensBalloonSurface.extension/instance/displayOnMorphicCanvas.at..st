*Athens-Morphic
displayOnMorphicCanvas: canvas at: aPoint
	"display receiver on morphic canvas"
	canvas
		image: self asForm
		at: aPoint
		sourceRect: (0@0 extent: self asForm extent )
		rule: 34.