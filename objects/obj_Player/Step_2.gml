/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 34A1B25E
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4967582D
	/// @DnDParent : 34A1B25E
	/// @DnDArgument : "var" "phy_fixed_rotation"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(phy_fixed_rotation == true))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 606283FA
		/// @DnDParent : 4967582D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "phy_fixed_rotation"
		phy_fixed_rotation = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1439B127
		/// @DnDParent : 4967582D
		/// @DnDArgument : "var" "phy_rotation"
		phy_rotation = 0;
	}

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 312D32EE
	/// @DnDParent : 34A1B25E
	/// @DnDArgument : "soundid" "snd_step"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "7614d2d4-097c-4008-961c-00fbf92c6803"
	var l312D32EE_0 = snd_step;
	if (!audio_is_playing(l312D32EE_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7244653A
		/// @DnDParent : 312D32EE
		/// @DnDArgument : "soundid" "snd_step"
		/// @DnDSaveInfo : "soundid" "7614d2d4-097c-4008-961c-00fbf92c6803"
		audio_play_sound(snd_step, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41FDD6FE
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D9F339B
	/// @DnDParent : 41FDD6FE
	/// @DnDArgument : "var" "phy_fixed_rotation"
	/// @DnDArgument : "value" "true"
	if(phy_fixed_rotation == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41A28DBC
		/// @DnDParent : 2D9F339B
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "phy_fixed_rotation"
		phy_fixed_rotation = false;
	}

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6BF2B9BC
	/// @DnDParent : 41FDD6FE
	/// @DnDArgument : "soundid" "snd_step"
	/// @DnDSaveInfo : "soundid" "7614d2d4-097c-4008-961c-00fbf92c6803"
	audio_stop_sound(snd_step);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50597CFB
/// @DnDArgument : "var" "phy_position_x + 1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "phy_position_xprevious"
if(phy_position_x + 1 < phy_position_xprevious)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F3B1889
	/// @DnDParent : 50597CFB
	/// @DnDArgument : "objectid" "obj_screen_shake"
	/// @DnDArgument : "layer" ""lyr_bg""
	/// @DnDSaveInfo : "objectid" "59ad2d96-c343-43ea-a3a8-819b4a39511b"
	instance_create_layer(0, 0, "lyr_bg", obj_screen_shake);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B518729
	/// @DnDParent : 50597CFB
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "spr_player_idle"
	if(!(sprite_index == spr_player_idle))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 281A4958
		/// @DnDParent : 5B518729
		/// @DnDArgument : "spriteind" "spr_player_idle"
		/// @DnDSaveInfo : "spriteind" "220c3a91-de8b-412b-bd37-0886eb622a2e"
		sprite_index = spr_player_idle;
		image_index = 0;
	}
}