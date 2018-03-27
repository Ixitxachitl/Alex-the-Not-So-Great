/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 41716E27
var l41716E27_0;
l41716E27_0 = mouse_check_button_released(mb_left);
if (l41716E27_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7C149048
	/// @DnDParent : 41716E27
	/// @DnDArgument : "room" "rm_credits"
	/// @DnDSaveInfo : "room" "0ad29c30-1b97-461e-8733-b4efe7b0a8e3"
	room_goto(rm_credits);
}