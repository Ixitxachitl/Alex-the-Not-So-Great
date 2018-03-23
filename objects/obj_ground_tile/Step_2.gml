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
	/// @DnDArgument : "expr" "camera_get_view_width(view_get_camera(0))+4*sprite_width"
	/// @DnDArgument : "var" "phy_position_x"
	phy_position_x = camera_get_view_width(view_get_camera(0))+4*sprite_width;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D055693
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "moved"
	moved = true;
}