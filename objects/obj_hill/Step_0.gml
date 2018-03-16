/// @DnDAction : YoYo Games.Movement.Snap_Position
/// @DnDVersion : 1
/// @DnDHash : 0B2105B9
/// @DnDArgument : "xsnap" "1"
/// @DnDArgument : "ysnap" "1"
move_snap(1, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BD36211
/// @DnDArgument : "expr" "-1-(obj_Player.move_speed)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "phy_position_x"
phy_position_x += -1-(obj_Player.move_speed);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07923F3A
/// @DnDArgument : "var" "phy_position_x + sprite_width"
/// @DnDArgument : "op" "1"
if(phy_position_x + sprite_width < 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 216AE885
	/// @DnDParent : 07923F3A
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 487D2DC4
/// @DnDArgument : "var" "obj_Player.phy_position_y+32"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "phy_position_y"
if(obj_Player.phy_position_y+32 < phy_position_y)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6159E65F
	/// @DnDParent : 487D2DC4
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "phy_active"
	phy_active = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0FDE7612
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D3BE611
	/// @DnDParent : 0FDE7612
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "phy_active"
	phy_active = false;
}