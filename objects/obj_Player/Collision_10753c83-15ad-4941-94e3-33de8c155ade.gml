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
	/// @DnDSaveInfo : "spriteind" "23d2454a-0a6d-4e35-8485-8a9a537b20c2"
	sprite_index = spr_3headdog;
	image_index = 0;
}