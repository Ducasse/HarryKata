Class {
	#name : #HPBookCollection,
	#superclass : #Object,
	#instVars : [
		'openSeries'
	],
	#category : #HarryPotterKata
}

{ #category : #adding }
HPBookCollection >> add: aHPBook [

	self addInFirstFor: aHPBook
]

{ #category : #adding }
HPBookCollection >> addInFirstFor: anInteger [

	| into |
	into := openSeries detect: [ :each | 
		(each includes: anInteger) not ]
		ifNone: [ openSeries add: Set new ].
	into add: anInteger.
]

{ #category : #enumerating }
HPBookCollection >> collect: aFullBlockClosure [ 
	^ openSeries collect: aFullBlockClosure
]

{ #category : #accessing }
HPBookCollection >> collectionsFor: anInteger [ 
	^ openSeries select: [ :each | each includes: anInteger ]
]

{ #category : #adding }
HPBookCollection >> initialize [

	super initialize.
	openSeries := OrderedCollection new.
	"1 to: 10 do: [ :each | openSeries add: Set new ]"
]
