"
Abstract class to define the methods that allow diverse sum of dices and pool of dices.

addFromDado: aDice
addFromPool: aPool
"
Class {
	#name : 'RollingToy',
	#superclass : 'Object',
	#category : 'DiceGame-Base',
	#package : 'DiceGame',
	#tag : 'Base'
}

{ #category : 'actions' }
RollingToy >> + aCanBeAdded [
	^ self subclassResponsibility
]

{ #category : 'adding' }
RollingToy >> addFromDado: aDice [

	self subclassResponsibility 
]

{ #category : 'adding' }
RollingToy >> addFromPool: aPool [

	self subclassResponsibility 
]

{ #category : 'actions' }
RollingToy >> roll [
	^ self subclassResponsibility
]
