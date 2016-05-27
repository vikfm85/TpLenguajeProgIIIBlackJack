"Filed out from Dolphin Smalltalk 7"!

Estrategia subclass: #CpuPrudente
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CpuPrudente guid: (GUID fromString: '{3C8B817B-547F-4DAE-B576-088C36CE1E5F}')!
CpuPrudente comment: ''!
!CpuPrudente categoriesForClass!MVP-Models! !
!CpuPrudente methodsFor!

jugar: unJugador con: unaPartida
	| puntajeJugador |
	puntajeJugador := unJugador calcularPuntaje.
	puntajeJugador = 21
		ifTrue: [unJugador ganar]
		ifFalse: 
			[puntajeJugador > 21
				ifTrue: [unJugador perder]
				ifFalse: 
					[puntajeJugador < 14
						ifTrue: [self pedirUnaCartaA: unaPartida para: unJugador]
						ifFalse: 
							[| r |
							r := Random new.
							r seed: Random systemClockSeed.
							r next > 0.5 ifTrue: [self pedirUnaCartaA: unaPartida para: unJugador]]]]! !
!CpuPrudente categoriesFor: #jugar:con:!public! !

