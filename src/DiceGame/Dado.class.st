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

{ #category : 'adding' }
Dado >> addFromDado: aDice [
   " We must create a new pool and put both of the dices."
	^ PoolOfDados new 
		add: self;
		add: aDice;
		yourself 
]

{ #category : 'adding' }
Dado >> addFromPool: aPool [

	^ aPool add: self; yourself 
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
