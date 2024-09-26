BattleCommand_Payback:
    ld a, [hBattleTurn]
    and a
    ld hl, wCurDamage
    jr .payback
.payback
    ld a, [hl]
    and a
    ret z
    jp DoubleDamage