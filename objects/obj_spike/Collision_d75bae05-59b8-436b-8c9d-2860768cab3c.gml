/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4A33F027
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "is_invincibile"
with(other) var l4A33F027_0 = is_invincibile;
if(l4A33F027_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42531F93
	/// @DnDParent : 4A33F027
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "phy_active"
	phy_active = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60E0E5BE
	/// @DnDParent : 4A33F027
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Exploding"
	Exploding = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7380F6EB
	/// @DnDParent : 4A33F027
	/// @DnDArgument : "spriteind" "spr_spikesexplosion"
	/// @DnDSaveInfo : "spriteind" "351ba629-8611-4fd0-a00d-534923ec3c0c"
	sprite_index = spr_spikesexplosion;
	image_index = 0;
}