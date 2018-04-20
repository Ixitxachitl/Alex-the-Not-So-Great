/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4DF0E27C
/// @DnDArgument : "xpos" "450"
/// @DnDArgument : "ypos" "-32"
/// @DnDArgument : "objectid" "obj_spike"
/// @DnDArgument : "layer" ""lyr_player""
/// @DnDSaveInfo : "objectid" "715eddd5-779f-4fa5-a0f5-dc9228e2b362"
instance_create_layer(450, -32, "lyr_player", obj_spike);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5379F315
/// @DnDArgument : "var" "delay"
/// @DnDArgument : "min" "150"
/// @DnDArgument : "max" "250"
delay = (random_range(150, 250));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0E2698AF
/// @DnDArgument : "steps" "delay"
alarm_set(0, delay);