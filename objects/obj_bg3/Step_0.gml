/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3F037E
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 773ACA33
	/// @DnDParent : 7C3F037E
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "next"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_bg3"
	/// @DnDSaveInfo : "object" "acbed063-98a3-45ce-8b8d-30c241347a11"
	var l773ACA33_0 = instance_place(x + 5, y + 0, obj_bg3);
	var next = l773ACA33_0;
	if ((l773ACA33_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51C9FF9C
		/// @DnDParent : 773ACA33
		/// @DnDArgument : "expr" "next.x + next.sprite_width-.25"
		/// @DnDArgument : "var" "x"
		x = next.x + next.sprite_width-.25;
	}
}