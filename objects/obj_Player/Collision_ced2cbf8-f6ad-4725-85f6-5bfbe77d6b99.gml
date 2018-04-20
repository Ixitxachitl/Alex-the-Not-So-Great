/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0A7ED807
/// @DnDArgument : "expr" "is_invincibile"
if(is_invincibile)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AC898A2
	/// @DnDApplyTo : other
	/// @DnDParent : 0A7ED807
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "phy_active"
	with(other) {
	phy_active = false;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B39541F
	/// @DnDApplyTo : other
	/// @DnDParent : 0A7ED807
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Exploding"
	with(other) {
	Exploding = true;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2C695B82
	/// @DnDApplyTo : 15d094bd-3171-4a88-97d9-88eb344b6205
	/// @DnDParent : 0A7ED807
	/// @DnDArgument : "spriteind" "spr_explosionrock"
	/// @DnDSaveInfo : "spriteind" "93f1bfd0-b45e-4178-957e-14774a2f7465"
	with(obj_gate) {
	sprite_index = spr_explosionrock;
	image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 17288105
/// @DnDArgument : "expr" "grounded"
/// @DnDArgument : "not" "1"
if(!(grounded))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 25C01DAA
	/// @DnDParent : 17288105
	/// @DnDArgument : "expr" "is_invincibile"
	if(is_invincibile)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 43FFE706
		/// @DnDParent : 25C01DAA
		/// @DnDArgument : "spriteind" "spr_3headdog_Invincibility"
		/// @DnDSaveInfo : "spriteind" "8608d8a1-d6dc-48c7-bb0c-148be5e0b998"
		sprite_index = spr_3headdog_Invincibility;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 70C4657E
	/// @DnDParent : 17288105
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 065FE27B
		/// @DnDParent : 70C4657E
		/// @DnDArgument : "spriteind" "spr_3headdog_run"
		/// @DnDSaveInfo : "spriteind" "eec56afc-9140-4896-9cc7-d7d11a24abfb"
		sprite_index = spr_3headdog_run;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D3D312E
	/// @DnDParent : 17288105
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "grounded"
	grounded = true;

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