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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0BCAD7D7
/// @DnDArgument : "expr" "grounded"
/// @DnDArgument : "not" "1"
if(!(grounded))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 75B75756
	/// @DnDParent : 0BCAD7D7
	/// @DnDArgument : "expr" "has_double_jumped"
	/// @DnDArgument : "not" "1"
	if(!(has_double_jumped))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6687427E
		/// @DnDParent : 75B75756
		/// @DnDArgument : "expr" "has_jumped"
		if(has_jumped)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 1534DCB4
			/// @DnDParent : 6687427E
			var l1534DCB4_0;
			l1534DCB4_0 = keyboard_check(vk_space);
			if (l1534DCB4_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5F60C209
				/// @DnDParent : 1534DCB4
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "has_double_jumped"
				has_double_jumped = true;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 328D1A09
				/// @DnDParent : 1534DCB4
				/// @DnDArgument : "expr" "is_invincibile"
				if(is_invincibile)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 670B51EB
					/// @DnDParent : 328D1A09
					/// @DnDArgument : "spriteind" "spr_3headeddog_doublejumpInvin"
					/// @DnDSaveInfo : "spriteind" "e2c47e79-2bfa-420e-84af-017cbd19e691"
					sprite_index = spr_3headeddog_doublejumpInvin;
					image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 52A19012
				/// @DnDParent : 1534DCB4
				else
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 5A3ABFE7
					/// @DnDParent : 52A19012
					/// @DnDArgument : "spriteind" "spr_3headeddog_doublejump"
					/// @DnDSaveInfo : "spriteind" "da1e60c8-dcb8-4dcc-88b0-954774f42ae7"
					sprite_index = spr_3headeddog_doublejump;
					image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3FDBD2BD
				/// @DnDParent : 1534DCB4
				/// @DnDArgument : "expr" "-20000"
				/// @DnDArgument : "var" "phy_linear_velocity_y"
				phy_linear_velocity_y = -20000;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 746755BB
			/// @DnDParent : 6687427E
			var l746755BB_0;
			l746755BB_0 = mouse_check_button(mb_left);
			if (l746755BB_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7EAAFFD8
				/// @DnDParent : 746755BB
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "has_double_jumped"
				has_double_jumped = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 01C11B2D
				/// @DnDParent : 746755BB
				/// @DnDArgument : "expr" "-20000"
				/// @DnDArgument : "var" "phy_linear_velocity_y"
				phy_linear_velocity_y = -20000;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 356D2150
				/// @DnDParent : 746755BB
				/// @DnDArgument : "expr" "is_invincibile"
				if(is_invincibile)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2BB4BFB4
					/// @DnDParent : 356D2150
					/// @DnDArgument : "spriteind" "spr_3headeddog_doublejumpInvin"
					/// @DnDSaveInfo : "spriteind" "e2c47e79-2bfa-420e-84af-017cbd19e691"
					sprite_index = spr_3headeddog_doublejumpInvin;
					image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0412916F
				/// @DnDParent : 746755BB
				else
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 249C6748
					/// @DnDParent : 0412916F
					/// @DnDArgument : "spriteind" "spr_3headeddog_doublejump"
					/// @DnDSaveInfo : "spriteind" "da1e60c8-dcb8-4dcc-88b0-954774f42ae7"
					sprite_index = spr_3headeddog_doublejump;
					image_index = 0;
				}
			}
		}
	}
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
	/// @DnDArgument : "value" "spr_3headeddog_idle"
	if(!(sprite_index == spr_3headeddog_idle))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5FC58A30
		/// @DnDParent : 5B518729
		/// @DnDArgument : "expr" "grounded"
		if(grounded)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1
			/// @DnDHash : 1E85ABCF
			/// @DnDParent : 5FC58A30
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_ground_tile"
			/// @DnDSaveInfo : "object" "a4f0db39-1850-421b-ab4e-cbe8751cbdbe"
			var l1E85ABCF_0 = instance_place(x + 0, y + 1, obj_ground_tile);
			if ((l1E85ABCF_0 > 0))
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 281A4958
				/// @DnDParent : 1E85ABCF
				/// @DnDArgument : "spriteind" "spr_3headeddog_idle"
				/// @DnDSaveInfo : "spriteind" "c0fa66b1-2831-4c22-89a2-923dc14725f3"
				sprite_index = spr_3headeddog_idle;
				image_index = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 398D5631
	/// @DnDParent : 50597CFB
	/// @DnDArgument : "expr" "grounded"
	if(grounded)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B4D3C57
		/// @DnDParent : 398D5631
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "has_double_jumped"
		has_double_jumped = false;
	}
}