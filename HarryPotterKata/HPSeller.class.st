Class {
	#name : #HPSeller,
	#superclass : #Object,
	#instVars : [
		'priceMapping'
	],
	#category : #HarryPotterKata
}

{ #category : #calculating }
HPSeller >> calculatePriceForMin: count size: size [ 
	
 ^ count * size * 8 * (priceMapping at: size)
]

{ #category : #'so;ething' }
HPSeller >> discountFor: aCollection [ 
	
	| groups |
	groups := OrderedCollection new.
]

{ #category : #initialization }
HPSeller >> initialize [ 

	super initialize.
	priceMapping := #(1 0.95 0.9 0.8 0.75).
]

{ #category : #private }
HPSeller >> priceCollection: aCollection [ 
	aCollection ifEmpty: [ ^ 0 ].
	^ aCollection size * 8 * (priceMapping at: aCollection size)
]

{ #category : #api }
HPSeller >> sell: aCollectionOfBooks [ 
	
	| sum bookCollection counts |
	sum := 0.
	
	bookCollection := aCollectionOfBooks asBag.
	counts := bookCollection valuesAndCounts values.
	[ counts isNotEmpty ] whileTrue: [ 
		| min |
		min := counts min.
		sum := sum +
			(self calculatePriceForMin: min size: counts size).
			
		counts := counts
			collect: [ :each | each - min ]
			thenReject: [ :each | each = 0 ] ] .
		
		^ sum
]

{ #category : #accessing }
HPSeller >> totalPrice: aCollection [ 
	
	^ aCollection size * 8
]
