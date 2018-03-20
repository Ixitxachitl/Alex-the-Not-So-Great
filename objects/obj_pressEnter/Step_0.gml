/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7449692F
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 582954E9
	/// @DnDParent : 7449692F
	/// @DnDArgument : "alpha" "0.02"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += 0.02;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 190AD0C2
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_alpha >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 06070A1B
	/// @DnDParent : 190AD0C2
	/// @DnDArgument : "alpha" "0"
	image_alpha = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5E41258B
/// @DnDArgument : "expr" "delayed"
if(delayed)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 0575F5C8
	/// @DnDParent : 5E41258B
	/// @DnDArgument : "key" "vk_enter"
	var l0575F5C8_0;
	l0575F5C8_0 = keyboard_check_released(vk_enter);
	if (l0575F5C8_0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 28C25C86
		/// @DnDParent : 0575F5C8
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "a4e284ce-dc7d-456b-8aa4-4b3b43cdea5f"
		room_goto(rm_game);
	}
}