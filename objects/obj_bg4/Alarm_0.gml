/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 643BD3DF
/// @DnDArgument : "var" "obj_Player.move_speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(obj_Player.move_speed < 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1DBB2EBD
	/// @DnDParent : 643BD3DF
	/// @DnDArgument : "steps" "5-obj_Player.move_speed"
	alarm_set(0, 5-obj_Player.move_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 578B594D
	/// @DnDParent : 643BD3DF
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 10C9CB2F
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1B285B1D
	/// @DnDParent : 10C9CB2F
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1ECB6EFE
	/// @DnDParent : 10C9CB2F
	/// @DnDArgument : "expr" "-(1+(obj_Player.move_speed - 2))"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -(1+(obj_Player.move_speed - 2));
}