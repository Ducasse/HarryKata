Class {
	#name : #HPBookSellerTest,
	#superclass : #TestCase,
	#category : #'HarryPotterKata-Tests'
}

{ #category : #accessing }
HPBookSellerTest >> defaultTimeLimit [
 ^ 20 seconds
]

{ #category : #tests }
HPBookSellerTest >> testBuy10000BookSame [

	| seller books |
	books := (1 to: 10000) collect: [ :each | 
		HPBook titled: 'Harry Potter 1' ].

	seller := HPSeller new.
	self
		assert: (seller sell: books)
		equals: books size * 8.
]

{ #category : #tests }
HPBookSellerTest >> testBuy1000BookSame [

	| seller books |
	books := (1 to: 1000) collect: [ :each | 
		HPBook titled: 'Harry Potter 1' ].

	seller := HPSeller new.
	self
		assert: (seller sell: books)
		equals: books size * 8.
]

{ #category : #tests }
HPBookSellerTest >> testBuyFiveBookDifferent [

	| book1 book2 book3 book4 book5 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 2'.
	book3 := HPBook titled: 'Harry Potter 3'.
	book4 := HPBook titled: 'Harry Potter 4'.
	book5 := HPBook titled: 'Harry Potter 5'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2. book3. book4. book5 })
		equals: (book1 price + book2 price + book3 price + book4 price + book5 price) * 0.75.
]

{ #category : #tests }
HPBookSellerTest >> testBuyFiveBookSame [

	| book1 book2 book3 book4 book5 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 1'.
	book3 := HPBook titled: 'Harry Potter 1'.
	book4 := HPBook titled: 'Harry Potter 1'.
	book5 := HPBook titled: 'Harry Potter 1'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2. book3. book4. book5 })
		equals: (book1 price + book2 price + book3 price + book4 price + book5 price).
]

{ #category : #tests }
HPBookSellerTest >> testBuyFourBookDifferent [

	| book1 book2 book3 book4 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 2'.
	book3 := HPBook titled: 'Harry Potter 3'.
	book4 := HPBook titled: 'Harry Potter 4'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2. book3. book4 })
		equals: (book1 price + book2 price + book3 price + book4 price) * 0.8.
]

{ #category : #tests }
HPBookSellerTest >> testBuyFourBookSame [

	| book1 book2 book3 book4 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 1'.
	book3 := HPBook titled: 'Harry Potter 1'.
	book4 := HPBook titled: 'Harry Potter 1'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2. book3. book4 })
		equals: (book1 price + book2 price + book3 price + book4 price).
]

{ #category : #tests }
HPBookSellerTest >> testBuyOneBook [

	| book seller |
	book := HPBook titled: 'Harry Potter 1'.
	seller := HPSeller new.
	self assert: (seller sell: {book}) equals: 8
]

{ #category : #tests }
HPBookSellerTest >> testBuyThreeBookDifferent [

	| book1 book2 book3 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 2'.
	book3 := HPBook titled: 'Harry Potter 3'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2. book3 })
		equals: (book1 price + book2 price + book3 price) * 0.9.
]

{ #category : #tests }
HPBookSellerTest >> testBuyTwoBookDifferent [

	| book1 book2 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 2'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2 })
		equals: book1 price + book2 price * 0.95
]

{ #category : #tests }
HPBookSellerTest >> testBuyTwoBookSame [

	| book1 book2 seller |
	book1 := HPBook titled: 'Harry Potter 1'.
	book2 := HPBook titled: 'Harry Potter 1'.
	seller := HPSeller new.
	self
		assert: (seller sell: { book1 . book2 })
		equals: book1 price + book2 price
]
