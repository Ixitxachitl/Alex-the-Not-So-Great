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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25B720C0
	/// @DnDParent : 01C956DE
	/// @DnDArgument : "expr" "1.5"
	/// @DnDArgument : "var" "speed"
	speed = 1.5;
}