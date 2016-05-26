"Filed out from Dolphin Smalltalk 7"!

Model subclass: #Jugador
	instanceVariableNames: 'nombre estrategia cartas partidasGanadas puntos imagen'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Jugador guid: (GUID fromString: '{68F6B6BF-D7FB-45A9-97DC-03D618EA576C}')!
Jugador comment: ''!
!Jugador categoriesForClass!MVP-Models! !
!Jugador methodsFor!

calcularPuntaje!

carcularMano!

cartas
	^cartas!

cartas: anObject
	cartas := anObject!

estrategia
	^estrategia!

estrategia: anObject
	estrategia := anObject!

imagen
	^imagen!

imagen: anObject
	imagen := anObject!

initialize
	self partidasGanadas: 0.
	self puntos: 1000.
	self cartas: OrderedCollection new!

nombre
	^nombre!

nombre: anObject
	nombre := anObject!

partidasGanadas
	^partidasGanadas!

partidasGanadas: anObject
	partidasGanadas := anObject!

puntos
	^puntos!

puntos: anObject
	puntos := anObject! !
!Jugador categoriesFor: #calcularPuntaje!public! !
!Jugador categoriesFor: #carcularMano!public! !
!Jugador categoriesFor: #cartas!accessing!public! !
!Jugador categoriesFor: #cartas:!accessing!public! !
!Jugador categoriesFor: #estrategia!accessing!public! !
!Jugador categoriesFor: #estrategia:!accessing!public! !
!Jugador categoriesFor: #imagen!accessing!public! !
!Jugador categoriesFor: #imagen:!accessing!public! !
!Jugador categoriesFor: #initialize!public! !
!Jugador categoriesFor: #nombre!accessing!public! !
!Jugador categoriesFor: #nombre:!accessing!public! !
!Jugador categoriesFor: #partidasGanadas!accessing!public! !
!Jugador categoriesFor: #partidasGanadas:!accessing!public! !
!Jugador categoriesFor: #puntos!accessing!public! !
!Jugador categoriesFor: #puntos:!accessing!public! !

!Jugador class methodsFor!

newBanca
	| banca |
	banca := Jugador new.
	banca nombre: 'Banca'.
	banca estrategia: CpuArriesgado new.
	banca cartas: OrderedCollection new.
	banca partidasGanadas: 0.
	banca puntos: -1.
	banca imagen: nil.
	^banca! !
!Jugador class categoriesFor: #newBanca!public! !

