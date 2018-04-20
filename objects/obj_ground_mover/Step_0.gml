/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 08CFD520
/// @DnDArgument : "assignee" "tiles_count"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "tiles"
var tiles_count = ds_list_size(tiles);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0B417D33
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < tiles_count"
for(var i = 0; i < tiles_count; i += 1) {
	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 505EF789
	/// @DnDParent : 0B417D33
	/// @DnDArgument : "assignee" "tiles_i"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "tiles"
	/// @DnDArgument : "index" "i"
	var tiles_i = ds_list_find_value(tiles, i);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 739B42D8
	/// @DnDParent : 0B417D33
	/// @DnDArgument : "expr" "-1-(obj_Player.move_speed)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "tiles_i.phy_position_x"
	tiles_i.phy_position_x += -1-(obj_Player.move_speed);
}