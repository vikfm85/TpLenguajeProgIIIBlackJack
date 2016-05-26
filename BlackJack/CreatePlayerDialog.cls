"Filed out from Dolphin Smalltalk 7"!

Dialog subclass: #CreatePlayerDialog
	instanceVariableNames: 'nombreJugador imagenJugador rutaImagenJugador estrategia'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CreatePlayerDialog guid: (GUID fromString: '{5F9F525F-7CB0-429D-B854-CB5A47034157}')!
CreatePlayerDialog comment: ''!
!CreatePlayerDialog categoriesForClass!Unclassified! !
!CreatePlayerDialog methodsFor!

cargarImagen
	| dialogo path |
	dialogo := (FileOpenDialog new)
				caption: 'Buscar imagen';
				fileTypes: #(#('Imagen (*.bmp)' '*.bmp') #('JPG (*.jpg)' '*.jpg') #('PNG (*.png)' '*.png'));
				defaultExtension: 'bmp';
				initialDirectory: ImageRelativeFileLocator current basePath , '\Recursos';
				yourself.
	path := dialogo showModal.
	^path!

cargarImagenJugador
	| path |
	path := self cargarImagen.
	path isNil ifTrue: [^self].
	imagenJugador view image: (OLEPicture fromFile: path).
	rutaImagenJugador view text: path.
	self view refreshContents!

createComponents
	"Create the presenters contained by the receiver. At this stage
	the receiver has not yet been initialized."

	super createComponents.
	nombreJugador := self add: TextPresenter new name: 'nombreJugador'.
	imagenJugador := self add: ImagePresenter new name: 'imagenJugador'.
	rutaImagenJugador := self add: TextPresenter new name: 'rutaImagen'.
	estrategia := self add: ChoicePresenter new name: 'estrategiaChoice'!

ok
	"Metodo para pasar a la proxima pantalla"

	| jugador |
	jugador := Jugador new.
	jugador nombre: nombreJugador view text.
	jugador imagen: imagenJugador view image.
	jugador estrategia: estrategia view selectionOrNil new.
	self model value addJugador: jugador.
	super ok!

onViewOpened
	estrategia view model addAll: Estrategia allSubclasses.
	estrategia view selection: estrategia view model first.
	self view refreshContents!

puedeAceptar
	^nombreJugador view text notEmpty and: [rutaImagenJugador view text notEmpty]!

queryCommand: aCommandQuery 
	"Private - Enters details about a potential command for the receiver into the 
	<CommandQuery>,  query."

	| cmd |
	cmd := aCommandQuery commandSymbol.
	cmd == #ok 
		ifTrue: 
			[aCommandQuery isEnabled: self puedeAceptar.
			^true].
	^super queryCommand: aCommandQuery! !
!CreatePlayerDialog categoriesFor: #cargarImagen!private! !
!CreatePlayerDialog categoriesFor: #cargarImagenJugador!public! !
!CreatePlayerDialog categoriesFor: #createComponents!public! !
!CreatePlayerDialog categoriesFor: #ok!public! !
!CreatePlayerDialog categoriesFor: #onViewOpened!public! !
!CreatePlayerDialog categoriesFor: #puedeAceptar!public! !
!CreatePlayerDialog categoriesFor: #queryCommand:!private! !

!CreatePlayerDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.DialogView) 98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 167 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Presenter) 8 #resource_OK_Cancel_button_block 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 21 633 834 729 71 560 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 60 1 0 0 118 1 0 0 95 1 0 0] 98 0 834 193 193 0 27 0 0 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 960 0 0 0 7 0 0 0 960 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 4 410 976 98 15 0 960 98 2 8 1140850688 131073 1104 0 0 0 7 0 0 0 1104 0 234 256 98 2 410 8 ##(Smalltalk.ComboBox) 98 17 0 1104 98 2 8 1412498947 1025 1200 590662 2 ##(Smalltalk.ListModel) 202 208 928 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 482 8 4278190080 0 7 0 0 0 1200 0 8 4294905029 459270 ##(Smalltalk.Message) 8 #displayString 98 0 928 401 706 202 208 98 1 770 800 98 2 834 161 11 834 251 53 1200 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 80 0 0 0 5 0 0 0 205 0 0 0 31 0 0 0] 98 0 944 0 27 8 'estrategiaChoice' 0 706 202 208 98 1 770 800 98 2 834 21 505 834 689 89 1104 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 252 0 0 0 98 1 0 0 40 1 0 0] 98 2 1200 410 8 ##(Smalltalk.StaticText) 98 16 0 1104 98 2 8 1140850944 65 1808 0 0 0 7 0 0 0 1808 0 8 4294901983 852486 ##(Smalltalk.NullConverter) 0 0 0 706 202 208 98 2 770 800 98 2 834 17 17 834 141 41 1808 770 8 #text: 98 1 8 'Estretegia:' 1808 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 0 0 0 8 0 0 0 78 0 0 0 28 0 0 0] 98 0 944 0 27 944 0 27 327734 ##(Smalltalk.Float) 8 154 153 153 153 153 153 201 63 410 976 98 15 0 960 98 2 8 1140850688 131073 2192 0 0 0 7 0 0 0 2192 530 1 1 0 0 0 410 1824 98 16 0 2192 98 2 8 1140850944 1 2272 0 0 0 7 0 0 0 2272 0 8 4294901983 1906 0 0 0 706 202 208 98 2 770 800 98 2 834 11 11 834 101 39 2272 770 2064 98 1 8 'Nombre' 2272 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 55 0 0 0 24 0 0 0] 98 0 944 0 27 410 8 ##(Smalltalk.TextEdit) 98 16 0 2192 98 2 8 1140916352 1025 2576 0 482 8 4278190080 0 7 0 0 0 2576 0 8 4294904449 1906 0 0 1 706 202 208 98 3 770 800 98 2 834 111 11 834 569 39 2576 770 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval) 3 1 3 2576 770 8 #isTextModified: 98 1 32 2576 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 5 0 0 0 83 1 0 0 24 0 0 0] 98 0 944 0 27 234 256 98 2 2576 8 'nombreJugador' 590342 ##(Smalltalk.Rectangle) 834 11 11 834 11 11 706 202 208 98 1 770 800 98 2 834 21 21 834 689 59 2192 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 98 1 0 0 39 0 0 0] 98 2 2272 2576 944 0 27 2162 8 236 81 184 30 133 235 193 63 16 234 256 928 3058 834 21 21 834 21 21 706 202 208 98 1 770 800 98 2 834 21 21 834 729 613 960 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 118 1 0 0 60 1 0 0] 98 3 2192 410 976 98 15 0 960 98 2 8 1140850688 131073 3520 0 0 0 7 0 0 0 3520 530 1 1 0 410 976 98 15 0 3520 98 2 8 1140850688 131073 3600 0 0 0 7 0 0 0 3600 530 1 1 0 0 410 8 ##(Smalltalk.PushButton) 98 20 0 3600 98 2 8 1140924416 1 3680 0 0 0 7 0 0 0 3680 0 8 4294902005 1180998 4 ##(Smalltalk.CommandDescription) 8 #cargarImagenJugador 8 'Cargar' 1 1 0 0 32 0 0 0 706 202 208 98 3 770 800 98 2 834 539 11 834 141 51 3680 770 8 #isEnabled: 98 1 32 3680 770 2064 98 1 8 'Cargar' 3680 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 13 1 0 0 5 0 0 0 83 1 0 0 30 0 0 0] 98 0 944 0 29 410 1824 98 16 0 3600 98 2 8 1140850944 1 4096 0 0 0 7 0 0 0 4096 0 8 4294901983 1906 0 0 0 706 202 208 98 2 770 800 98 2 834 1 11 834 111 51 4096 770 2064 98 1 8 'Ruta' 4096 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 55 0 0 0 30 0 0 0] 98 0 944 0 27 410 2592 98 16 0 3600 98 2 8 1140916352 1025 4400 0 482 8 4278190080 0 7 0 0 0 4400 0 8 4294904449 1906 0 0 3 706 202 208 98 3 770 800 98 2 834 111 11 834 429 51 4400 770 2848 98 1 2882 3 1 3 4400 770 2928 98 1 32 4400 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 5 0 0 0 13 1 0 0 30 0 0 0] 98 0 944 0 27 234 256 98 2 4400 8 'rutaImagen' 3058 834 1 11 834 11 1 706 202 208 98 1 770 800 98 2 834 1 367 834 689 61 3600 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 183 0 0 0 88 1 0 0 213 0 0 0] 98 3 3680 4096 4400 944 0 27 0 0 410 976 98 15 0 3520 98 2 8 1140850688 131073 5024 0 0 0 7 0 0 0 5024 530 1 1 0 0 0 410 1824 98 16 0 5024 98 2 8 1140850944 1 5104 0 0 0 7 0 0 0 5104 0 8 4294901983 1906 0 0 0 706 202 208 98 2 770 800 98 2 834 11 11 834 101 347 5104 770 2064 98 1 8 'Imagen' 5104 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 55 0 0 0 178 0 0 0] 98 0 944 0 27 410 8 ##(Smalltalk.StaticBitmap) 98 17 0 5024 98 2 8 1149239566 1 5408 721990 2 ##(Smalltalk.ValueHolder) 0 0 1376774 ##(Smalltalk.PluggableSearchPolicy) 1410 8 #== 98 0 1410 8 #hash 98 0 0 0 0 7 0 0 0 5408 0 8 4294901983 1906 0 0 32 0 706 202 208 98 1 770 800 98 2 834 111 11 834 569 347 5408 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 5 0 0 0 83 1 0 0 178 0 0 0] 98 0 944 0 27 234 256 98 2 5408 8 'imagenJugador' 3058 834 11 11 834 11 11 706 202 208 98 1 770 800 98 2 834 1 1 834 689 367 5024 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 1 0 0 183 0 0 0] 98 2 5104 5408 944 0 27 234 256 928 0 706 202 208 98 1 770 800 98 2 834 21 79 834 689 427 3520 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 39 0 0 0 98 1 0 0 252 0 0 0] 98 2 5024 3600 944 0 27 1104 944 0 27 234 256 928 3058 834 21 21 834 21 21 0 0 0 0 9653 263494 3 ##(Smalltalk.Icon) 0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Recursos\battle.ico' 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore) 0 0 1 32 8 2003610624 706 202 208 98 3 770 800 98 2 834 2559 21 834 801 801 416 770 2064 98 1 8 'Crear jugador' 416 770 8 #updateMenuBar 928 416 882 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 143 6 0 0 154 1 0 0] 98 2 960 560 944 0 27 )! !
!CreatePlayerDialog class categoriesFor: #resource_Default_view!public!resources-views! !

