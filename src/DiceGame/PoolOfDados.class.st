"
Un pool of dice. Its main resposanbility is to roll to use each roll method of the collection it has.

[x] add pools of dices
[x] add dices to get a pool of dices
[x] add a dice to a pool to get a pool
[x] add a pool to a dice and get a pool. 

All this can be done using double dispatching. Dices and pools must have two new methods
 - addFromDado: aDice
 - addFromPool: aPool
"
Class {
	#name : 'PoolOfDados',
	#superclass : 'RollingToy',
	#instVars : [
		'dados'
	],
	#category : 'DiceGame-Base',
	#package : 'DiceGame',
	#tag : 'Base'
}

{ #category : 'actions' }
PoolOfDados >> + aPoolOfDados [
	"We have to put toguether all the data to create a new poolofDados"
	^ aPoolOfDados addFromPool: self
	
]

{ #category : 'initialization' }
PoolOfDados >> add: aDado [

	self dados add: aDado
]

{ #category : 'adding' }
PoolOfDados >> addFromDado: aDice [

	^ self add: aDice; yourself 
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
