/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 756115F5
/// @DnDArgument : "var" "count"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_hill"
/// @DnDSaveInfo : "object" "807eb79b-829a-474f-9a06-f621300e6506"
var count = instance_number(obj_hill);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B691E15
/// @DnDArgument : "var" "count"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(count < 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32B5EA60
	/// @DnDParent : 0B691E15
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "cooldown"
	cooldown = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4EA58D32
/// @DnDArgument : "expr" "cooldown"
if(cooldown)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A584E7C
	/// @DnDParent : 4EA58D32
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1"
	if(count > 1)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7676C7E3
		/// @DnDParent : 4A584E7C
		/// @DnDArgument : "obj" "obj_medusa_powerup"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "72f3d8d7-e988-4339-a2ed-4be8fe70a6f3"
		var l7676C7E3_0 = false;
		l7676C7E3_0 = instance_exists(obj_medusa_powerup);
		if(!l7676C7E3_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4C981534
			/// @DnDParent : 7676C7E3
			/// @DnDArgument : "xpos" "500"
			/// @DnDArgument : "ypos" "24"
			/// @DnDArgument : "objectid" "obj_medusa_powerup"
			/// @DnDArgument : "layer" ""lyr_objs""
			/// @DnDSaveInfo : "objectid" "72f3d8d7-e988-4339-a2ed-4be8fe70a6f3"
			instance_create_layer(500, 24, "lyr_objs", obj_medusa_powerup);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61DA458B
			/// @DnDParent : 7676C7E3
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "cooldown"
			cooldown = false;
		}
	}
}