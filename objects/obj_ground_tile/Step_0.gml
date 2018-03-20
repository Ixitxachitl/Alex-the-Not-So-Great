/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0F9E8FD3
/// @DnDArgument : "expr" "moved"
if(moved)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 16A9EFD8
	/// @DnDParent : 0F9E8FD3
	/// @DnDArgument : "var" "mv"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "0"
	var mv = (random_range(0, 0));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C6C7C46
	/// @DnDParent : 0F9E8FD3
	/// @DnDArgument : "var" "obj_ground_mover.ground_level+ mv"
	/// @DnDArgument : "op" "4"
	if(obj_ground_mover.ground_level+ mv >= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2415630C
		/// @DnDParent : 7C6C7C46
		/// @DnDArgument : "var" "obj_ground_mover.ground_level+ mv"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "50"
		if(obj_ground_mover.ground_level+ mv <= 50)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 254A98B4
			/// @DnDParent : 2415630C
			/// @DnDArgument : "expr" "mv"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "obj_ground_mover.ground_level"
			obj_ground_mover.ground_level += mv;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EBDA741
	/// @DnDParent : 0F9E8FD3
	/// @DnDArgument : "expr" "start_y - obj_ground_mover.ground_level"
	/// @DnDArgument : "var" "phy_position_y"
	phy_position_y = start_y - obj_ground_mover.ground_level;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B2786CA
	/// @DnDParent : 0F9E8FD3
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "moved"
	moved = false;
}