/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 17288105
/// @DnDArgument : "expr" "grounded"
/// @DnDArgument : "not" "1"
if(!(grounded))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D3D312E
	/// @DnDParent : 17288105
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "grounded"
	grounded = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 065FE27B
	/// @DnDParent : 17288105
	/// @DnDArgument : "spriteind" "spr_3headdog_run"
	/// @DnDSaveInfo : "spriteind" "513067a3-6922-4d7c-b79e-9a4378582fd5"
	sprite_index = spr_3headdog_run;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5AA223C5
	/// @DnDParent : 17288105
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "has_double_jumped"
	has_double_jumped = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12369148
	/// @DnDParent : 17288105
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "has_jumped"
	has_jumped = false;
}