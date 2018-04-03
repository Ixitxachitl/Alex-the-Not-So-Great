/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 080D3199
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "value" "1"
if(image_alpha == 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 29304583
	/// @DnDParent : 080D3199
	/// @DnDArgument : "alpha" "0"
	image_alpha = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E5DBA74
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 4E0632A6
	/// @DnDParent : 7E5DBA74
	/// @DnDArgument : "alpha" "0.05"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += 0.05;
}