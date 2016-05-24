"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #IniciarJuegoShell
	instanceVariableNames: 'builder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IniciarJuegoShell guid: (GUID fromString: '{253FE656-54CD-402D-9F91-43013A9DAE0A}')!
IniciarJuegoShell comment: ''!
!IniciarJuegoShell categoriesForClass!MVP-Presenters! !
!IniciarJuegoShell methodsFor!

initialize
	builder:= PartidaBuilder new.!

nuevaPartida
	| ventana cantJugadores jugadorShell |
	ventana := NuevaPartidaShell show.
	ventana cantJugadores.
	cantJugadores timesRepeat: 
			[jugadorShell := CrearJugadorShell show.
			builder addJugador: jugadorShell jugador]! !
!IniciarJuegoShell categoriesFor: #initialize!public! !
!IniciarJuegoShell categoriesFor: #nuevaPartida!public! !

!IniciarJuegoShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 0 234 256 98 0 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 690 1201 801 416 626 8 #updateMenuBar 544 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 154 1 0 0] 98 3 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 832 0 0 0 7 0 0 0 832 0 8 4294902231 1180998 4 ##(Smalltalk.CommandDescription)  8 #nuevaPartida 8 'Nueva Partida' 1 1 0 0 32 0 0 0 562 202 208 98 3 626 656 98 2 690 471 201 690 211 51 832 626 8 #isEnabled: 98 1 32 832 626 8 #text: 98 1 8 'Nueva Partida' 832 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 100 0 0 0 84 1 0 0 125 0 0 0] 98 0 690 193 193 0 29 410 848 98 20 0 416 98 2 8 1140924416 1 1280 0 0 0 7 0 0 0 1280 0 8 4294902231 930 0 8 '#cargarPartida' 1 1 0 0 32 0 0 0 562 202 208 98 3 626 656 98 2 690 471 321 690 211 51 1280 626 1120 98 1 32 1280 626 1168 98 1 8 'Cargar Partida' 1280 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 160 0 0 0 84 1 0 0 185 0 0 0] 98 0 1264 0 29 410 848 98 20 0 416 98 2 8 1140924416 1 1632 0 0 0 7 0 0 0 1632 0 8 4294902231 930 8 #close 8 'Salir' 1 1 0 0 32 0 0 0 562 202 208 98 3 626 656 98 2 690 471 441 690 211 51 1632 626 1120 98 1 32 1632 626 1168 98 1 8 'Salir' 1632 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 220 0 0 0 84 1 0 0 245 0 0 0] 98 0 1264 0 29 1264 0 27 )! !
!IniciarJuegoShell class categoriesFor: #resource_Default_view!public!resources-views! !

