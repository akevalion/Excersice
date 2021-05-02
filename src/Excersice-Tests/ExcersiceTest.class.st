"
An ExcersiceTest is a test class for testing the behavior of Excersice
"
Class {
	#name : #ExcersiceTest,
	#superclass : #TestCase,
	#category : #'Excersice-Tests'
}

{ #category : #tests }
ExcersiceTest >> testWeird [
	| e |
	e := Excersice new.
	
	self should: [ e numbersBetween: 384 and: 15] raise: Error.
	self should: [ e numbersBetween: 38 and: 21] raise: Error.
	self should: [ e numbersBetween: 38 and: 9] raise: Error.
	
	self assert: (e numbersBetween: 38 and: 15) equals: #(4038 3138 2238 1338 438).
]
