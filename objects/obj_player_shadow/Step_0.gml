/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 5B0523DB
/// @DnDArgument : "x" "obj_Player.phy_position_x"
/// @DnDArgument : "y" "y"
x = obj_Player.phy_position_x;
y = y;

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