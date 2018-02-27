/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7ED1F42C
/// @DnDArgument : "expr" "camera_get_view_angle(view_camera[0])"
/// @DnDArgument : "var" "view_angle"
view_angle = camera_get_view_angle(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 45303D74
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "shake"
shake = true;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7EECE1C6
/// @DnDArgument : "steps" "2"
alarm_set(0, 2);