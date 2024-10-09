BattleAnim_Moonblast:
    anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_bgp $1b
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
    anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 0, 40, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 16, 56, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 32, 72, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 48, 88, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 64, 104, $0
	anim_wait 1
	anim_sound 0, 0, SFX_MOONLIGHT
	anim_wait 63
    anim_1gfx BATTLE_ANIM_GFX_BEAM
	anim_call BattleAnimSub_Beam
	anim_wait 48
	anim_incobj 5
	anim_wait 64
	anim_ret

BattleAnim_PlayRough:
	anim_1gfx BATTLE_ANIM_GFX_HIT
    anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_BOUNCE_DOWN, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_RETURN
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_BOUNCE_DOWN
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_POUND
	anim_obj BATTLE_ANIM_OBJ_PALM, 120, 72, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 120, 72, $0
	anim_wait 6
	anim_sound 0, 1, SFX_MOVE_PUZZLE_PIECE
	anim_obj BATTLE_ANIM_OBJ_PUNCH, 136, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 152, 40, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 152, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_DrainingKiss:
    anim_2gfx BATTLE_ANIM_GFX_OBJECTS, BATTLE_ANIM_GFX_ANGELS
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_SWEET_KISS, 96, 40, $0
	anim_sound 0, 1, SFX_SWEET_KISS
	anim_wait 32
	anim_sound 0, 1, SFX_SWEET_KISS_2
    anim_wait 20
	anim_1gfx BATTLE_ANIM_GFX_BUBBLE
	anim_sound 6, 3, SFX_WATER_GUN
	anim_call BattleAnimSub_Drain
	anim_wait 128
	anim_wait 48
	anim_ret

BattleAnim_DisarmVoice:
    anim_1gfx BATTLE_ANIM_GFX_PSYCHIC
	anim_bgeffect BATTLE_BG_EFFECT_PSYCHIC, $0, $0, $0
    anim_1gfx BATTLE_ANIM_GFX_NOISE
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
    anim_cry $0
.loop
    anim_call BattleAnimSub_Sound
    anim_wait 16
	anim_loop 4, .loop
    anim_wait 105
	anim_incbgeffect BATTLE_BG_EFFECT_PSYCHIC
	anim_wait 4
	anim_ret

BattleAnim_SpiritBreak:
    anim_1gfx BATTLE_ANIM_GFX_ANGELS
	anim_bgp $1b
	anim_obp0 $0
	anim_sound 6, 2, SFX_WHIRLWIND
	anim_obj BATTLE_ANIM_OBJ_DESTINY_BOND, 44, 120, $2
	anim_wait 64
    anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 48, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 152, 48, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 48, $0
    anim_wait 64
	anim_ret

BattleAnim_FireFang:
    anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_FIRE
    anim_call BattleAnimSub_Fire
    anim_wait 40
    anim_2gfx BATTLE_ANIM_GFX_CUT, BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $98
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $18
	anim_wait 16
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 64, $18
	anim_wait 15
	anim_ret

BattleAnim_ThunderFang:
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_LIGHTNING
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $2
	anim_sound 0, 1, SFX_THUNDER
	anim_obj BATTLE_ANIM_OBJ_THUNDER_RIGHT, 152, 68, $0
    anim_wait 40
    anim_2gfx BATTLE_ANIM_GFX_CUT, BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $98
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $18
	anim_wait 16
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 64, $18
	anim_wait 15
	anim_ret

BattleAnim_IceFang:
    anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_ICE
    anim_call BattleAnimSub_Ice
    anim_wait 40
    anim_2gfx BATTLE_ANIM_GFX_CUT, BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $98
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $18
	anim_wait 16
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 64, $18
	anim_wait 15
	anim_ret

BattleAnim_PoisonFang:
    anim_2gfx BATTLE_ANIM_GFX_CUT, BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $98
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $18
	anim_wait 16
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 64, $18
	anim_wait 24
    anim_clearobjs
    anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_POISON
    anim_call BattleAnimSub_Sludge
    anim_wait 20
	anim_ret

BattleAnim_Dive:
	anim_2gfx BATTLE_ANIM_GFX_BUBBLE, BATTLE_ANIM_GFX_HIT
	anim_if_param_equal $0, .hit
	anim_if_param_equal $2, .fail
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_DIG, $0, BG_EFFECT_USER, $1
.loop
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_BUBBLE, 56, 104, $0
	anim_wait 32
	anim_loop 3, .loop
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, BG_EFFECT_USER, $0
	anim_wait 8
	anim_incbgeffect BATTLE_BG_EFFECT_DIG
	anim_call BattleAnim_ShowMon_0
	anim_ret

.hit
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 32
.fail
	anim_bgeffect BATTLE_BG_EFFECT_ENTER_MON, $0, BG_EFFECT_USER, $0
	anim_wait 32
	anim_ret