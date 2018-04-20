/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0928746D
/// @DnDArgument : "expr" "grounded"
/// @DnDArgument : "not" "1"
if(!(grounded))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24FC09B7
	/// @DnDParent : 0928746D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "has_jumped"
	has_jumped = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D78AB23
	/// @DnDParent : 0928746D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "has_double_jumped"
	has_double_jumped = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6664E1BB
	/// @DnDParent : 0928746D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "grounded"
	grounded = true;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 52ECF02C
	/// @DnDParent : 0928746D
	/// @DnDArgument : "expr" "is_invincibile"
	if(is_invincibile)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 261FF3CC
		/// @DnDParent : 52ECF02C
		/// @DnDArgument : "spriteind" "spr_3headdog_Invincibility"
		/// @DnDSaveInfo : "spriteind" "8608d8a1-d6dc-48c7-bb0c-148be5e0b998"
		sprite_index = spr_3headdog_Invincibility;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 039B758E
	/// @DnDParent : 0928746D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5AA27DD7
		/// @DnDParent : 039B758E
		/// @DnDArgument : "spriteind" "spr_3headdog_run"
		/// @DnDSaveInfo : "spriteind" "eec56afc-9140-4896-9cc7-d7d11a24abfb"
		sprite_index = spr_3headdog_run;
		image_index = 0;
	}
}