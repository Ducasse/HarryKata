Class {
	#name : #HPBookTest,
	#superclass : #TestCase,
	#category : #'HarryPotterKata-Tests'
}

{ #category : #tests }
HPBookTest >> testBookEquality [

	| title book book2 |
	title := 'defaut'.
	book := HPBook titled: title.
	book2 := HPBook titled: title.
	self assert: book equals: book2
]

{ #category : #tests }
HPBookTest >> testPrice [ 

	| title book |
	title := 'defaut'.
	book := HPBook titled: title.
	self assert: book price equals: 8
]

{ #category : #tests }
HPBookTest >> testTitle [ 

	| title book |
	title := 'Harry Potter and the Sorcerer''s Stone'.
	book := HPBook titled: title.
	self assert: book title equals: title
]
