/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 102A5FBB
/// @DnDArgument : "var" "obj_Player.move_speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(obj_Player.move_speed < 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5BB36FC1
	/// @DnDParent : 102A5FBB
	/// @DnDArgument : "steps" "3-obj_Player.move_speed"
	alarm_set(0, 3-obj_Player.move_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FB67A4B
	/// @DnDParent : 102A5FBB
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 26547DAF
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63431E68
	/// @DnDParent : 26547DAF
	/// @DnDArgument : "var" "obj_Player.move_speed"
	/// @DnDArgument : "value" "3"
	if(obj_Player.move_speed == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 13893507
		/// @DnDParent : 63431E68
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D95A7DE
		/// @DnDParent : 63431E68
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6C92C5D6
	/// @DnDParent : 26547DAF
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 28D95DD4
		/// @DnDParent : 6C92C5D6
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 485D0435
		/// @DnDParent : 6C92C5D6
		/// @DnDArgument : "expr" "-(1+(obj_Player.move_speed - 2))"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += -(1+(obj_Player.move_speed - 2));
	}
}