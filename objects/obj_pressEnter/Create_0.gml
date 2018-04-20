/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5E939D91
/// @DnDArgument : "alpha" "0"
image_alpha = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 6F97562C
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height-120"
x = room_width/2;
y = room_height-120;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 718C7975
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24534019
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "delayed"
delayed = false;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0FE6A456
/// @DnDArgument : "soundid" "snd_woof"
/// @DnDSaveInfo : "soundid" "55235619-9139-4135-8451-bd0b17cca305"
audio_play_sound(snd_woof, 0, 0);