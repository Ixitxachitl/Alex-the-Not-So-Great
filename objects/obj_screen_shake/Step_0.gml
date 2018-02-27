/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 30C5F8A7
/// @DnDArgument : "expr" "shake"
if(shake)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3052D346
	/// @DnDParent : 30C5F8A7
	/// @DnDArgument : "var" "ran_angle"
	/// @DnDArgument : "value" "random_range(-3,3)"
	var ran_angle = random_range(-3,3);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2253644F
	/// @DnDParent : 30C5F8A7
	/// @DnDArgument : "function" "camera_set_view_angle"
	/// @DnDArgument : "arg" "view_camera[0],0 + ran_angle"
	camera_set_view_angle(view_camera[0],0 + ran_angle);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52387E7C
	/// @DnDParent : 30C5F8A7
	/// @DnDArgument : "expr" "camera_get_view_angle(view_camera[0])"
	/// @DnDArgument : "var" "view_angle"
	view_angle = camera_get_view_angle(view_camera[0]);
}