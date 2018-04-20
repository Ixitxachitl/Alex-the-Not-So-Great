/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2A151E7E
/// @DnDArgument : "var" "delay"
/// @DnDArgument : "min" "150"
/// @DnDArgument : "max" "250"
delay = (random_range(150, 250));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7316F0A8
/// @DnDArgument : "steps" "delay"
alarm_set(0, delay);