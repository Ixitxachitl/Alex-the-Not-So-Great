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

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 77193DF9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_crowd"
/// @DnDSaveInfo : "object" "a30985c4-4438-47f8-956b-f3dd69f3a8ce"
var l77193DF9_0 = instance_place(x + 0, y + 0, obj_crowd);
if ((l77193DF9_0 > 0))
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7C2DDEAA
	/// @DnDParent : 77193DF9
	/// @DnDArgument : "room" "rm_dead"
	/// @DnDSaveInfo : "room" "b2d0ac02-f6f5-48ed-a00f-139f69c1e4f2"
	room_goto(rm_dead);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 5E1FF480
/// @DnDArgument : "x" "-10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_crowd"
/// @DnDSaveInfo : "object" "a30985c4-4438-47f8-956b-f3dd69f3a8ce"
var l5E1FF480_0 = instance_place(x + -10, y + 0, obj_crowd);
if ((l5E1FF480_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5C3298B6
	/// @DnDParent : 5E1FF480
	/// @DnDArgument : "obj" "obj_red_flash"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "8e74b5ae-1adf-425b-a6cf-16a9f30a36f5"
	var l5C3298B6_0 = false;
	l5C3298B6_0 = instance_exists(obj_red_flash);
	if(!l5C3298B6_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2BFAE377
		/// @DnDParent : 5C3298B6
		/// @DnDArgument : "objectid" "obj_red_flash"
		/// @DnDArgument : "layer" ""lyr_effects""
		/// @DnDSaveInfo : "objectid" "8e74b5ae-1adf-425b-a6cf-16a9f30a36f5"
		instance_create_layer(0, 0, "lyr_effects", obj_red_flash);
	}
}