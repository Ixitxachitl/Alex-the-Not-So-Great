/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3F037E
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1886E7B6
	/// @DnDParent : 7C3F037E
	/// @DnDArgument : "expr" "sprite_width"
	/// @DnDArgument : "var" "x"
	x = sprite_width;
}