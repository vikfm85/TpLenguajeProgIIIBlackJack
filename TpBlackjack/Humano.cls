"Filed out from Dolphin Smalltalk 7"!

Estrategia subclass: #Humano
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Humano guid: (GUID fromString: '{A1596464-7EA2-4B31-BA8D-52CD76C94AF7}')!
Humano comment: ''!
!Humano categoriesForClass!MVP-Models! !
!Humano methodsFor!

jugar: unJugador
	| puntajeJugador |
	puntajeJugador := unJugador calcularPuntaje.
	puntajeJugador = 21
		ifTrue: [unJugador ganar]
		ifFalse: [puntajeJugador > 21 ifTrue: [unJugador perder]]!

plantarse: unJugador
	unJugador plantarse! !
!Humano categoriesFor: #jugar:!public! !
!Humano categoriesFor: #plantarse:!public! !

