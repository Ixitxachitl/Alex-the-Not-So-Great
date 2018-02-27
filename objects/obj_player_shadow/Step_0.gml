/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BA9C7BD
/// @DnDArgument : "var" "ground_check_level"
/// @DnDArgument : "value" "0"
var ground_check_level = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 33925F7B
/// @DnDArgument : "var" "ground_check"
/// @DnDArgument : "value" "false"
var ground_check = false;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 3B2ED8AF
/// @DnDArgument : "var" "ground_check"
/// @DnDArgument : "value" "false"
while ((ground_check == false)) {
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 2E4DD745
	/// @DnDParent : 3B2ED8AF
	/// @DnDArgument : "x" "obj_Player.phy_position_x"
	/// @DnDArgument : "y" "ground_check_level"
	/// @DnDArgument : "object" "obj_ground_tile"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "a4f0db39-1850-421b-ab4e-cbe8751cbdbe"
	var l2E4DD745_0 = instance_place(obj_Player.phy_position_x, ground_check_level, obj_ground_tile);
	if (!(l2E4DD745_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 479E9939
		/// @DnDParent : 2E4DD745
		/// @DnDArgument : "var" "ground_check_level"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "200"
		if(ground_check_level < 200)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F2B3FC9
			/// @DnDParent : 479E9939
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "ground_check_level"
			ground_check_level += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6BFA8176
		/// @DnDParent : 2E4DD745
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7AC82731
			/// @DnDParent : 6BFA8176
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "ground_check"
			ground_check = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 36A7944E
			/// @DnDParent : 6BFA8176
			/// @DnDArgument : "var" "ground_check_level"
			ground_check_level = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 21EB7C45
	/// @DnDParent : 3B2ED8AF
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05A77AE7
		/// @DnDParent : 21EB7C45
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "ground_check"
		ground_check = true;
	}
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5B0523DB
/// @DnDArgument : "x" "obj_Player.phy_position_x"
/// @DnDArgument : "y" "ground_check_level + 1"
x = obj_Player.phy_position_x;
y = ground_check_level + 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3E21B29E
/// @DnDArgument : "msg" "obj_Player.phy_position_x"
show_debug_message(string(obj_Player.phy_position_x));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3DEB7DB2
/// @DnDArgument : "msg" "ground_check_level + 1"
show_debug_message(string(ground_check_level + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68334082
/// @DnDArgument : "var" "obj_Player.y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "y-2"
if(obj_Player.y < y-2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2EBD8E1B
	/// @DnDParent : 68334082
	/// @DnDArgument : "spriteind" "spr_player_shadow_fade_1"
	/// @DnDSaveInfo : "spriteind" "6559c95f-40d3-4045-b459-db096afca88f"
	sprite_index = spr_player_shadow_fade_1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76D43640
/// @DnDArgument : "var" "obj_Player.y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "y-4"
if(obj_Player.y < y-4)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3082FDC6
	/// @DnDParent : 76D43640
	/// @DnDArgument : "spriteind" "spr_player_shadow_fade_2"
	/// @DnDSaveInfo : "spriteind" "f3548798-bb57-4c15-94b5-8ce68ff70946"
	sprite_index = spr_player_shadow_fade_2;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73FC385A
/// @DnDArgument : "var" "obj_Player.y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "y-6"
if(obj_Player.y < y-6)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4F183C64
	/// @DnDParent : 73FC385A
	sprite_index = noone;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 454AFCB1
/// @DnDArgument : "var" "obj_Player.y"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "y-1"
if(obj_Player.y >= y-1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2552D2A5
	/// @DnDParent : 454AFCB1
	/// @DnDArgument : "spriteind" "spr_player_shadow"
	/// @DnDSaveInfo : "spriteind" "74f0a567-b21d-42f9-82a5-87635542d657"
	sprite_index = spr_player_shadow;
	image_index = 0;
}