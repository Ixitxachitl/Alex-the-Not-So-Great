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
		/// @DnDArgument : "obj" "obj_spike"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "715eddd5-779f-4fa5-a0f5-dc9228e2b362"
		var l7676C7E3_0 = false;
		l7676C7E3_0 = instance_exists(obj_spike);
		if(!l7676C7E3_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4C981534
			/// @DnDParent : 7676C7E3
			/// @DnDArgument : "xpos" "450"
			/// @DnDArgument : "ypos" "-32"
			/// @DnDArgument : "objectid" "obj_spike"
			/// @DnDArgument : "layer" ""lyr_player""
			/// @DnDSaveInfo : "objectid" "715eddd5-779f-4fa5-a0f5-dc9228e2b362"
			instance_create_layer(450, -32, "lyr_player", obj_spike);
		
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