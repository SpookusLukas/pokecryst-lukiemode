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
	anim_obj BATTLE_ANIM_OBJ_HEART, 120, 40, $0
	anim_1gfx BATTLE_ANIM_GFX_CHARGE
	anim_obj BATTLE_ANIM_OBJ_ABSORB_CENTER, 44, 88, $0
.loop
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_ABSORB, 128, 48, $2
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_ABSORB, 136, 64, $3
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_ABSORB, 136, 32, $4
	anim_wait 6
	anim_loop 5, .loop
	anim_wait 32
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