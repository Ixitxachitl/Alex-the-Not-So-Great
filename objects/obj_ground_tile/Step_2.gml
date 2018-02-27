/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D2E5AF9
/// @DnDArgument : "var" "phy_position_x + sprite_width"
/// @DnDArgument : "op" "3"
if(phy_position_x + sprite_width <= 0)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7BE06164
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "var" "mv"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-1"
	var mv = floor(random_range(-1, 1 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DC99E3D
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "var" "obj_ground_mover.ground_level+mv"
	/// @DnDArgument : "op" "3"
	if(obj_ground_mover.ground_level+mv <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 701A9D62
		/// @DnDParent : 1DC99E3D
		/// @DnDArgument : "expr" "mv"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_ground_mover.ground_level"
		obj_ground_mover.ground_level += mv;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45FA8C6C
	/// @DnDParent : 6D2E5AF9
	/// @DnDArgument : "expr" "start_y + obj_ground_mover.ground_level"
	/// @DnDArgument : "var" "phy_position_y"
	phy_position_y = start_y + obj_ground_mover.ground_level;

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
}