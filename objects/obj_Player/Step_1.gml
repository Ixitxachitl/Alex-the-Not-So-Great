/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76178EDB
/// @DnDArgument : "var" "global.RoomBeforePause"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(global.RoomBeforePause == -1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B079477
	/// @DnDParent : 76178EDB
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "global.RoomBeforePause"
	global.RoomBeforePause = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DB71BBB
	/// @DnDParent : 76178EDB
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "room_persistent"
	room_persistent = false;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 62C37382
	/// @DnDParent : 76178EDB
	/// @DnDArgument : "function" "sprite_delete"
	/// @DnDArgument : "arg" "global.PauseScreenshot"
	sprite_delete(global.PauseScreenshot);

	/// @DnDAction : YoYo Games.Audio.Resume_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1BC21722
	/// @DnDParent : 76178EDB
	audio_resume_all();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65BBE39F
/// @DnDArgument : "var" "dist_score"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50"
if(dist_score >= 50)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32474C11
	/// @DnDParent : 65BBE39F
	/// @DnDArgument : "var" "move_speed"
	if(move_speed == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75D5B724
		/// @DnDParent : 32474C11
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "move_speed"
		move_speed = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 709525D6
/// @DnDDisabled : 1
/// @DnDArgument : "var" "dist_score"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DFA6942
/// @DnDDisabled : 1
/// @DnDParent : 709525D6
/// @DnDArgument : "var" "move_speed"
/// @DnDArgument : "value" ".8"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 723A60D9
/// @DnDDisabled : 1
/// @DnDParent : 2DFA6942
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "move_speed"

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 06553F69
/// @DnDArgument : "speed" "(move_speed)/10+1"
image_speed = (move_speed)/10+1;