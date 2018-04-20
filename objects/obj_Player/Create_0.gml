/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32589380
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "is_invincibile"
is_invincibile = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3C343D3A
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "restarting"
global.restarting = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 601AD8A2
/// @DnDArgument : "expr" "phy_position_x"
/// @DnDArgument : "var" "start_x"
start_x = phy_position_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11D45ED5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "move_speed"
move_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15C69FC3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "grounded"
grounded = false;

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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 211D5C2E
/// @DnDArgument : "var" "dist_score"
global.dist_score = 0;

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 31CA6775
/// @DnDArgument : "soundid" "snd_music_1"
/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
audio_stop_sound(snd_music_1);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 21FE010D
/// @DnDArgument : "soundid" "snd_powerupmusic"
/// @DnDSaveInfo : "soundid" "1ae6c8c4-37fa-4016-864e-162c313f72bd"
audio_stop_sound(snd_powerupmusic);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 63B74576
/// @DnDArgument : "sound" "snd_music_1"
/// @DnDArgument : "pitch" "1.5"
/// @DnDSaveInfo : "sound" "9e8797d1-a3e4-4734-8402-2be94a000607"
audio_sound_pitch(snd_music_1, 1.5);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3ED24CC4
/// @DnDArgument : "soundid" "snd_music_1"
/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
audio_play_sound(snd_music_1, 0, 0);

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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 465F56D6
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "has_jumped"
has_jumped = false;