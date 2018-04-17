/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 65A18B2E
/// @DnDArgument : "value" "undefined"
/// @DnDArgument : "var" "tutorial_over"
global.tutorial_over = undefined;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5E939D91
/// @DnDArgument : "alpha" "0"
image_alpha = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 6F97562C
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
x = room_width/2;
y = room_height/2;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 73A0BF30
/// @DnDArgument : "steps" "180"
alarm_set(0, 180);