/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2C39DAEC
/// @DnDArgument : "xpos" "camera_get_view_width(view_get_camera(0))+64"
/// @DnDArgument : "objectid" "obj_hill"
/// @DnDArgument : "layer" ""lyr_hill""
/// @DnDSaveInfo : "objectid" "807eb79b-829a-474f-9a06-f621300e6506"
instance_create_layer(camera_get_view_width(view_get_camera(0))+64, 0, "lyr_hill", obj_hill);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5F1E9BFF
/// @DnDArgument : "msg" ""spawned gate""
show_debug_message(string("spawned gate"));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 285B6CF9
/// @DnDArgument : "var" "next_gate"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "400"
/// @DnDArgument : "max" "600"
next_gate = floor(random_range(400, 600 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6040AF88
/// @DnDArgument : "steps" "next_gate - obj_Player.move_speed *40"
/// @DnDArgument : "steps_relative" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, next_gate - obj_Player.move_speed *40 + alarm_get(1));