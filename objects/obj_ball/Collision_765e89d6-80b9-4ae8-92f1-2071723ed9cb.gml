/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32C6CA17
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.dist_score"
global.dist_score += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2EF974FF
/// @DnDArgument : "soundid" "snd_item_pickup"
/// @DnDSaveInfo : "soundid" "ff9a8740-1ae7-4675-8521-8e0662c608e0"
audio_play_sound(snd_item_pickup, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D67AEA1
instance_destroy();