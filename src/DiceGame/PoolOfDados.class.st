"
Un pool of dice. Its main resposanbility is to roll to use each roll method of the collection it has.

[x] add pools of dices
[ ] add dices to get a pool of dices
[ ] add a dice to a pool to get a pool
[ ] add a pool to a dice and get a pool. 

All this can be done using double dispatching. Dices and pools must have two new methods
 - addFromDado: aDice
 - addFromPool: aPool
"
Class {
	#name : 'PoolOfDados',
	#superclass : 'CanBeAdded',
	#instVars : [
		'dados'
	],
	#category : 'DiceGame-Base',
	#package : 'DiceGame',
	#tag : 'Base'
}

{ #category : 'initialization' }
PoolOfDados >> + aPoolOfDados [
	"We have to put toguether all the data to create a new poolofDados"
	^ self addFromPool: aPoolOfDados
	
]

{ #category : 'initialization' }
PoolOfDados >> add: aDado [

	self dados add: aDado
]

{ #category : 'adding' }
PoolOfDados >> addFromPool: aPool [

	"We have to put toguether all the data to create a new poolofDados"
	^ PoolOfDados new 
   			dados: (OrderedCollection new
				addAll: self dados;
	   			addAll: aPool dados;
				yourself).
]

{ #category : 'accessing' }
PoolOfDados >> dados [

	^ dados
]

{ #category : 'accessing' }
PoolOfDados >> dados: anObject [

	dados := anObject
]

{ #category : 'initialization' }
PoolOfDados >> initialize [ 

	super initialize .
	self dados: OrderedCollection new.
]

{ #category : 'initialization' }
PoolOfDados >> max [

	^ self dados inject: 0 into: [ :a :e | e faces + a ]
]

{ #category : 'initialization' }
PoolOfDados >> roll [

	^ self dados inject: 0 into: [ :a :e | e roll + a ]
]
