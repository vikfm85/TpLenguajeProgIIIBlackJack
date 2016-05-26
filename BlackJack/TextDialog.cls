"Filed out from Dolphin Smalltalk 7"!

Dialog subclass: #TextDialog
	instanceVariableNames: 'choice text'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TextDialog guid: (GUID fromString: '{D39B2B0D-1558-4908-B515-F81F32321BCD}')!
TextDialog comment: ''!
!TextDialog categoriesForClass!MVP-Presenters! !
!TextDialog methodsFor!

createComponents
	"Create the presenters contained by the receiver"

	super createComponents.
	choice := self add: ChoicePresenter new name: 'choice'.
	text := self add: TextPresenter new name: 'text'!

ok
	"Metodo para pasar a la proxima pantalla"

	self model: choice view selection.
	super ok!

onViewOpened
	text view text: self model value first.
	choice view model addAll: self model value second.
	choice view selection: choice view model first! !
!TextDialog categoriesFor: #createComponents!public! !
!TextDialog categoriesFor: #ok!public! !
!TextDialog categoriesFor: #onViewOpened!public! !

!TextDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.DialogView) 98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 167 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Presenter) 8 #resource_OK_Cancel_button_block 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 21 373 834 869 71 560 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 186 0 0 0 188 1 0 0 221 0 0 0] 98 0 834 193 193 0 27 0 0 0 234 256 98 4 410 8 ##(Smalltalk.StaticText) 98 16 0 416 98 2 8 1140850944 65 992 0 0 0 7 0 0 0 992 0 8 4294903617 852486 ##(Smalltalk.NullConverter) 0 0 0 706 202 208 98 2 770 800 98 2 834 191 181 834 81 41 992 770 8 #text: 98 1 8 'Texto' 992 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 95 0 0 0 90 0 0 0 135 0 0 0 110 0 0 0] 98 0 944 0 27 8 'text' 410 8 ##(Smalltalk.ComboBox) 98 17 0 416 98 2 8 1412498947 1025 1360 590662 2 ##(Smalltalk.ListModel) 202 208 928 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 482 8 4278190080 0 7 0 0 0 1360 0 8 4294903853 459270 ##(Smalltalk.Message) 8 #displayString 98 0 928 401 706 202 208 98 1 770 800 98 2 834 191 231 834 251 53 1360 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 95 0 0 0 115 0 0 0 220 0 0 0 141 0 0 0] 98 0 944 0 27 8 'choice' 590342 ##(Smalltalk.Rectangle) 834 21 21 834 21 21 0 0 0 0 9649 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore) 0 0 1 0 8 2003610624 706 202 208 98 2 770 800 98 2 834 2559 21 834 941 541 416 770 8 #updateMenuBar 928 416 882 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 213 6 0 0 24 1 0 0] 98 3 992 1360 560 944 0 27 )! !
!TextDialog class categoriesFor: #resource_Default_view!public!resources-views! !

