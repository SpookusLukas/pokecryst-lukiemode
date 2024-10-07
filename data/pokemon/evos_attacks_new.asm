SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
    dw KotoraEvosAttacks
    dw RaitoraEvosAttacks
    dw JupitoraEvosAttacks
.IndirectEnd::

KotoraEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, RAITORA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, THUNDERSHOCK
	dbw 10, BITE
	dbw 15, BABYDOLLEYES
	dbw 19, NUZZLE
	dbw 23, THUNDER_FANG
	dbw 28, ROLLOUT
	dbw 33, SPARK
	dbw 39, TAKE_DOWN
	dbw 44, HEAL_BELL
    dbw 50, WILD_CHARGE
    dbw 57, CRUNCH
	db 0 ; no more level-up moves

RaitoraEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, JUPITORA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, THUNDERSHOCK
	dbw 10, BITE
	dbw 15, BABYDOLLEYES
	dbw 20, THUNDER_FANG
    dbw 24, ROAR
	dbw 31, ROLLOUT
	dbw 38, SPARK
	dbw 42, TAKE_DOWN
	dbw 48, HEAL_BELL
    dbw 55, WILD_CHARGE
    dbw 63, CRUNCH
	db 0 ; no more level-up moves

JupitoraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, THUNDERSHOCK
	dbw 10, BITE
	dbw 15, BABYDOLLEYES
	dbw 20, THUNDER_FANG
    dbw 24, ROAR
	dbw 31, ROLLOUT
	dbw 40, SPARK
	dbw 45, TAKE_DOWN
	dbw 52, HEAL_BELL
    dbw 59, WILD_CHARGE
    dbw 65, CRUNCH
	db 0 ; no more level-up moves