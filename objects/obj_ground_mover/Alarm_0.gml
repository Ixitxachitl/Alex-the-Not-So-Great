/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3988CA0B
/// @DnDArgument : "xpos" "camera_get_view_width(view_get_camera(0))+12"
/// @DnDArgument : "objectid" "obj_gate"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "15d094bd-3171-4a88-97d9-88eb344b6205"
instance_create_layer(camera_get_view_width(view_get_camera(0))+12, 0, "lyr_objs", obj_gate);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2CB4634A
/// @DnDArgument : "msg" ""spawned gate""
show_debug_message(string("spawned gate"));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6373CEFA
/// @DnDArgument : "var" "next_gate"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "100"
next_gate = floor(random_range(50, 100 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2CF4995A
/// @DnDArgument : "steps" "next_gate - obj_Player.move_speed *10"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, next_gate - obj_Player.move_speed *10 + alarm_get(0));