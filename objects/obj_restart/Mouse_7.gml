/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4BC73E9E
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "restarting"
global.restarting = true;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 432C48F8
/// @DnDArgument : "room" "global.RoomBeforePause"
room_goto(global.RoomBeforePause);