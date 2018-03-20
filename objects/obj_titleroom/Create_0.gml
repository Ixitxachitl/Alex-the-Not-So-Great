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
/// @DnDHash : 63930E23
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 60);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3599DB3A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "delayed"
delayed = false;