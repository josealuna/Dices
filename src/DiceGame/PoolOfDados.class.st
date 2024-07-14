"
Un pool of dice. Its main resposanbility is to roll to use each roll method of the collection it has.
"
Class {
	#name : 'PoolOfDados',
	#superclass : 'Object',
	#instVars : [
		'dados'
	],
	#category : 'DiceGame',
	#package : 'DiceGame'
}

{ #category : 'initialization' }
PoolOfDados >> + aPoolOfDados [
	"We have to put toguether all the data to create a new poolofDados"
	^ PoolOfDados new 
   			dados: (OrderedCollection new
				addAll: self dados;
	   			addAll: aPoolOfDados dados;
				yourself).
	
]

{ #category : 'initialization' }
PoolOfDados >> add: aDado [

	self dados add: aDado
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
