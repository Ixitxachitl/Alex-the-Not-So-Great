/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 065E1B2C
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "on_ground"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0986173D
/// @DnDDisabled : 1
/// @DnDArgument : "var" "check_y"


/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 6755ACC0
/// @DnDDisabled : 1
/// @DnDArgument : "var" "on_ground"
/// @DnDArgument : "value" "false"
/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 35DF93B3
/// @DnDDisabled : 1
/// @DnDParent : 6755ACC0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "check_y"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_ground_tile"
/// @DnDSaveInfo : "object" "a4f0db39-1850-421b-ab4e-cbe8751cbdbe"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4825472C
/// @DnDDisabled : 1
/// @DnDParent : 35DF93B3
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "on_ground"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3B176C81
/// @DnDDisabled : 1
/// @DnDParent : 6755ACC0
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A03948E
/// @DnDDisabled : 1
/// @DnDParent : 3B176C81
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "check_y"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18D719EA
/// @DnDDisabled : 1
/// @DnDParent : 6755ACC0
/// @DnDArgument : "var" "check_y"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "500"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77C517B6
/// @DnDDisabled : 1
/// @DnDParent : 18D719EA
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "on_ground"


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D442BDF
/// @DnDDisabled : 1
/// @DnDParent : 18D719EA

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5124B076
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "check_y"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "phy_position_y"


/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 63BE4A72
/// @DnDArgument : "var" "live"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
var live = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01C956DE
/// @DnDArgument : "var" "live"
if(live == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7AA416B3
	/// @DnDParent : 01C956DE
	instance_destroy();
}