/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DA14857
/// @DnDArgument : "var" "phy_position_y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "196"
if(phy_position_y > 196)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2F5D2261
	/// @DnDParent : 0DA14857
	/// @DnDArgument : "room" "rm_dead"
	/// @DnDSaveInfo : "room" "b2d0ac02-f6f5-48ed-a00f-139f69c1e4f2"
	room_goto(rm_dead);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CC5D70A
/// @DnDArgument : "var" "phy_position_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "start_x "
if(phy_position_x < start_x )
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5529FDC0
	/// @DnDParent : 4CC5D70A
	/// @DnDArgument : "var" "phy_linear_velocity_x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(phy_linear_velocity_x < 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25BE83A5
		/// @DnDParent : 5529FDC0
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "phy_linear_velocity_x"
		phy_linear_velocity_x += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 096A6FF4
/// @DnDArgument : "var" "phy_position_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "start_x"
if(phy_position_x > start_x)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F02ABB4
	/// @DnDParent : 096A6FF4
	/// @DnDArgument : "var" "phy_linear_velocity_x"
	/// @DnDArgument : "op" "2"
	if(phy_linear_velocity_x > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03D424D0
		/// @DnDParent : 2F02ABB4
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "phy_linear_velocity_x"
		phy_linear_velocity_x += -1;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 5A22C483
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_ground_tile"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "a4f0db39-1850-421b-ab4e-cbe8751cbdbe"
var l5A22C483_0 = instance_place(x + 0, y + 1, obj_ground_tile);
if (!(l5A22C483_0 > 0))
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 7C7182E8
	/// @DnDParent : 5A22C483
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_hill"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "807eb79b-829a-474f-9a06-f621300e6506"
	var l7C7182E8_0 = instance_place(x + 0, y + 1, obj_hill);
	if (!(l7C7182E8_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1
		/// @DnDHash : 149B05D5
		/// @DnDParent : 7C7182E8
		/// @DnDArgument : "y" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_gate"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "15d094bd-3171-4a88-97d9-88eb344b6205"
		var l149B05D5_0 = instance_place(0, y + 1, obj_gate);
		if (!(l149B05D5_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E7A156A
			/// @DnDParent : 149B05D5
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "grounded"
			grounded = false;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 635D16CA
			/// @DnDParent : 149B05D5
			/// @DnDArgument : "expr" "has_double_jumped"
			/// @DnDArgument : "not" "1"
			if(!(has_double_jumped))
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 1F29974A
				/// @DnDParent : 635D16CA
				/// @DnDArgument : "spriteind" "spr_3headeddog_jump"
				/// @DnDSaveInfo : "spriteind" "6a353d66-dc46-4b76-b6e8-3bdfdb3075bf"
				sprite_index = spr_3headeddog_jump;
				image_index = 0;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 531BA176
var l531BA176_0;
l531BA176_0 = keyboard_check(vk_space);
if (l531BA176_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 642DB513
	/// @DnDParent : 531BA176
	/// @DnDArgument : "expr" "grounded"
	if(grounded)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BB3C74E
		/// @DnDParent : 642DB513
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "phy_position_y"
		phy_position_y += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5307A236
		/// @DnDParent : 642DB513
		/// @DnDArgument : "expr" "has_double_jumped"
		/// @DnDArgument : "not" "1"
		if(!(has_double_jumped))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 251BF9C3
			/// @DnDParent : 5307A236
			/// @DnDArgument : "spriteind" "spr_3headeddog_jump"
			/// @DnDSaveInfo : "spriteind" "6a353d66-dc46-4b76-b6e8-3bdfdb3075bf"
			sprite_index = spr_3headeddog_jump;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66EB889A
		/// @DnDParent : 642DB513
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "grounded"
		grounded = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EC85E58
		/// @DnDParent : 642DB513
		/// @DnDArgument : "expr" "-5000"
		/// @DnDArgument : "var" "phy_linear_velocity_y"
		phy_linear_velocity_y = -5000;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 37DDF6E5
		/// @DnDParent : 642DB513
		/// @DnDArgument : "soundid" "snd_woof"
		/// @DnDSaveInfo : "soundid" "55235619-9139-4135-8451-bd0b17cca305"
		audio_play_sound(snd_woof, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 794B3F06
		/// @DnDParent : 642DB513
		/// @DnDArgument : "var" "phy_fixed_rotation"
		phy_fixed_rotation = 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 06756479
var l06756479_0;
l06756479_0 = keyboard_check_released(vk_space);
if (l06756479_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06843CC0
	/// @DnDParent : 06756479
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "has_jumped"
	has_jumped = true;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 48E14B8B
var l48E14B8B_0;
l48E14B8B_0 = mouse_check_button_released(mb_left);
if (l48E14B8B_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A98FC9C
	/// @DnDParent : 48E14B8B
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "has_jumped"
	has_jumped = true;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 29266FF6
var l29266FF6_0;
l29266FF6_0 = mouse_check_button_pressed(mb_left);
if (l29266FF6_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7A77CCAE
	/// @DnDParent : 29266FF6
	/// @DnDArgument : "expr" "grounded"
	if(grounded)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6157300E
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "phy_position_y"
		phy_position_y += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 03D3BF6B
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "expr" "has_double_jumped"
		/// @DnDArgument : "not" "1"
		if(!(has_double_jumped))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7F63CA41
			/// @DnDParent : 03D3BF6B
			/// @DnDArgument : "spriteind" "spr_3headeddog_jump"
			/// @DnDSaveInfo : "spriteind" "6a353d66-dc46-4b76-b6e8-3bdfdb3075bf"
			sprite_index = spr_3headeddog_jump;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49F05D15
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "grounded"
		grounded = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D689F47
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "expr" "-5000"
		/// @DnDArgument : "var" "phy_linear_velocity_y"
		phy_linear_velocity_y = -5000;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6B4147F5
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "soundid" "snd_woof"
		/// @DnDSaveInfo : "soundid" "55235619-9139-4135-8451-bd0b17cca305"
		audio_play_sound(snd_woof, 0, 0);
	}
}