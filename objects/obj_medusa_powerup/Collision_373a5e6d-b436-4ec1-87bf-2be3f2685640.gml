/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 11EA0B0E
/// @DnDArgument : "xpos" "30"
/// @DnDArgument : "ypos" "50"
/// @DnDArgument : "objectid" "obj_medusa"
/// @DnDArgument : "layer" ""lyr_player""
/// @DnDSaveInfo : "objectid" "d383a4cd-c7fa-4a20-8a0a-f635d211364e"
instance_create_layer(30, 50, "lyr_player", obj_medusa);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7B6CD6B5
/// @DnDArgument : "soundid" "snd_medusa_scream"
/// @DnDSaveInfo : "soundid" "ce5137af-0fd7-430c-b957-6fda298723c9"
audio_play_sound(snd_medusa_scream, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6D00D7B2
instance_destroy();