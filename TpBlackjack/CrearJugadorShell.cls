"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #CrearJugadorShell
	instanceVariableNames: 'jugador nombreCtrl estrategiaCtrl partidasCtrl nombreTextCtrl imagenPerfilCtrl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CrearJugadorShell guid: (GUID fromString: '{6D39CDC0-6AF4-447E-BE21-EEF503919851}')!
CrearJugadorShell comment: ''!
!CrearJugadorShell categoriesForClass!MVP-Presenters! !
!CrearJugadorShell methodsFor!

cancel
	self close!

cargarImagen
"Carga la imagen de un perfil."

	| filename |
	filename := (FileOpenDialog new)
				fileTypes: #(#('PNG (*.png)' '*.png') #('JPG (*.jpg)' '*.jpg'));
				showModal.
	filename ifNotNil: [:value | imagenPerfilCtrl ]!

createComponents
	"Create the presenters contained by the receiver"

	super createComponents.
	nombreCtrl := self add: TextPresenter new name: 'nombreText'.
	estrategiaCtrl := self add: ChoicePresenter new name: 'estrategiaChoice'.
	partidasCtrl := self add: TextPresenter new name: 'partidasText'.
	nombreTextCtrl := self add: TextPresenter new name: 'puntajeText'.
	imagenPerfilCtrl := self add: ImagePresenter new name: 'imagenPerfil'!

jugador
	^jugador!

jugador: anObject
	jugador := anObject!

ok
! !
!CrearJugadorShell categoriesFor: #cancel!public! !
!CrearJugadorShell categoriesFor: #cargarImagen!public! !
!CrearJugadorShell categoriesFor: #createComponents!public! !
!CrearJugadorShell categoriesFor: #jugador!accessing!private! !
!CrearJugadorShell categoriesFor: #jugador:!accessing!private! !
!CrearJugadorShell categoriesFor: #ok!public! !

!CrearJugadorShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1201 801 551 0 0 0 416 0 234 256 98 10 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 592 0 482 8 4278190080 0 7 0 0 0 592 0 8 4294902917 852486 ##(Smalltalk.NullConverter)  0 0 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 331 151 530 251 53 592 818 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 592 818 8 #isTextModified: 98 1 32 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 75 0 0 0 34 1 0 0 101 0 0 0] 98 0 530 193 193 0 27 8 'nombreText' 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 1136 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  482 8 4278190080 0 7 0 0 0 1136 0 8 4294902915 459270 ##(Smalltalk.Message)  8 #displayString 98 0 1264 401 754 202 208 98 1 818 848 98 2 530 331 241 530 251 53 1136 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 120 0 0 0 34 1 0 0 146 0 0 0] 98 0 1104 0 27 8 'estrategiaChoice' 410 8 ##(Smalltalk.StaticBitmap)  98 17 0 416 98 2 8 1149239566 1 1600 721990 2 ##(Smalltalk.ValueHolder)  0 0 1376774 ##(Smalltalk.PluggableSearchPolicy)  1362 8 #== 98 0 1362 8 #hash 98 0 0 0 0 7 0 0 0 1600 0 8 4294902733 722 0 0 32 0 754 202 208 98 1 818 848 98 2 530 651 41 530 441 331 1600 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 69 1 0 0 20 0 0 0 33 2 0 0 185 0 0 0] 98 0 1104 0 27 8 'imagenPerfil' 410 608 98 16 0 416 98 2 8 1140916352 1025 2048 0 482 688 0 7 0 0 0 2048 0 8 4294902917 722 0 0 3 754 202 208 98 3 818 848 98 2 530 331 331 530 251 53 2048 818 928 98 1 962 3 1 3 2048 818 1008 98 1 32 2048 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 165 0 0 0 34 1 0 0 191 0 0 0] 98 0 1104 0 27 8 'PartidasText' 410 608 98 16 0 416 98 2 8 1140916352 1025 2416 0 482 688 0 7 0 0 0 2416 0 8 4294902917 722 0 0 3 754 202 208 98 3 818 848 98 2 530 331 421 530 251 53 2416 818 928 98 1 962 3 1 3 2416 818 1008 98 1 32 2416 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 210 0 0 0 34 1 0 0 236 0 0 0] 98 0 1104 0 27 8 'puntajeText' 0 0 0 0 0 10023 0 0 0 0 1 0 0 754 202 208 98 3 818 848 98 2 530 2879 21 530 1201 801 416 818 8 #text: 98 1 8 'puntajeText' 416 818 8 #updateMenuBar 1264 416 1042 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 154 1 0 0] 98 12 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 65 3040 0 0 0 7 0 0 0 3040 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 111 161 530 141 41 3040 818 2912 98 1 8 'Nombre:' 3040 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 80 0 0 0 125 0 0 0 100 0 0 0] 98 0 1104 0 27 1600 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 3360 0 0 0 7 0 0 0 3360 0 8 4294902903 1180998 4 ##(Smalltalk.CommandDescription)  0 8 'Cargar Imagen' 1 1 0 0 32 0 0 0 754 202 208 98 2 818 848 98 2 530 771 451 530 201 53 3360 818 2912 98 1 8 'Cargar Imagen' 3360 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 225 0 0 0 229 1 0 0 251 0 0 0] 98 0 1104 0 29 410 3376 98 20 0 416 98 2 8 1140924416 1 3712 0 0 0 7 0 0 0 3712 0 8 4294902903 3458 8 #cancel 8 '&Cancel' 1 1 0 0 32 0 0 0 754 202 208 98 3 818 848 98 2 530 661 641 530 141 53 3712 818 8 #isEnabled: 98 1 32 3712 818 2912 98 1 8 '&Cancel' 3712 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 74 1 0 0 64 1 0 0 144 1 0 0 90 1 0 0] 98 0 1104 0 29 410 3376 98 20 0 416 98 2 8 1140924416 1 4096 0 0 0 7 0 0 0 4096 0 8 4294902903 3458 8 #ok 8 '&OK' 1 1 0 0 16 0 0 0 754 202 208 98 3 818 848 98 2 530 981 641 530 141 53 4096 818 3968 98 1 32 4096 818 2912 98 1 8 '&OK' 4096 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 234 1 0 0 64 1 0 0 48 2 0 0 90 1 0 0] 98 0 1104 0 29 592 1136 410 3056 98 16 0 416 98 2 8 1140850944 65 4464 0 0 0 7 0 0 0 4464 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 111 249 530 141 41 4464 818 2912 98 1 8 'Estretegia:' 4464 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 124 0 0 0 125 0 0 0 144 0 0 0] 98 0 1104 0 27 410 3056 98 16 0 416 98 2 8 1140850944 65 4768 0 0 0 7 0 0 0 4768 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 105 337 530 221 41 4768 818 2912 98 1 8 'Partidas Ganadas:' 4768 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 52 0 0 0 168 0 0 0 162 0 0 0 188 0 0 0] 98 0 1104 0 27 410 3056 98 16 0 416 98 2 8 1140850944 65 5072 0 0 0 7 0 0 0 5072 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 105 431 530 201 41 5072 818 2912 98 1 8 'Puntaje:' 5072 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 52 0 0 0 215 0 0 0 152 0 0 0 235 0 0 0] 98 0 1104 0 27 2048 2416 1104 0 27 )! !
!CrearJugadorShell class categoriesFor: #resource_Default_view!public!resources-views! !

