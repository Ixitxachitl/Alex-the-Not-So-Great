/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 45670D7B
/// @DnDArgument : "var" "spawn"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "200"
spawn = floor(random_range(100, 200 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2ECE20DE
/// @DnDArgument : "steps" "spawn"
/// @DnDArgument : "alarm" "5"
alarm_set(5, spawn);