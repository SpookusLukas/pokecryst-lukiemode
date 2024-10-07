SECTION "Egg Moves 3", ROMX

EggMovePointers3:
    dw KotoraEggMoves
	dw NoEggMoves1
	dw NoEggMoves1
.IndirectEnd::

KotoraEggMoves:
	dw LIGHT_SCREEN
	dw SKULL_BASH
	dw SAFEGUARD
	dw SHOCK_WAVE
	dw -1 ; end