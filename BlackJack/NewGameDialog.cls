"Filed out from Dolphin Smalltalk 7"!

Dialog subclass: #NewGameDialog
	instanceVariableNames: 'cantJugadores'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NewGameDialog guid: (GUID fromString: '{D39B2B0D-1558-4908-B515-F81F32321BCD}')!
NewGameDialog comment: ''!
!NewGameDialog categoriesForClass!MVP-Presenters! !
!NewGameDialog methodsFor!

createComponents
"Create the presenters contained by the receiver"

	super createComponents.
	cantJugadores := self add: ChoicePresenter new name: 'cantJugadoresChoice'.!

ok
	"Metodo para pasar a la proxima pantalla"	

	self model: cantJugadores view selection.
	super ok!

onViewOpened

cantJugadores view model addAll: #(1 2 3 4).
cantJugadores view selection: cantJugadores view model first! !
!NewGameDialog categoriesFor: #createComponents!public! !
!NewGameDialog categoriesFor: #ok!public! !
!NewGameDialog categoriesFor: #onViewOpened!public! !

!NewGameDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.DialogView) 98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 167 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Presenter) 8 #resource_OK_Cancel_button_block 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 21 633 834 1049 71 560 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 60 1 0 0 22 2 0 0 95 1 0 0] 98 0 834 193 193 0 27 0 0 0 234 256 98 2 410 8 ##(Smalltalk.ComboBox) 98 17 0 416 98 2 8 1412498947 1025 992 590662 2 ##(Smalltalk.ListModel) 202 208 928 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 482 8 4278190080 0 7 0 0 0 992 0 8 4294905029 459270 ##(Smalltalk.Message) 8 #displayString 98 0 928 401 706 202 208 98 1 770 800 98 2 834 591 241 834 251 53 992 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 39 1 0 0 120 0 0 0 164 1 0 0 146 0 0 0] 98 0 944 0 27 8 'cantJugadoresChoice' 590342 ##(Smalltalk.Rectangle) 834 21 21 834 21 21 0 0 0 0 12273 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore) 0 0 1 0 8 2003610624 706 202 208 98 2 770 800 98 2 834 2559 21 834 1121 801 416 770 8 #updateMenuBar 928 416 882 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 47 7 0 0 154 1 0 0] 98 4 560 410 8 ##(Smalltalk.StaticText) 98 16 0 416 98 2 8 1140850944 65 1744 0 0 0 7 0 0 0 1744 0 8 4294901983 852486 ##(Smalltalk.NullConverter) 0 0 0 706 202 208 98 2 770 800 98 2 834 391 71 834 241 39 1744 770 8 #text: 98 1 8 'Bienvenidos
' 1744 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 195 0 0 0 35 0 0 0 59 1 0 0 54 0 0 0] 98 0 944 0 27 410 1760 98 16 0 416 98 2 8 1140850944 65 2096 0 0 0 7 0 0 0 2096 0 8 4294901983 1842 0 0 0 706 202 208 98 2 770 800 98 2 834 1 241 834 571 41 2096 770 2000 98 1 8 'Por favor elija la cantidad de jugadores!!!!!!' 2096 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 120 0 0 0 29 1 0 0 140 0 0 0] 98 0 944 0 27 992 944 0 27 )! !
!NewGameDialog class categoriesFor: #resource_Default_view!public!resources-views! !

