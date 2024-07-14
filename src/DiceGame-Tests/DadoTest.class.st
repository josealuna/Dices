Class {
	#name : 'DadoTest',
	#superclass : 'TestCase',
	#category : 'DiceGame-Tests',
	#package : 'DiceGame-Tests'
}

{ #category : 'tests' }
DadoTest >> testRoll [

	| d |
	 d := Dado withFaces: 6.
	 1 to: 100 do: [ :i | self assert: (d roll  between: 1 and: 6) ]
	
]
