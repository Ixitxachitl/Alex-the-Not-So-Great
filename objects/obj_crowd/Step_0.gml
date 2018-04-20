/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2BB8C646
/// @DnDArgument : "expr" "offscreen"
if(offscreen)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 380E6F93
	/// @DnDParent : 2BB8C646
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "0-sprite_width"
	if(x > 0-sprite_width)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63B8C613
		/// @DnDParent : 380E6F93
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += -2;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5F9753B2
	/// @DnDParent : 2BB8C646
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 292E30DF
		/// @DnDParent : 5F9753B2
		/// @DnDArgument : "expr" "moved"
		/// @DnDArgument : "not" "1"
		if(!(moved))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 1297530D
			/// @DnDParent : 292E30DF
			/// @DnDArgument : "steps" "800"
			alarm_set(0, 800);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 447B1972
			/// @DnDParent : 292E30DF
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "moved"
			moved = true;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6DB3620A
/// @DnDArgument : "expr" "offscreen"
/// @DnDArgument : "not" "1"
if(!(offscreen))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74C762FB
	/// @DnDParent : 6DB3620A
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "start_x"
	if(x < start_x)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DFEFC00
		/// @DnDParent : 74C762FB
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += 2;
	}
}