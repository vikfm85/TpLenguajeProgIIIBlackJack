"Filed out from Dolphin Smalltalk 7"!

Estrategia subclass: #CpuArriesgado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CpuArriesgado guid: (GUID fromString: '{6390F450-3515-4436-B93E-586D112D91A8}')!
CpuArriesgado comment: ''!
!CpuArriesgado categoriesForClass!MVP-Models! !
!CpuArriesgado methodsFor!

jugar: unJugador con: unaPartida
	| puntajeJugador |
	puntajeJugador := unJugador calcularPuntaje.
	puntajeJugador = 21
		ifTrue: [unJugador ganar]
		ifFalse: 
			[puntajeJugador > 21
				ifTrue: [unJugador perder]
				ifFalse: 
					[puntajeJugador < 17
						ifTrue: [self pedirUnaCartaA: unaPartida para: unJugador]
						ifFalse: [unJugador plantarse]]]! !
!CpuArriesgado categoriesFor: #jugar:con:!public! !

