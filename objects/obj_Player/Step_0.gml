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
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E7A156A
	/// @DnDParent : 5A22C483
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "grounded"
	grounded = false;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1F29974A
	/// @DnDParent : 5A22C483
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "4a6fd8c3-4304-4447-87a0-01fdfb0f9e51"
	sprite_index = spr_player_jump;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 19761489
var l19761489_0;
l19761489_0 = keyboard_check_pressed(vk_space);
if (l19761489_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 642DB513
	/// @DnDParent : 19761489
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
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 777ACA44
		/// @DnDParent : 642DB513
		/// @DnDArgument : "spriteind" "spr_player_jump"
		/// @DnDSaveInfo : "spriteind" "4a6fd8c3-4304-4447-87a0-01fdfb0f9e51"
		sprite_index = spr_player_jump;
		image_index = 0;
	
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
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "phy_linear_velocity_y"
		phy_linear_velocity_y = -100;
	
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
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 778CE5C8
		/// @DnDParent : 642DB513
		/// @DnDArgument : "var" "sp"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		var sp = floor(random_range(0, 1 + 1));
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 67FF2340
		/// @DnDParent : 642DB513
		/// @DnDArgument : "expr" "sp"
		var l67FF2340_0 = sp;
		switch(l67FF2340_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 70089C17
			/// @DnDParent : 67FF2340
			case 0:
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 189FC756
				/// @DnDParent : 70089C17
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "function" "physics_apply_local_impulse"
				/// @DnDArgument : "arg" "x,y,-1.25,1"
				var physics_apply_local_impulse(x,y,-1.25,1);
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 548CC7D9
			/// @DnDParent : 67FF2340
			/// @DnDArgument : "const" "1"
			case 1:
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 4CBD52B1
				/// @DnDParent : 548CC7D9
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "function" "physics_apply_local_impulse"
				/// @DnDArgument : "arg" "x,y,2,1"
				var physics_apply_local_impulse(x,y,2,1);
				break;
		}
	}
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
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 19A7949D
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "spriteind" "spr_player_jump"
		/// @DnDSaveInfo : "spriteind" "4a6fd8c3-4304-4447-87a0-01fdfb0f9e51"
		sprite_index = spr_player_jump;
		image_index = 0;
	
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
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "phy_linear_velocity_y"
		phy_linear_velocity_y = -100;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6B4147F5
		/// @DnDParent : 7A77CCAE
		/// @DnDArgument : "soundid" "snd_woof"
		/// @DnDSaveInfo : "soundid" "55235619-9139-4135-8451-bd0b17cca305"
		audio_play_sound(snd_woof, 0, 0);
	}
}