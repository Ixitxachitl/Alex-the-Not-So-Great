/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 601AD8A2
/// @DnDArgument : "expr" "phy_position_x"
/// @DnDArgument : "var" "start_x"
start_x = phy_position_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11D45ED5
/// @DnDArgument : "var" "move_speed"
move_speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15C69FC3
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "grounded"
grounded = true;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3898894E
/// @DnDArgument : "var" "camera_def"
/// @DnDArgument : "function" "view_get_camera"
/// @DnDArgument : "arg" "0"
camera_def = view_get_camera(0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 588E6C8B
/// @DnDArgument : "var" "camera_width"
/// @DnDArgument : "function" "camera_get_view_width"
/// @DnDArgument : "arg" "camera_def"
camera_width = camera_get_view_width(camera_def);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 45A18E2B
/// @DnDArgument : "var" "dist_score"
dist_score = 0;

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 63B74576
/// @DnDArgument : "sound" "snd_music_1"
/// @DnDArgument : "pitch" ".75"
/// @DnDSaveInfo : "sound" "9e8797d1-a3e4-4734-8402-2be94a000607"
audio_sound_pitch(snd_music_1, .75);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 405E614E
/// @DnDArgument : "soundid" "snd_music_1"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
var l405E614E_0 = snd_music_1;
if (!audio_is_playing(l405E614E_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3DC301AB
	/// @DnDParent : 405E614E
	/// @DnDArgument : "soundid" "snd_music_1"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
	audio_play_sound(snd_music_1, 0, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 38D0604D
else
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 0100C071
	/// @DnDParent : 38D0604D
	/// @DnDArgument : "sound" "snd_music_1"
	/// @DnDArgument : "pitch" ".75"
	/// @DnDSaveInfo : "sound" "9e8797d1-a3e4-4734-8402-2be94a000607"
	audio_sound_pitch(snd_music_1, .75);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 049DBA79
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "var" "global.RoomBeforePause"
global.RoomBeforePause = -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 625B48F1
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "has_double_jumped"
has_double_jumped = false;