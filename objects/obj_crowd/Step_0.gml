/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 7D437B22
/// @DnDArgument : "x" "obj_crowd"
/// @DnDArgument : "y" "obj_crowd"
var l7D437B22_0 = place_empty(obj_crowd, obj_crowd);
if (!l7D437B22_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 529B0F71
	/// @DnDParent : 7D437B22
	/// @DnDArgument : "room" "rm_dead"
	/// @DnDSaveInfo : "room" "b2d0ac02-f6f5-48ed-a00f-139f69c1e4f2"
	room_goto(rm_dead);
}