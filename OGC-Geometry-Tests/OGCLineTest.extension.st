Extension { #name : #OGCLineTest }

{ #category : #'*OGC-Geometry-Tests' }
OGCLineTest >> testIntersectionWithLine [
	| point1a point1b point2a point2b line1 line2| 
	point1a := OGCPoint xy: #(-1 0). 
	point1b := OGCPoint xy: #(1 0). 
	point2a := OGCPoint xy: #(0 -1). 
	point2b := OGCPoint xy: #(0 1). 
	line1 := OGCLine withPoints: (OrderedCollection with: point1a with: point1b). 
	line2 := OGCLine withPoints: (OrderedCollection with: point2a with: point2b). 
	self assert: (line1 intersection: line2) equals: (OGCPoint xy: #(0 0)) 
]

{ #category : #'*OGC-Geometry-Tests' }
OGCLineTest >> testLength [
	| point1 point2 points |
	point1 := OGCPoint xy: #(0 0).
	point2 := OGCPoint xy: #(3 0).
	points := OrderedCollection with: point1.
	points add: point2.
	line := OGCLine withPoints: points.
	self assert: line length equals: 3
]