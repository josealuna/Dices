"
A PoolOfDadosTest is a test class for testing the behavior of PoolOfDados
"
Class {
	#name : 'PoolOfDadosTest',
	#superclass : 'TestCase',
	#instVars : [
		'pool'
	],
	#category : 'DiceGame-Tests',
	#package : 'DiceGame-Tests'
}

{ #category : 'running' }
PoolOfDadosTest >> setUp [
	super setUp.

	 pool := PoolOfDados new 
			add: (Dado withFaces: 4);
			add: (Dado withFaces: 8);
			yourself .
]

{ #category : 'tests' }
PoolOfDadosTest >> testInitialize [

	|  p |
	p := PoolOfDados new.
	self assert: p dados isNotNil .
]

{ #category : 'tests' }
PoolOfDadosTest >> testMax [

	self assert: pool max equals: 12
]

{ #category : 'tests' }
PoolOfDadosTest >> testPlus [

    | sumaPool |
	 sumaPool := pool + pool.
	 self assert: pool dados size equals: 2. 
	 self assert: sumaPool dados size equals: 4.
	 self assert: sumaPool max equals: 2 * pool max .
	 
]

{ #category : 'tests' }
PoolOfDadosTest >> testPlusMax [

    | sumaPool |
	 sumaPool := pool + pool.
	 self assert: sumaPool max equals: 2 * pool max .

	 
]

{ #category : 'tests' }
PoolOfDadosTest >> testPlusRoll [

    | sumaPool |
	 sumaPool := pool + pool.
	 1 to: 100 do: [ :i | self assert: (sumaPool roll between: 1 and: 2 * (pool max))].

	 
]

{ #category : 'tests' }
PoolOfDadosTest >> testPlusSize [

    | sumaPool |
	 sumaPool := pool + pool.
	 self assert: sumaPool dados size equals: 4.

	 
]

{ #category : 'tests' }
PoolOfDadosTest >> testRoll [


	 1 to: 100 do: [ :i | self assert: (pool roll between: 1 and: (pool max))]
]
