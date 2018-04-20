/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D3B3C7C
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "is_invincibile"
is_invincibile = false;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 71D36DD2
/// @DnDApplyTo : 49b073bc-4cdf-46ce-a91a-2d07d3e144c1
/// @DnDArgument : "spriteind" "spr_3headdog_run"
/// @DnDSaveInfo : "spriteind" "eec56afc-9140-4896-9cc7-d7d11a24abfb"
with(obj_Player) {
sprite_index = spr_3headdog_run;
image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 05FD40EF
/// @DnDArgument : "soundid" "snd_powerupmusic"
/// @DnDSaveInfo : "soundid" "1ae6c8c4-37fa-4016-864e-162c313f72bd"
audio_stop_sound(snd_powerupmusic);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5CD75BC7
/// @DnDArgument : "soundid" "snd_music_1"
/// @DnDSaveInfo : "soundid" "9e8797d1-a3e4-4734-8402-2be94a000607"
audio_play_sound(snd_music_1, 0, 0);