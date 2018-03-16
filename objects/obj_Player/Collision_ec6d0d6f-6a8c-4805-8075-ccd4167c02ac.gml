/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0928746D
/// @DnDArgument : "expr" "grounded"
/// @DnDArgument : "not" "1"
if(!(grounded))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6664E1BB
	/// @DnDParent : 0928746D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "grounded"
	grounded = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5AA27DD7
	/// @DnDParent : 0928746D
	/// @DnDArgument : "spriteind" "spr_3headdog"
	/// @DnDSaveInfo : "spriteind" "a8019d6b-63a0-4031-9087-6ce288563233"
	sprite_index = spr_3headdog;
	image_index = 0;
}