/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E3030E4
/// @DnDArgument : "var" "obj_Player.x + camera_width/2"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_width"
if(obj_Player.x + camera_width/2 >= room_width)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 19B88F44
	/// @DnDApplyTo : 49b073bc-4cdf-46ce-a91a-2d07d3e144c1
	/// @DnDParent : 2E3030E4
	/// @DnDArgument : "x" "obj_camera_controller.camera_width/2"
	with(obj_Player) {
	x = obj_camera_controller.camera_width/2;
	
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 586A8125
/// @DnDArgument : "function" "camera_set_view_pos"
/// @DnDArgument : "arg" "camera_def,obj_Player.x - camera_width/2, 0"
camera_set_view_pos(camera_def,obj_Player.x - camera_width/2, 0);