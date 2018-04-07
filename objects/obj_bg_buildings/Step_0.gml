/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C3F037E
/// @DnDArgument : "var" "x  + sprite_width "
/// @DnDArgument : "op" "3"
if(x  + sprite_width  <= 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 4D83BE8C
	/// @DnDParent : 7C3F037E
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "next"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "obj_bg_buildings"
	/// @DnDSaveInfo : "object" "a5dcb923-54d9-4d0e-be28-552ffb295603"
	var l4D83BE8C_0 = instance_place(x + 5, y + 0, obj_bg_buildings);
	var next = l4D83BE8C_0;
	if ((l4D83BE8C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 645A8BB6
		/// @DnDParent : 4D83BE8C
		/// @DnDArgument : "expr" "next.x + next.sprite_width-.5"
		/// @DnDArgument : "var" "x"
		x = next.x + next.sprite_width-.5;
	}
}