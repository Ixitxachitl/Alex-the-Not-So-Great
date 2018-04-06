/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 66620940
/// @DnDArgument : "var" "tmp_Y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "64"
/// @DnDArgument : "max" "124"
var tmp_Y = floor(random_range(64, 124 + 1));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A4F2223
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(x + 0, y + 0, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 58D3BEDA
/// @DnDArgument : "xpos" "32"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(x + 32, y + 0, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7440C32A
/// @DnDArgument : "xpos" "64"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDArgument : "layer" ""lyr_objs""
/// @DnDSaveInfo : "objectid" "22cc8c5c-a614-483d-be62-65f1f424857c"
instance_create_layer(x + 64, y + 0, "lyr_objs", obj_ball);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 25C517F8
/// @DnDArgument : "var" "spawn"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "300"
/// @DnDArgument : "max" "500"
spawn = floor(random_range(300, 500 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7AE2C193
/// @DnDArgument : "steps" "spawn"
/// @DnDArgument : "alarm" "5"
alarm_set(5, spawn);