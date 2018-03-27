/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3E1C25EF
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "dist_score"
global.dist_score += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 51EB1E00
/// @DnDArgument : "soundid" "snd_item_pickup"
/// @DnDSaveInfo : "soundid" "ff9a8740-1ae7-4675-8521-8e0662c608e0"
audio_play_sound(snd_item_pickup, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4341EF7D
instance_destroy();