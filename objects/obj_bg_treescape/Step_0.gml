/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3F037E
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 277562D7
	/// @DnDParent : 7C3F037E
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "next"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_bg_treescape"
	/// @DnDSaveInfo : "object" "332df155-0a0c-4b31-85d1-ad6f327030d0"
	var l277562D7_0 = instance_place(x + 5, y + 0, obj_bg_treescape);
	var next = l277562D7_0;
	if ((l277562D7_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 466E9C85
		/// @DnDParent : 277562D7
		/// @DnDArgument : "expr" "next.x + next.sprite_width"
		/// @DnDArgument : "var" "x"
		x = next.x + next.sprite_width;
	}
}