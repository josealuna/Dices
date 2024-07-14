"
Dado represents a basic dice. Its responsabilitate is to generate using the message roll a random number.
"
Class {
	#name : 'Dado',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'DiceGame',
	#package : 'DiceGame'
}

{ #category : 'accessing' }
Dado >> faces [

	^ faces
]

{ #category : 'accessing' }
Dado >> faces: anObject [

	faces := anObject
]

{ #category : 'accessing' }
Dado >> roll [

	^ self faces atRandom .
]
