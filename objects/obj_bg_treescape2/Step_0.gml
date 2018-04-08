/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3F037E
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 1C7889CE
	/// @DnDParent : 7C3F037E
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "next"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_bg_treescape2"
	/// @DnDSaveInfo : "object" "26c2345f-61c2-445f-ab3c-4eb1ccf22e4b"
	var l1C7889CE_0 = instance_place(x + 5, y + 0, obj_bg_treescape2);
	var next = l1C7889CE_0;
	if ((l1C7889CE_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1886E7B6
		/// @DnDParent : 1C7889CE
		/// @DnDArgument : "expr" "next.x + next.sprite_width-.42"
		/// @DnDArgument : "var" "x"
		x = next.x + next.sprite_width-.42;
	}
}