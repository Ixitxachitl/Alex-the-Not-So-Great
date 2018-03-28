/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6EC22E79
/// @DnDArgument : "var" "width"
/// @DnDArgument : "function" "surface_get_width"
/// @DnDArgument : "arg" "application_surface"
width = surface_get_width(application_surface);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0B5D6B75
/// @DnDArgument : "var" "height"
/// @DnDArgument : "function" "surface_get_height"
/// @DnDArgument : "arg" "application_surface"
height = surface_get_height(application_surface);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 118B34A7
/// @DnDArgument : "var" "global.spr_PauseScreenshot"
/// @DnDArgument : "function" "sprite_create_from_surface"
/// @DnDArgument : "arg" "application_surface, 0, 0, width, height, false, false, 0, 0"
global.spr_PauseScreenshot = sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 725AC421
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "room_persistent"
room_persistent = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BC07D39
/// @DnDArgument : "expr" "room"
/// @DnDArgument : "var" "global.RoomBeforePause"
global.RoomBeforePause = room;

/// @DnDAction : YoYo Games.Audio.Pause_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 6E3C185D
audio_pause_all();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 6B380114
/// @DnDArgument : "room" "rm_pause"
/// @DnDSaveInfo : "room" "3f9419b6-00e5-4ee6-b1c1-34f3dc465cf8"
room_goto(rm_pause);