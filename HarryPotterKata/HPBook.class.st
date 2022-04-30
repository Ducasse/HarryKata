Class {
	#name : #HPBook,
	#superclass : #Object,
	#instVars : [
		'title',
		'price'
	],
	#category : #HarryPotterKata
}

{ #category : #instanceCreation }
HPBook class >> price: anInteger [ 
	self shouldBeImplemented.
]

{ #category : #'as yet unclassified' }
HPBook class >> title: aString price: anInteger [

	^ self new
		  title: aString;
		  price: anInteger;
		  yourself
]

{ #category : #'instance creation' }
HPBook class >> titled: aString [ 
	
	^ self new
		title: aString;
		yourself.
]

{ #category : #accessing }
HPBook >> = aBook [

	^ self title = aBook title
]

{ #category : #accessing }
HPBook >> hash [

	^ self title ;z
]

{ #category : #initialization }
HPBook >> initialize [

	price := 8.
]

{ #category : #accessing }
HPBook >> price [
	^ price
]

{ #category : #accessing }
HPBook >> price: anInteger [ 

	price := anInteger
]

{ #category : #accessing }
HPBook >> title [
	^ title
]

{ #category : #accessing }
HPBook >> title: aString [ 
	title := aString
]
