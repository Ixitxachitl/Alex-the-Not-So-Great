/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6AC0D260
/// @DnDArgument : "var" "camera_def"
/// @DnDArgument : "function" "view_get_camera"
/// @DnDArgument : "arg" "0"
camera_def = view_get_camera(0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 054D5696
/// @DnDArgument : "var" "camera_width"
/// @DnDArgument : "function" "camera_get_view_width"
/// @DnDArgument : "arg" "camera_def"
camera_width = camera_get_view_width(camera_def);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5EDAD12E
/// @DnDArgument : "var" "camera_height"
/// @DnDArgument : "function" "camera_get_view_height"
/// @DnDArgument : "arg" "camera_def"
camera_height = camera_get_view_height(camera_def);