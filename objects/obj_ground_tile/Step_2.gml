/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D2E5AF9
/// @DnDArgument : "var" "x + sprite_width"
/// @DnDArgument : "op" "3"
if(x + sprite_width <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23600654
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "expr" "camera_get_view_width(view_get_camera(0))+2*sprite_width"
	/// @DnDArgument : "var" "phy_position_x"
	phy_position_x = camera_get_view_width(view_get_camera(0))+2*sprite_width;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A9A7484
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_Player.dist_score"
	obj_Player.dist_score += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D055693
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "moved"
	moved = true;
}