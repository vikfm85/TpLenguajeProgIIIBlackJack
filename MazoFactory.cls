"Filed out from Dolphin Smalltalk 7"!

Model subclass: #MazoFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MazoFactory guid: (GUID fromString: '{E57983BC-1DCD-485A-975E-5238F937BCDD}')!
MazoFactory comment: ''!
!MazoFactory categoriesForClass!MVP-Models! !
!MazoFactory class methodsFor!

addMazo
	| mazo |
	mazo := OrderedCollection new.
	10 timesRepeat: [mazo add: Carta new].
	10 timesRepeat: [mazo add: Carta new].
	10 timesRepeat: [mazo add: Carta new].
	10 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new]!

crearMazo! !
!MazoFactory class categoriesFor: #addMazo!public! !
!MazoFactory class categoriesFor: #crearMazo!public! !

