/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CED1CB6
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F2415CD
	/// @DnDParent : 3CED1CB6
	/// @DnDArgument : "expr" "sprite_width"
	/// @DnDArgument : "var" "x"
	x = sprite_width;
}