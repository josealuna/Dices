"
Dado represents a basic dice. Its responsabilitate is to generate using the message roll a random number.
"
Class {
	#name : 'Dado',
	#superclass : 'CanBeAdded',
	#instVars : [
		'faces'
	],
	#category : 'DiceGame-Base',
	#package : 'DiceGame',
	#tag : 'Base'
}

{ #category : 'creating' }
Dado class >> withFaces: anInteger [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"

	^ self new faces: anInteger
]

{ #category : 'accessing' }
Dado >> + aCanBeAdded [


	^ self addFromDado: aCanBeAdded 
	
]

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
