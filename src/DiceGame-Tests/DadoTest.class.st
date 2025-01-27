Class {
	#name : 'DadoTest',
	#superclass : 'TestCase',
	#category : 'DiceGame-Tests',
	#package : 'DiceGame-Tests'
}

{ #category : 'tests' }
DadoTest >> testAddingTwoDices [

	| d d1 pool2| 
	 d  := Dado withFaces: 6.
	 d1 := Dado withFaces: 4.
	 pool2 := d addFromDado: d1.
	 self assert: pool2 dados size equals: 2.
	 self assert: pool2 max equals: 10.
	 1 to: 100 do: [ :i | self assert: (d roll  between: 1 and: pool2 max) ]
	
]

{ #category : 'tests' }
DadoTest >> testCreation [

	| d |
	d := Dado withFaces: 6.
	self assert: d faces equals: 6.
]

{ #category : 'tests' }
DadoTest >> testRoll [

	| d |
	 d := Dado withFaces: 6.
	 1 to: 100 do: [ :i | self assert: (d roll  between: 1 and: 6) ]
	
]
