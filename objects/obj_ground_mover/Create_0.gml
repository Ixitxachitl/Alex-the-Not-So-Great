/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2ECE20DE
/// @DnDArgument : "steps" "50"
alarm_set(0, 50);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 38C56FDC
/// @DnDArgument : "steps" "100"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 100);

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 793B3AC1
/// @DnDArgument : "var" "tiles"
tiles = ds_list_create();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3624BA4F
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < instance_number(obj_ground_tile)"
for(var i = 0; i < instance_number(obj_ground_tile); i += 1) {
	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 1752A2F1
	/// @DnDParent : 3624BA4F
	/// @DnDArgument : "var" "tiles"
	/// @DnDArgument : "value" "instance_find(obj_ground_tile, i)"
	ds_list_add(tiles, instance_find(obj_ground_tile, i));
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58F932CE
/// @DnDArgument : "var" "ground_level"
ground_level = 0;