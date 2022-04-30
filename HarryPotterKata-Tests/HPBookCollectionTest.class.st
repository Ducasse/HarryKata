Class {
	#name : #HPBookCollectionTest,
	#superclass : #TestCase,
	#category : #'HarryPotterKata-Tests'
}

{ #category : #tests }
HPBookCollectionTest >> testAdd123ProducesOnlyOneCollection [


	| col |
	col := HPBookCollection new.
	col add: 1.
	col add: 2.
	col add: 3.
	self assert: (col collectionsFor: 1) size equals: 1. 
	self assert: (col collectionsFor: 2) size equals: 1. 
	self assert: (col collectionsFor: 3) size equals: 1. 
]

{ #category : #tests }
HPBookCollectionTest >> testAddOneBookProducesOneCollection [


	| col |
	col := HPBookCollection new.
	col add: 1.
	self assert: (col collectionsFor: 1) size equals: 1. 
]

{ #category : #tests }
HPBookCollectionTest >> testAddTwiceTheSameBookProducesTwoCollections [


	| col |
	col := HPBookCollection new.
	col add: 1.
	col add: 1.
	self assert: (col collectionsFor: 1) size equals: 2. 
]

{ #category : #tests }
HPBookCollectionTest >> testAddTwoDifferentBooksProducesTwoCollections [


	| col |
	col := HPBookCollection new.
	col add: 1.
	col add: 2.
	self assert: (col collectionsFor: 2) size equals: 1. 
]
