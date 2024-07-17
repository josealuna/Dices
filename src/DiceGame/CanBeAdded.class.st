"
Abstract class to define the methods that allow diverse sum of dices and pool of dices.

addFromDado: aDice
addFromPool: aPool
"
Class {
	#name : 'CanBeAdded',
	#superclass : 'Object',
	#category : 'DiceGame-Base',
	#package : 'DiceGame',
	#tag : 'Base'
}

{ #category : 'adding' }
CanBeAdded >> addFromDado: aDice [

	self subclassResponsibility 
]

{ #category : 'adding' }
CanBeAdded >> addFromPool: aPool [

	self subclassResponsibility 
]
