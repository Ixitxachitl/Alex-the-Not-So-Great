/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3F037E
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 7A68ED0D
	/// @DnDParent : 7C3F037E
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "next"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_bg4"
	/// @DnDSaveInfo : "object" "8659437d-5496-4443-a3eb-d080c8976efe"
	var l7A68ED0D_0 = instance_place(x + 5, y + 0, obj_bg4);
	var next = l7A68ED0D_0;
	if ((l7A68ED0D_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6530EEEA
		/// @DnDParent : 7A68ED0D
		/// @DnDArgument : "expr" "next.x + next.sprite_width-.1"
		/// @DnDArgument : "var" "x"
		x = next.x + next.sprite_width-.1;
	}
}