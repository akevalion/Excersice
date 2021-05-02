"
From amigo que no dice que lenguaje
"
Class {
	#name : #Excersice,
	#superclass : #Object,
	#category : #Excersice
}

{ #category : #public }
Excersice >> numbersBetween: a and: b [
	|d1 d2 d3 d4 n1 n2 |
	(a between: 0 and: 99) ifFalse: [ self error: 'invalid' ].
	(b between: 10 and: 20) ifFalse: [ self error: 'invalid' ].
	n1 := a.
	n2 := b.
	
	d1 := n1 %10.
	n1 := n1 // 10.
	d2 := n1 %10.
	d3 := 0.
	d4 := n2 - d1 - d2.
	
	^ (0 to: d4) collect: [ :i | | res |
		res := (d4 * 1000) + (d3 * 100) + (d2 * 10) + d1.
		d3 := d3 + 1.
		d4 := d4 - 1.
		res.
		 ].
]
