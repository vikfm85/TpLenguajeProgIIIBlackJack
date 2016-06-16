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

crearMazo
	| mazo |
	mazo := OrderedCollection new.
	mazo addAll: (self crearPalo: 'Corazon').
	mazo addAll: (self crearPalo: 'Diamante').
	mazo addAll: (self crearPalo: 'Trebol').
	mazo addAll: (self crearPalo: 'Pica').
	^mazo!

crearPalo: nombrePalo
	| cartas |
	cartas := OrderedCollection new.
	2 to: 10
		do: [:cont | cartas add: (Carta
						new: cont
						valor: cont
						palo: nombrePalo)].
	cartas add: (Carta
				new: 'A'
				valor: 11
				palo: nombrePalo).
	cartas add: (Carta
				new: 'J'
				valor: 10
				palo: nombrePalo).
	cartas add: (Carta
				new: 'Q'
				valor: 10
				palo: nombrePalo).
	cartas add: (Carta
				new: 'K'
				valor: 10
				palo: nombrePalo).
	^cartas! !
!MazoFactory class categoriesFor: #crearMazo!public! !
!MazoFactory class categoriesFor: #crearPalo:!public! !

