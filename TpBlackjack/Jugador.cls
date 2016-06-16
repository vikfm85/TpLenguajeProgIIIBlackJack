"Filed out from Dolphin Smalltalk 7"!

Model subclass: #Jugador
	instanceVariableNames: 'nombre estrategia cartas partidasGanadas puntos imagen estado'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Jugador guid: (GUID fromString: '{68F6B6BF-D7FB-45A9-97DC-03D618EA576C}')!
Jugador comment: ''!
!Jugador categoriesForClass!MVP-Models! !
!Jugador methodsFor!

agregarCarta: unaCarta
	self cartas add: unaCarta!

calcularPuntaje
	| total as |
	total := self cartas inject: 0 into: [:sum :unaCarta | sum + unaCarta valor].
	as := self cartas detect: [:unaCarta | unaCarta valor = 1] ifNone: [nil].
	(total > 22 and: [as notNil]) ifTrue: [total := total - 10].
	^total!

cartas
	^cartas!

cartas: anObject
	cartas := anObject!

empatarFacil
	self estado: 'empatar'.
	partidasGanadas := partidasGanadas + 1!

empatarNormal
	self estado: 'empatar'!

entregarCarta: unaCarta
	self estrategia entregarCarta: unaCarta!

estado
	^estado!

estado: anObject
	estado := anObject!

estrategia
	^estrategia!

estrategia: anObject
	estrategia := anObject!

ganar
	self estado: 'gano'.
	partidasGanadas := partidasGanadas + 1.
	puntos := puntos + 400!

imagen
	^imagen!

imagen: anObject
	imagen := anObject!

initialize
	self partidasGanadas: 0.
	self puntos: 1000.
	self cartas: OrderedCollection new.
	self estado: 'jugando'!

jugarCon: unaPartida
	self estrategia jugar: self con: unaPartida!

nombre
	^nombre!

nombre: anObject
	nombre := anObject!

partidasGanadas
	^partidasGanadas!

partidasGanadas: anObject
	partidasGanadas := anObject!

perder
	self estado: 'perdio'.
	puntos := puntos - 200!

perdio
	| puntajeJugador |
	puntajeJugador := self calcularPuntaje.
	^puntajeJugador < 21!

plantarse
	self estado: 'plantado'.!

puedeJugar
	| puntajeJugador |
	puntajeJugador := self calcularPuntaje.
	^puntajeJugador < 21 and: [(estado = 'plantado') not]!

puntos
	^puntos!

puntos: anObject
	puntos := anObject!

sePlanto
	^self estado: 'plantado'!

tomarCartas: unaCantidad de: unaColeccionDeCartas
	self estrategia
		tomarCartas: unaCantidad
		de: unaColeccionDeCartas
		paraUnJugador: self! !
!Jugador categoriesFor: #agregarCarta:!public! !
!Jugador categoriesFor: #calcularPuntaje!public! !
!Jugador categoriesFor: #cartas!accessing!public! !
!Jugador categoriesFor: #cartas:!accessing!public! !
!Jugador categoriesFor: #empatarFacil!accessing!public! !
!Jugador categoriesFor: #empatarNormal!accessing!public! !
!Jugador categoriesFor: #entregarCarta:!public! !
!Jugador categoriesFor: #estado!accessing!public! !
!Jugador categoriesFor: #estado:!accessing!public! !
!Jugador categoriesFor: #estrategia!accessing!public! !
!Jugador categoriesFor: #estrategia:!accessing!public! !
!Jugador categoriesFor: #ganar!accessing!public! !
!Jugador categoriesFor: #imagen!accessing!public! !
!Jugador categoriesFor: #imagen:!accessing!public! !
!Jugador categoriesFor: #initialize!public! !
!Jugador categoriesFor: #jugarCon:!public! !
!Jugador categoriesFor: #nombre!accessing!public! !
!Jugador categoriesFor: #nombre:!accessing!public! !
!Jugador categoriesFor: #partidasGanadas!accessing!public! !
!Jugador categoriesFor: #partidasGanadas:!accessing!public! !
!Jugador categoriesFor: #perder!accessing!public! !
!Jugador categoriesFor: #perdio!public! !
!Jugador categoriesFor: #plantarse!public! !
!Jugador categoriesFor: #puedeJugar!public! !
!Jugador categoriesFor: #puntos!accessing!public! !
!Jugador categoriesFor: #puntos:!accessing!public! !
!Jugador categoriesFor: #sePlanto!accessing!public! !
!Jugador categoriesFor: #tomarCartas:de:!public! !

!Jugador class methodsFor!

newBanca
	| banca |
	banca := Jugador new.
	banca nombre: 'Banca'.
	banca estrategia: CpuArriesgado new.
	banca cartas: OrderedCollection new.
	banca partidasGanadas: 0.
	banca puntos: -1.
	banca
		imagen: (OLEPicture fromFile: ImageRelativeFileLocator current basePath , 'Recursos\blackjack.jpg').
	^banca! !
!Jugador class categoriesFor: #newBanca!public! !

