"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #NewGameShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NewGameShell guid: (GUID fromString: '{253FE656-54CD-402D-9F91-43013A9DAE0A}')!
NewGameShell comment: ''!
!NewGameShell categoriesForClass!MVP-Presenters! !
!NewGameShell methodsFor!

nuevaPartida
	| cantJugadores cantMazos partida |
	cantJugadores := TextDialog showModalOn: #('Por favor elija la cantidad de jugadores:' #(1 2 3 4)).
	cantJugadores ifNil: [^self].
	cantMazos := TextDialog showModalOn: #('Por favor elija la cantidad de mazos:' #(1 2 3 4 5 6)).
	cantMazos ifNil: [^self].
	cantJugadores timesRepeat: [CreatePlayerDialog showModalOn: self model].
	cantMazos timesRepeat: [self model addMazo].
	partida := self model build.
	partida jugadores isEmpty ifTrue: [^self].
	GameShell showOn: partida.
	self view close! !
!NewGameShell categoriesFor: #nuevaPartida!public! !

!NewGameShell class methodsFor!

defaultModel
	^PartidaBuilder new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 679 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 530 1 1 0 0 410 8 ##(Smalltalk.PushButton) 98 20 0 560 98 2 8 1140924416 1 656 0 0 0 7 0 0 0 656 0 8 4294903083 1180998 4 ##(Smalltalk.CommandDescription) 8 #exit 8 'Salir' 1 1 0 0 32 0 0 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 2 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 999 21 946 231 61 656 882 8 #text: 98 1 8 'Salir' 656 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 243 1 0 0 10 0 0 0 102 2 0 0 40 0 0 0] 98 0 946 193 193 0 29 0 0 234 256 98 0 590342 ##(Smalltalk.Rectangle) 946 21 21 946 21 21 818 202 208 98 1 882 912 98 2 946 1 783 946 1249 101 560 1058 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 135 1 0 0 112 2 0 0 185 1 0 0] 98 1 656 1120 0 27 0 0 410 576 98 15 0 416 98 2 8 1140850688 131073 1392 0 0 0 7 0 0 0 1392 1180166 ##(Smalltalk.ProportionalLayout) 234 240 1152 16 234 256 1152 1170 946 251 251 946 251 251 818 202 208 98 1 882 912 98 2 946 1 1 946 1249 783 1392 1058 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 112 2 0 0 135 1 0 0] 98 2 410 672 98 20 0 1392 98 2 8 1140924416 1 1728 0 0 0 7 0 0 0 1728 0 8 4294903083 754 8 #nuevaPartida 8 'Nueva Partida' 1 1 0 0 32 0 0 0 818 202 208 98 3 882 912 98 2 946 251 251 946 749 141 1728 882 8 #isEnabled: 98 1 32 1728 882 1008 98 1 8 'Nueva Partida' 1728 1058 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 125 0 0 0 125 0 0 0 243 1 0 0 195 0 0 0] 98 0 1120 0 29 410 672 98 20 0 1392 98 2 8 1140924416 1 2112 0 0 0 7 0 0 0 2112 0 8 4294903083 754 8 #cargarPartida 8 'Cargar Partida' 1 1 0 0 32 0 0 0 818 202 208 98 3 882 912 98 2 946 251 391 946 749 143 2112 882 1984 98 1 32 2112 882 1008 98 1 8 'Cargar Partida' 2112 1058 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 125 0 0 0 195 0 0 0 243 1 0 0 10 1 0 0] 98 0 1120 0 29 1120 0 27 234 256 1152 0 0 0 0 0 1 0 0 946 1281 961 946 701 801 1 0 0 818 202 208 98 3 882 912 98 2 946 2559 21 946 1281 961 416 882 1008 98 1 8 'Blackjack' 416 882 8 #updateMenuBar 1152 416 1058 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 127 7 0 0 234 1 0 0] 98 2 1392 560 1120 0 27 )! !
!NewGameShell class categoriesFor: #defaultModel!public! !
!NewGameShell class categoriesFor: #resource_Default_view!public!resources-views! !

