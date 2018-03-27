/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2E26AD95
/// @DnDArgument : "var" "tmp_Y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "32"
/// @DnDArgument : "max" "124"
var tmp_Y = floor(random_range(32, 124 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A4F2223
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "tmp_Y"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_player""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(x + 0, tmp_Y, "lyr_player", obj_ball);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7AE2C193
/// @DnDArgument : "steps" "spawn"
/// @DnDArgument : "alarm" "5"
alarm_set(5, spawn);