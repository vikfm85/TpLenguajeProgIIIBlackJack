"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #GameShell
	instanceVariableNames: 'bancaPresenter jugadoresPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GameShell guid: (GUID fromString: '{EB9CA0E6-9688-40E2-9E17-6FCD50E0D3E0}')!
GameShell comment: ''!
!GameShell categoriesForClass!MVP-Presenters! !
!GameShell methodsFor!

cargarBanca: laBanca
	self cargarPlayerPresenter: laBanca en: bancaPresenter!

cargarJugadores: jugadores
	jugadores do: [:each | self cargarPlayerPresenter: each]!

cargarPlayerPresenter: jugador
	self cargarPlayerPresenter: jugador en: jugadoresPresenter!

cargarPlayerPresenter: jugador en: unPresenter
	| presenter |
	presenter := PlayerPresenter createIn: unPresenter on: jugador.
	presenter imagenJugador: jugador imagen.
	presenter nombreJugador: jugador nombre!

createComponents
	"Create the presenters contained by the receiver"

	super createComponents.
	bancaPresenter := self add: Presenter new name: 'banca'.
	jugadoresPresenter := self add: Presenter new name: 'jugadores'!

onViewOpened
	super onViewOpened.
	self cargarJugadores: self model jugadores.
	self cargarBanca: self model banca.
	self view refreshContents! !
!GameShell categoriesFor: #cargarBanca:!public! !
!GameShell categoriesFor: #cargarJugadores:!public! !
!GameShell categoriesFor: #cargarPlayerPresenter:!public! !
!GameShell categoriesFor: #cargarPlayerPresenter:en:!public! !
!GameShell categoriesFor: #createComponents!public! !
!GameShell categoriesFor: #onViewOpened!public! !

!GameShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 679 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 16 234 256 98 4 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 624 0 0 0 7 0 0 0 624 530 234 240 576 32 234 256 576 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 561 882 1569 563 624 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 24 1 0 0 16 3 0 0 49 2 0 0] 98 0 882 193 193 0 27 8 'jugadores' 410 640 98 15 0 416 98 2 8 1140850688 131073 1024 0 0 0 7 0 0 0 1024 530 234 240 576 32 234 256 576 0 754 202 208 98 1 818 848 98 2 882 1 1 882 1569 561 1024 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 16 3 0 0 24 1 0 0] 98 0 992 0 27 8 'banca' 0 0 0 0 0 1 0 0 0 882 1601 1201 1 0 0 754 202 208 98 3 818 848 98 2 882 2559 21 882 1601 1201 416 818 8 #text: 98 1 8 'Blackjack' 416 818 8 #updateMenuBar 576 416 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 31 8 0 0 98 2 0 0] 98 2 1024 624 992 0 27 )! !
!GameShell class categoriesFor: #resource_Default_view!public!resources-views! !

