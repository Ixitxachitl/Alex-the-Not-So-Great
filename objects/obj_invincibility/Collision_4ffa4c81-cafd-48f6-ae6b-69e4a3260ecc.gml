/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48716A22
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "is_invincibile"
with(other) {
is_invincibile = true;

}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 378B6C8F
/// @DnDApplyTo : other
/// @DnDArgument : "steps" "300"
with(other) {
alarm_set(0, 300);

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 41E6C5C5
/// @DnDArgument : "soundid" "snd_item_pickup"
/// @DnDSaveInfo : "soundid" "ff9a8740-1ae7-4675-8521-8e0662c608e0"
audio_play_sound(snd_item_pickup, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5FA6340B
/// @DnDApplyTo : other
/// @DnDArgument : "spriteind" "spr_3headdog_Invincibility"
/// @DnDSaveInfo : "spriteind" "8608d8a1-d6dc-48c7-bb0c-148be5e0b998"
with(other) {
sprite_index = spr_3headdog_Invincibility;
image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 4122B18D
/// @DnDArgument : "soundid" "snd_music_1"
/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
var l4122B18D_0 = snd_music_1;
if (audio_is_playing(l4122B18D_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1E2CB7C2
	/// @DnDParent : 4122B18D
	/// @DnDArgument : "soundid" "snd_music_1"
	/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
	audio_stop_sound(snd_music_1);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7F8737E2
	/// @DnDParent : 4122B18D
	/// @DnDArgument : "soundid" "snd_powerupmusic"
	/// @DnDSaveInfo : "soundid" "1ae6c8c4-37fa-4016-864e-162c313f72bd"
	audio_play_sound(snd_powerupmusic, 0, 0);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4DA2F933
instance_destroy();