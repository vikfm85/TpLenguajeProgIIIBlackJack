"Filed out from Dolphin Smalltalk 7"!

Estrategia subclass: #Banca
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Banca guid: (GUID fromString: '{123ED8DC-A368-418D-8C2F-488375EA17F5}')!
Banca comment: ''!
!Banca categoriesForClass!MVP-Models! !
!Banca methodsFor!

jugar: unJugador con: unaPartida
	| mayorValor unaColeccion puntajeJugador |
	unaColeccion = ((unaPartida jugadores select: [:unJugador | unJugador estado = 'plantado'])
				collect: [:unJugador | unJugador calcularPuntaje])
		asSortedCollection: [:valor1 :valor2 | valor1 > valor2].
	unaColeccion size > 0 ifTrue: [mayorValor := unaColeccion first] ifFalse: [unJugador ganar].
	puntajeJugador := unJugador calcularPuntaje.
	puntajeJugador = 21
		ifTrue: [unJugador ganar]
		ifFalse: 
			[puntajeJugador > 21
				ifTrue: [unJugador perder]
				ifFalse: 
					[puntajeJugador < mayorValor
						ifTrue: [self pedirUnaCartaA: unaPartida para: unJugador]
						ifFalse: [unJugador plantarse]]]! !
!Banca categoriesFor: #jugar:con:!public! !

