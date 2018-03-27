/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5F685766
/// @DnDArgument : "xpos" "30"
/// @DnDArgument : "ypos" "50"
/// @DnDArgument : "objectid" "obj_medusa"
/// @DnDArgument : "layer" ""lyr_player""
/// @DnDSaveInfo : "objectid" "d383a4cd-c7fa-4a20-8a0a-f635d211364e"
instance_create_layer(30, 50, "lyr_player", obj_medusa);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 03B11E30
/// @DnDArgument : "soundid" "snd_medusa_scream"
/// @DnDSaveInfo : "soundid" "ce5137af-0fd7-430c-b957-6fda298723c9"
audio_play_sound(snd_medusa_scream, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 55F8550B
instance_destroy();