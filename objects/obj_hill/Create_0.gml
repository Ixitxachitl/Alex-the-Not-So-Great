/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 065E1B2C
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "on_ground"
on_ground = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0986173D
/// @DnDArgument : "var" "check_y"
check_y = 0;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 6755ACC0
/// @DnDArgument : "var" "on_ground"
/// @DnDArgument : "value" "false"
while ((on_ground == false)) {
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 35DF93B3
	/// @DnDParent : 6755ACC0
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "check_y"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_ground_tile"
	/// @DnDSaveInfo : "object" "a4f0db39-1850-421b-ab4e-cbe8751cbdbe"
	var l35DF93B3_0 = instance_place(x + 0, y + check_y, obj_ground_tile);
	if ((l35DF93B3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4825472C
		/// @DnDParent : 35DF93B3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "on_ground"
		on_ground = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3B176C81
	/// @DnDParent : 6755ACC0
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A03948E
		/// @DnDParent : 3B176C81
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "check_y"
		check_y += 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18D719EA
	/// @DnDParent : 6755ACC0
	/// @DnDArgument : "var" "check_y"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "500"
	if(check_y >= 500)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77C517B6
		/// @DnDParent : 18D719EA
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "on_ground"
		on_ground = true;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5D442BDF
		/// @DnDParent : 18D719EA
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5124B076
/// @DnDArgument : "expr" "check_y+16"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "phy_position_y"
phy_position_y += check_y+16;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31774D1C
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "phy_active"
phy_active = false;