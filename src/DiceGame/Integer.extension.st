Extension { #name : 'Integer' }

{ #category : '*DiceGame' }
Integer >> D10 [
"Creates a poolDice of with dices of four faces"
  ^ self D: 10
]

{ #category : '*DiceGame' }
Integer >> D4 [ 
"Creates a poolDice of with dices of four faces"
  ^ self D: 4
]

{ #category : '*DiceGame' }
Integer >> D6 [
"Creates a poolDice of with dices of four faces"
  ^ self D: 6
]

{ #category : '*DiceGame' }
Integer >> D: aNumberOfFaces [
"Creates a poolDice of with dices of four faces"
  | pool |
   pool := PoolOfDados new.
		1 to:self do:[:i | pool add: (Dado withFaces: aNumberOfFaces)].
	^ pool
]
